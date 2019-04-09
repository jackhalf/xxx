<?php
/**
 * Created by PhpStorm.
 * User: XJJ
 * Date: 2019/4/4
 * Time: 17:44
 */

namespace app\admin\model;
use think\Model;
use think\Session;
use app\admin\model\Access as AccessMoel;

class Menu extends Model
{
    /**
     * 更新缓存
     * @param type $data
     * @return type
     */
    public function menu_cache($data = null)
    {
        if (empty($data)) {
            $data = $this->select();
            cache("Menu", $data);
        } else {
            cache("Menu", $data);
        }
        return $data;
    }

    /**
     * 按父ID查找菜单子项
     * @param integer $parentid 父菜单ID
     * @param integer $with_self 是否包括他自己
     */
    public function admin_menu($parentid, $with_self = false)
    {
        //父节点ID
        $parentid = (int)$parentid;
        $result = $this->where(array('parentid' => $parentid, 'status' => 1))->order(array("listorder" => "ASC"))->select();    //* 获取一级菜单
        if ($with_self) {
            $result2[] = $this->where(array('id' => $parentid))->find();    //* 加入父类
            $result = array_merge($result2, $result);
        }
        //权限检查
        if (Session::get("roleid") == 1) {
            //如果角色为 1 直接通过
            return $result;
        }

        $array = array();
        //实例化权限表
        $privdb = new AccessMoel();
        foreach ($result as $v) {

            //方法
            $action = $v['action'];

            //public开头的通过
            if (preg_match('/^public_/', $action)) {
                $array[] = $v;
            } else {

                if (preg_match('/^ajax_([a-z]+)_/', $action, $_match)) {

                    $action = $_match[1];
                }

                $r = $privdb->where(array('g' => $v['app'], 'm' => $v['model'], 'a' => $action, 'role_id' => session("roleid")))->find();

                if ($r) {
                    $array[] = $v;
                }

            }
        }

        return $array;
    }

    //取得树形结构的菜单
    public function get_tree($myid, $parent = "", $Level = 1)
    {
        $data = $this->admin_menu($myid);
        $Level++;
        $ret = [];
        if (is_array($data)) {
            foreach ($data as $a) {
                $id = $a['id'];
                $name = ucwords($a['app']); //* 把每个单词的首字符转换为大写
                $model = ucwords($a['model']);
                $action = $a['action'];
                //附带参数
                $fu = "";
                if ($a['data']) {   //* data是额外参数
                    $fu = "?" . htmlspecialchars_decode($a['data']);
                }

                $array = array(
                    "icon" => $a['icon'],
                    "id" => $id . $name,
                    "name" => $a['name'],
                    "parent" => $parent,
                    "url" => url("$name/$model/$action"),
                );

                $ret[$id . $name] = $array;
                $child = $this->get_tree($a['id'], $id, $Level);
                //由于后台管理界面只支持三层，超出的不层级的不显示
                if ($child && $Level <= 3) {
                    $ret[$id . $name]['items'] = $child;
                }

            }
            return $ret;
        }

        return false;
    }

    /**
     * 获取菜单 头部菜单导航
     * @param $parentid 菜单id
     */
    public function submenu($parentid = '', $big_menu = false)
    {
        $array = $this->admin_menu($parentid, 1);
        $numbers = count($array);
        if ($numbers == 1 && !$big_menu) {
            return '';
        }
        return $array;
    }

    /**
     * 菜单树状结构集合
     */
    public function menu_json()
    {
        $items['0changyong'] = array(
            "id" => "",
            "name" => "常用菜单",
            "parent" => "changyong",
            "url" => url("Menu/public_changyong"),
        );

        $changyong = array(
            "changyong" => array(
                "icon" => "",
                "id" => "changyong",
                "name" => "常用",
                "parent" => "",
                "url" => "",
                "items" => $items
            )
        );
        $data = $this->get_tree(0);
        return $data;
    }

    /**
     * 后台有更新/编辑则删除缓存
     * @param type $data
     */
    public function _before_write(&$data)
    {
        parent::_before_write($data);
        cache("Menu", NULL);
    }

    //删除操作时删除缓存
    public function _after_delete($data, $options)
    {
        parent::_after_delete($data, $options);
        $this->_before_write($data);
    }

    public function menu($parentid, $with_self = false)
    {
        //父节点ID
        $parentid = (int)$parentid;
        $result = $this->where(array('parentid' => $parentid))->select();
        if ($with_self) {
            $result2[] = $this->where(array('id' => $parentid))->find();
            $result = array_merge($result2, $result);
        }
        return $result;
    }

}