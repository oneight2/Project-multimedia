<?php
class Product_model extends CI_Model{

	function product_list(){

		$hasil= "SELECT * FROM `pengajuan` JOIN `departemen`
                  ON `pengajuan`.`id_departemen` = `departemen`.`id_departemen` 
                
                ";
        return $this->db->query($hasil)->result();
		// $hasil=$this->db->get('product');
		// return $hasil->result();
	}

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

		$this->db->set('status', $status);
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
	
}