<?php
class Product_model extends CI_Model{


	// PENGAJUAN PROJECT CIMANGGIS
	function product_list(){

		$hasil= "SELECT * FROM `pengajuan` JOIN `departemen`
					ON `pengajuan`.`id_departemen` = `departemen`.`id_departemen`
					JOIN `pegawai` ON `pengajuan`.`id_pegawai` = `pegawai`.`id_pegawai` WHERE `pengajuan`. `status` != 'Selesai' AND `pengajuan`.`tempat` = 'Cimanggis' ORDER BY `id` ASC
               ";
        return $this->db->query($hasil)->result();
	}

	function product_list_selesai(){

		$hasil= "SELECT * FROM `pengajuan` JOIN `departemen`
					ON `pengajuan`.`id_departemen` = `departemen`.`id_departemen`
					JOIN `pegawai` ON `pengajuan`.`id_pegawai` = `pegawai`.`id_pegawai` WHERE `pengajuan`. `status` = 'Selesai' AND `pengajuan`.`tempat` = 'Cimanggis' ORDER BY `id` ASC
               ";
        return $this->db->query($hasil)->result();
	}


	// PENGAJUAN PROJECT TAPOS
	function product_list_tapos(){

		$hasil= "SELECT * FROM `pengajuan` JOIN `departemen`
					ON `pengajuan`.`id_departemen` = `departemen`.`id_departemen`
					JOIN `pegawai` ON `pengajuan`.`id_pegawai` = `pegawai`.`id_pegawai` WHERE `pengajuan`. `status` != 'Selesai' AND `pengajuan`.`tempat` = 'Tapos' ORDER BY `id` ASC
               ";
        return $this->db->query($hasil)->result();
	}

	function product_list_selesai_tapos(){

		$hasil= "SELECT * FROM `pengajuan` JOIN `departemen`
					ON `pengajuan`.`id_departemen` = `departemen`.`id_departemen`
					JOIN `pegawai` ON `pengajuan`.`id_pegawai` = `pegawai`.`id_pegawai` WHERE `pengajuan`. `status` = 'Selesai' AND `pengajuan`.`tempat` = 'Tapos' ORDER BY `id` ASC
               ";
        return $this->db->query($hasil)->result();
	}



	// SAMA AJA INI MAH BISA DUA DUANYA
	function save_product(){
		$data = array(
				'product_code' 	=> $this->input->post('product_code'), 
				'product_name' 	=> $this->input->post('product_name'), 
				'product_price' => $this->input->post('price'), 
			);
		$result=$this->db->insert('product',$data);
		return $result;
	}

	function update_product(){
		$id=$this->input->post('id');
		$status=$this->input->post('status');
		$id_pegawai=$this->input->post('id_pegawai');

		$this->db->set('status', $status);
		$this->db->set('id_pegawai', $id_pegawai);
		$this->db->where('id', $id);
		$result=$this->db->update('pengajuan');
		return $result;
	}

	function delete_product(){
		$id=$this->input->post('id');
		// $storyboard=$this->input->post('storyboard');
		// unlink($storyboard);
		$this->db->where('id', $id);
		$result=$this->db->delete('pengajuan');
		return $result;
	}

	function data_pegawai(){

		$hasil=$this->db->get('pegawai');
		return $hasil->result();
	}
	
	function get_data_pengajuan(){
		$tglAwal=$this->input->post('tglAwal');
		$tglAkhir=$this->input->post('tglAkhir');
		$nama = array();
		$namaDepartemen = array();
		$CountProject = array();
		$CountProjectDepartemen = array();
		
		$pegawai= $this->db->query("SELECT * FROM `pegawai` WHERE `nama_pegawai` != 'Belum ada' && `nama_pegawai` != 'Jumadi'")->result();
		$departemen= $this->db->query("SELECT * FROM `departemen`")->result();
		// Project
		foreach($pegawai as $row):
			$id = $row->id_pegawai;
			$nama[] = $row->nama_pegawai;
			$CountProject[] = $this->db->query("SELECT * FROM pengajuan WHERE waktu_pengajuan BETWEEN '$tglAwal' AND '$tglAkhir' AND id_pegawai = $id   AND status= 'Selesai' ")->num_rows();

		endforeach;

		foreach($departemen as $row):
			$idDepartemen = $row->id_departemen;
			$namaDepartemen[] = $row->nama_departemen;
			$CountProjectDepartemen[] = $this->db->query("SELECT * FROM pengajuan WHERE waktu_pengajuan BETWEEN '$tglAwal' AND '$tglAkhir' AND id_departemen = $idDepartemen AND status= 'Selesai' ")->num_rows();
		endforeach;

		$project= $this->db->query("SELECT * FROM `pengajuan` WHERE `waktu_pengajuan` BETWEEN '$tglAwal' AND '$tglAkhir' AND status= 'Selesai'")->num_rows();
		$maintenance= $this->db->query("SELECT * FROM `maintenance` WHERE `waktu_pengajuan` BETWEEN '$tglAwal' AND '$tglAkhir'")->num_rows();

		return array(
			'project' => $project,
			'maintenance' => $maintenance,
			'nama' => $nama,
			'namaDepartemen' => $namaDepartemen,
			'countProject' => $CountProject,
			'countProjectDepartemen' => $CountProjectDepartemen,
			'pegawai' => $pegawai,
			'departemen' => $departemen
		);
	}
}