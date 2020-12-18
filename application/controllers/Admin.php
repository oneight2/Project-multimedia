<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        date_default_timezone_set('Asia/Jakarta');
    }


	public function index() {
		$data = array(
			'title' => "Admin",
			'departemen' => $this->db->get('departemen')->result_array(),
			'jenis_project' => $this->db->get('project')->result_array(),
		);
		$this->load->model('Pengajuan_model', 'pengajuan');
        $data['pengajuan'] = $this->pengajuan->getPengajuan();

		$this->load->view('templates/header', $data); 
		$this->load->view('templates/sidebar', $data); 
		$this->load->view('dashboard', $data); 
		$this->load->view('templates/footer', $data); 
	}

	public function viewdata($id){
		$data['pengajuan'] = $this->db->get_where('pengajuan', ['id' => $id])->row_array();

		$this->load->view('templates/header', $data); 
		$this->load->view('templates/sidebar', $data); 
		$this->load->view('view_pengajuan', $data); 
		$this->load->view('templates/footer', $data); 

	}
}