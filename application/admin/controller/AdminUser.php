<?php
/**
 * Created by PhpStorm.
 * User: XJJ
 * Date: 2019/4/9
 * Time: 10:24
 */

namespace app\admin\controller;
use app\common\controller\AdminBase;

class AdminUser extends AdminBase
{
    public function index()
    {
        return $this->fetch();
    }
}