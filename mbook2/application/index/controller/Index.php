<?php
namespace app\index\controller;
use think\Db;
use think\Session; 

class Index  extends \think\Controller
{
    public function index()
    {
        $book = new \app\index\model\Book();
	 	$data= $book->field('book_id,s_id, book_name, book_newprice ,book_img')->where('book_issepprice=1')->find();
		$username = Session::get('username','think');
		$this->assign('username',$username);
		$this->assign('tejiabook',$data);	
		return $this->fetch();	
    }
}
