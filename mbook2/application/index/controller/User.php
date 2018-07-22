<?php
namespace app\index\controller;
use think\Db;
use think\Session;
class User extends \think\Controller
{
	//显示注册页面
	public function reg(){		
		return $this->fetch();
	}
	//显示登录页面
	public function login(){	

		return $this->fetch();
	}
	public function newpwd(){	

		return $this->fetch();
	}
	 public function newpwddo(){

	 	$u=new \app\index\model\User();
       $username1 = Session::get('username','think');
    	$oldpassword = md5(input('post.oldpassword'));
		if($u->where("user_pwd",$oldpassword)->where('user_name',$username1)->find()){
         $password=md5(input('post.newpassword'));
         $password1=md5(input('post.newpassword1'));
	         if (md5($password)==md5($password1)){
			$sql=$u->where('user_name',$username1)->update([
				'user_pwd' =>$password1]);
			   if ($sql) {
			$this->success("<h1>修改成功</h1>","index/index/index");
		}else{
			$this->error("修改失败！");
		}

		}else{
			echo '<h1>两次密码不一样. 点击此处 <a href="javascript:history.back(-1);">返回</a></h1>';
		}
		}else{
			echo '<script>alert("密码错误");location="newpwd";</script>';		
    }
}
	public function loginout(){	
        Session::delete('username','think');
			$this->success("<h1>退出成功</h1>","index/index/index");
	}
	
	public function edit(){	
        $u = new \app\index\model\User();
        $username = Session::get('username','think');
        $data= $u->where("user_name",$username)->find();
        $this->assign('username',$username);
        $this->assign('data',$data);
		return $this->fetch();
	}
	public function editdo(){	
		$username1 = Session::get('username','think');
	     $data['user_name']=\think\Request::instance()->post('username'); // 获取某个post变量username;
		$data['user_sex']=input('post.gender'); //性别
		$data['user_email']=input('post.email');
		$data['user_yb']=input('post.yb');
		$data['user_tel']=input('post.tel');
       
        $u = new \app\index\model\User();
         $result = $u->where('user_name',$username1)->update(
         	['user_name'=>$data['user_name'],
         	'user_sex'=>$data['user_sex'],
         	'user_email'=>$data['user_email'],
         	'user_yb'=>$data['user_yb'],
         	'user_tel'=>$data['user_tel']]);
        if ($result) {
			Session::set('username',$data['user_name'],'think');
			$this->success("<h1>修改成功</h1>","index/index/index");
		}else{
			$this->error("修改失败！");
		}
	}
    public function insert(){

		$u=new \app\index\model\User();
		$username=\think\Request::instance()->post('username'); // 获取某个post变量username
		$password=input('post.password');
		$password1=input('post.repass');
		$gender= input('post.gender'); //性别
		$email=input('post.email');
		if (md5($password)==md5($password1)){
			$sql=$u->where('user_name',$username)->find();
			if($sql){
				echo '<h1>该用户已存在. 点击此处 <a href="javascript:history.back(-1);">返回</a></h1>';
			}else{
				$data['user_name']=$username;
				$data['user_pwd']=$password;
				$data['user_sex']=$gender;
				$data['user_email']=$email;
				$u->insert($data); // 插入数据库
				$this->success("<h1>注册成功</h1>","index/index/index");
			}
		}else{
			echo '<h1>两次密码不一样. 点击此处 <a href="javascript:history.back(-1);">返回</a></h1>';
		}		
    }

    public function insert2(){
    	$data['user_name']=\think\Request::instance()->post('username'); // 获取某个post变量username
		$data['user_pwd']=input('post.password');
		$data['repass']=input('post.repass');
		$data['user_sex']=input('post.gender'); //性别
		$data['user_email']=input('post.email');

		$validate = \think\Loader::validate('User');
		if(!$validate->check($data)){
			//echo '<h1>'.$validate->getError().' 点击此处 <a href="javascript:history.back(-1);">返回</a></h1>';
			$this->error($validate->getError());
		}

		$u=new \app\index\model\User();
		$u->user_name=\think\Request::instance()->post('username');
		$u->user_pwd=md5(input('post.password'));
		$u->user_sex=input('post.gender'); //性别
		$u->user_email=input('post.email');
		$u->save();
		$this->success("<h1>注册成功</h1>","index/index/index");
    }
    
    public function logindo(){
    	if(Session::has('username','think')){

        $this->success("<h1>登录成功</h1>","index/index/index");

    	}
    	$username=\think\Request::instance()->post('username'); // 获取某个post变量username
		$password=md5(input('post.password'));
		$u=new \app\index\model\User();
		if($u->where("user_name",$username)->where("user_pwd",$password)->find()){
			Session::set('username',$username,'think');
        $this->success("<h1>登录成功</h1>","index/index/index");
		}else{
			echo '<script>alert("用户名或密码错误");location="login";</script>';
		}
			
    }

		/*$u=new \app\index\model\User();
		$data['user_pwd']=md5(input('post.password'));
		$u->strict(false)->insert($data); // 插入数据库
		$this->success("<h1>注册成功</h1>","index/index/index");*/	


}