<?php
/**
 * Created by PhpStorm.
 * User: XJJ
 * Date: 2019/4/4
 * Time: 17:48
 */

namespace app\admin\controller;
use app\admin\model\AdminUser as AdminUserModel;
use app\common\controller\AdminBase;
use app\admin\model\Users as UsersModel;
use think\captcha\Captcha;
use think\Controller;
use think\Session;
use think\Cookie;

class Login extends AdminBase
{
    function _initialize() {}

    public function index()
    {
        if (isset($_SESSION['ADMIN_ID'])) {//已经登录
            $this->success(lang('LOGIN_SUCCESS'),url("Index/index"));
        } else {
            if(0) {
                header("Content-Type:text/html; charset=utf-8");
                return $this->error("请从后台管理入口登录!",__ROOT__."/admin");
            } else {
                return $this->fetch();
            }
        }

    }

    /**
     * @param string $id
     * @param array  $config
     */
    function captcha($id = "", $config = [])
    {
        $captcha = new \think\captcha\Captcha($config);
        $captcha->entry($id);
    }

    public function logout()
    {
        session('ADMIN_ID',null);
        $this->redirect("admin/login/index");
    }

    public function dologin()
    {
        $name = input("post.username");
        if ( empty( $name ) ) {
            $this->error(lang('USERNAME_OR_EMAIL_EMPTY'));
        }
        $pass = input("post.password");
        if( empty( $pass ) ){
            $this->error(lang('PASSWORD_REQUIRED'));
        }
        $verrify = input("post.verify");
        if( empty( $verrify ) ){
            $this->error(lang('CAPTCHA_REQUIRED'));
        }
        //验证码
        $captcha = new Captcha();
        if(!$captcha->check($verrify, ''))
        {
            $this->error(lang('CAPTCHA_NOT_RIGHT'));
        }else{
            $user = new AdminUserModel();
            if(strpos($name,"@") > 0) {//邮箱登陆
                $where['user_email'] = $name;
            } else {
                $where['username']=$name;
            }

            $result = $user->where($where)->find();

            if($result != null &&$result['status'] == 1){

                if($result['password'] == sp_password($pass) || empty($result['password'])) { //临时

                    //登入成功页面跳转
                    $this->admin_login($result['username']);

                    Cookie::set("admin_username",$name,intval(30*24*3600));

                    $this->success(lang('LOGIN_SUCCESS'),url("Admin/index/index"));

                } else {
                    $this->error(lang('PASSWORD_NOT_RIGHT'));
                }
            } else {
                $this->error(lang('USERNAME_NOT_EXIST'));
            }
        }
    }
}