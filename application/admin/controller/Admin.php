<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\Controller;
use think\Session;

class Admin extends Controller
{
    public function index()
    {
        return $this->fetch();
    }
}