<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index() {
		$data = array(
			'title' => "Home",
		);
		$this->load->view('dist/pengajuan_project', $data);
	}
}