<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index() {
		$data = array(
			'title' => "Home",
			'departemen' => $this->db->get('departemen')->result_array(),
			'jenis_project' => $this->db->get('project')->result_array(),
		);
<<<<<<< HEAD
		$this->load->view('dist/pengajuan_project', $data);
=======

		// $this->form_validation->set_rules('nama', 'Nama', 'trim|required');
		// $this->form_validation->set_rules('nama_project', 'Nama Project', 'trim|required');
		// $this->form_validation->set_rules('deskripsi', 'Deskripsi Project', 'trim|required');
		// $this->form_validation->set_rules('target', 'Target Waktu Project', 'trim|required');
		// $this->form_validation->set_rules('link', 'Link Contoh Project', 'trim|required');
		// $this->form_validation->set_rules('link', 'Link Contoh Project', 'trim|required');
		// if ($this->form_validation->run() == TRUE or FALSE) {
		$this->load->view('dist/home', $data);
		// } else {
		// 	# code...
		// }
>>>>>>> 451f1cc24c5c25918bd9e3ea431e746e6a0bde62
	}
}