<?php
class MY_Controller extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->helper('url');
	}

	public function isLoggedIn(){
		return isset($_SESSION['userid']);
	}
}
?>