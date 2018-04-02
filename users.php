<?php
require_once("dbcontroller.php");
class User {
	private $id;
	private $password;
	public $login;
	public $email;
	
	/*function __construct($id, $password, $login, $email) {
		$this->id = $id;
		$this->password = $password;
		$this->login = $login;
		$this->email = $email;
	}*/
	
	function getId() {
		return $this->id;
	}
	
	function getPassword() {
		return $this->password;
	}
	
	function getLogin() {
		return $this->login;
	}
	
	function getEmail() {
		return $this->email;
	}
		
	function setId($id) {
		$this->id = $id;
	}
	
	function setPassword($password) {
		$this->password = $password;
	}
	
	function setLogin($login) {
		$this->login = $login;
	}
	
	function setEmail($email) {
		$this->email = $email;
	}
	
	function userFindByLogin($login, $password) {
		$db_handle = new DBController();
		$res = $db_handle->runQuery("SELECT * FROM users WHERE login='$login' and password='$password'");
		return $res;
		if(res[0]){
			$this->id = $res[0]['id'];
			$this->password = $res[0]['password'];
			$this->login = $res[0]['login'];
			$this->email = $res[0]['mail'];
			return true;
		}
		else
			return false;
		}
	
		
}
?>