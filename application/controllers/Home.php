<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function index(){
        $data = array(
			'title' => "Register"
		);
		$this->load->view('dist/auth-register', $data);
    }
}