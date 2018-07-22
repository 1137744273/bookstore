<?php
namespace app\index\model;
use think\Model;

class User extends Model
{
	protected $auto = ['user_name'];
	protected $insert = ['user_logintimes' => 0];  

	protected function setUserNameAttr($value)
    {
        return strtolower($value);
    }
	
}