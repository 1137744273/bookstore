<?php
namespace app\index\controller;
use app\index\model\Bigtype;


class Book extends \think\Controller
{

	public function booktype()
    {
        $bigtype = new Bigtype();
    	$data1 = $bigtype->field('b_id,b_name')->select();
        $this->assign('bb',$data1);

        $data2=$bigtype->alias('a')->join('tb_smalltype b','a.b_id = b.b_id')->select();
        $this->assign('ss',$data2);

        return $this->fetch();
    }


    public function booklist(){
		$book=new \app\index\model\Book();
		$data= $book->where('s_id', input('get.sid'))->select();
		$this->assign('blist',$data);	
		//dump($data);	
		return $this->fetch();
	}

    public function book(){
        $book=new \app\index\model\Book();
        $data= $book->where('book_id', input('get.book_id'))->find();
        $this->assign('book',$data);    
        //dump($data);  
        return $this->fetch();
    }

}