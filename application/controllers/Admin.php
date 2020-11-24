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

	public function project(){
		$data = array(
			'title' => "Home",
			'departemen' => $this->db->get('departemen')->result_array(),
			'jenis_project' => $this->db->get('project')->result_array(),
		);

		$this->form_validation->set_rules('nama', 'Nama', 'trim|required');
		$this->form_validation->set_rules('judul_project', 'Nama Project', 'trim|required');
		$this->form_validation->set_rules('deskripsi', 'Deskripsi Project', 'trim|required');
		$this->form_validation->set_rules('waktu', 'Target Waktu Project', 'trim|required');
		$this->form_validation->set_rules('link', 'Link Contoh Project', 'trim|required');

		if ($this->form_validation->run() == FALSE) {
			$this->load->view('templates/auth_header', $data); 
			$this->load->view('pengajuan_project', $data); 
			$this->load->view('templates/auth_footer', $data); 
		} else {
			$data = [
                'nama' => htmlspecialchars($this->input->post('nama', true)),
                'id_departemen' => htmlspecialchars($this->input->post('departemen', true)),
                'nama_project' => htmlspecialchars($this->input->post('judul_project', true)),
                'deskripsi' => htmlspecialchars($this->input->post('deskripsi', true)),
                'target_project' => htmlspecialchars($this->input->post('waktu', true)),
                'link' => htmlspecialchars($this->input->post('link', true)),
                'id_jenis_project' => json_encode($this->input->post('jenis_project', true)),
                'waktu_pengajuan' => time()
            ];
            var_dump($data);
            // die();
            // $this->db->insert('pengajuan', $data);
             $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Terimakasih! pengajuan project akan segera kami proses</div>');
            redirect('home');


		}
	}
}