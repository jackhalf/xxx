<?php
namespace app\common\controller;

use app\admin\model\AdminAccessLog as AdminAccessLogModel;
use think\Controller;
use app\admin\model\AdminRole as AdminRoleModel;
use app\admin\model\Users as UsersModel;
use app\admin\model\AdminUser as AdminUserModel;
use app\admin\model\Access as AccessModel;
use app\admin\model\Menu as MenuModel;
use think\Cookie;
use think\Request;
use think\Session;

class AdminBase extends Controller
{
    protected function _initialize()
    {
        //cookie永久登陆
        if (!Session::get('ADMIN_ID')) {
            //检查cookie
            if (!empty(Cookie::get('adminauth')['id']) && !empty(Cookie::get('adminauth')['pass'])) {
                $users = new AdminUserModel();
                $user = $users->where(array('username' => Cookie::get('adminauth')['id']))->find();
                if (!$user) {
                    Cookie::set('adminauth[id]', '', 1);
                    Cookie::set('adminauth[pass]', '', 1);
                } else {
                    //检查密码是否正确
                    $hash_code = 'cookie.admin.login';
                    if (md5(md5($user['username'] . $user['password'] . $hash_code)) == Cookie::get('adminauth')['pass']) {
                        $this->admin_login(Cookie::get('adminauth')['id']);
                    } else {
                        Cookie::set('adminauth[id]', '', 1);
                        Cookie::set('adminauth[pass]', '', 1);
                    }
                }
            }
        }

        if (Session::get('ADMIN_ID')) {
            $users = new AdminUserModel();
            $pass = $users->where("id=" . Session::get('ADMIN_ID'))->value('password');
            if ($pass == '123456' && $_SERVER['REQUEST_URI'] != '/admin/setting/password' && $_SERVER['REQUEST_URI'] != '/Admin/setting/password_post') {
                $this->error("密码已过期，请设置新密码", url("admin/setting/password"));
            }
            $id = Session::get('ADMIN_ID');
            $user = $users->where("id=$id")->find();
            if (!$this->check_access($user['role_id'])) {
                $this->error("您没有访问权限！");
                exit();
            }
            $this->assign("admin", $user);
        } else {
            if (Request::instance()->isAjax()) {
                $this->error("您还没有登录！", url("admin/Login/index"));
            } else {
                header("Location:" . url("admin/Login/index"));
                exit();
            }

        }
    }

    public function admin_login($id)
    {
        $users = new AdminUserModel();
        $result = $users->where(array('username' => $id))->find();
        Session::set('ADMIN_ID', $result["id"]);
        Session::set('name',$result["username"]);
        Session::set("roleid", $result['role_id']);
        Session::set("nickname", $result['username']);
        $updateData['last_login_ip'] = get_client_ip();
        $updateData['last_login_time'] = get_current_datetime();
        if (empty($result['password'])) {
            $result['password'] = sp_password($pass = '123456');
            $result['password'] = $pass;
        }
        $users->where(array('username' => $id))->update($updateData);

        if (input("post.remember")) {
            $hash_code = 'cookie.admin.login';
            $time = 3600 * 24 * 30;
            Cookie::set('adminauth[id]', $result["username"], intval($time));
            Cookie::set('adminauth[pass]', md5(md5($result['username'] . $result['password'] . $hash_code)), intval($time));
        }
    }

    private function check_access($roleid)
    {
        //如果用户角色是1，则无需判断
        $group = $this->request->module();
        $model = $this->request->controller();
        $action = $this->request->action();
        if ($roleid == 1) {
            $res = true;
        } else {
            $role_obj = new AdminRoleModel();
            $role = $role_obj->field("status")->where("id=$roleid")->find();
            if (!empty($role) && $role['status'] == 1) {
                $group = $this->request->module();
                $model = $this->request->controller();
                $action = $this->request->action();
                if ($group . $model . $action != "AdminIndexindex") {
                    $access_obj = new AccessModel();
                    $count = $access_obj->where("role_id=$roleid and g='$group' and m='$model' and a='$action'")->count();
                    $res = $count;
                } else {
                    $res = true;
                }
            } else {
                $res = false;
            }
        }
        $current_url = strtolower($group .'_'. $model .'_'. $action);
        $save_log = true;
        if ($save_log && !in_array($current_url, ['admin_notify_tips'])) {
            //写入操作日志
            unset($_GET['t']);

            $data['g'] = $group;
            $data['m'] = $model;
            $data['a'] = $action;
            $data['log_ip'] = get_client_ip();
            $data['uid'] = Session::get('ADMIN_ID');
            $data['user_login'] = Session::get('name');
            $data['get_data'] = empty($_GET) ? '' : json_encode($_GET);
            $data['post_data'] = empty($_POST) ? '' : json_encode($_POST);
            $data['log_time'] = date('Y-m-d H:i:s');
            $data['result'] = $res;
            $admin_access_log = new AdminAccessLogModel();
            $admin_access_log->insert($data);
        }

        return $res;
    }

    /**
     * 当前位置
     * @param $id 菜单id
     */
    final public static function current_pos($id)
    {
        $menudb = new MenuModel();
        $r = $menudb->where(array('id' => $id))->find();
        $str = '';
        if ($r['parentid']) {
            $str = self::current_pos($r['parentid']);
        }
        return $str . $r['name'] . ' > ';
    }
}