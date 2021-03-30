<?php 

class Maintenance_model extends CI_Model
{
    public function getPengajuan()
    {
        $query = "SELECT * FROM `maintenance` JOIN `departemen`
                  ON `maintenance`.`id_departemen` = `departemen`.`id_departemen`
                  JOIN `pegawai` ON `maintenance`.`id_pegawai` = `pegawai`.`id_pegawai`
                
                ";
        return $this->db->query($query)->result_array();
    }
    public function getKontak(){
            $query = "SELECT * FROM `pegawai` WHERE `id_pegawai` != 1 ";
            return $this->db->query($query)->result_array();
    }

    function product_list(){

        $hasil= "SELECT * FROM `maintenance` JOIN `departemen`
                    ON `maintenance`.`id_departemen` = `departemen`.`id_departemen`
                
                ";
        return $this->db->query($hasil)->result();
        // $hasil=$this->db->get('product');
        // return $hasil->result();
    }


    function update_product(){
        $id=$this->input->post('id');
        $status=$this->input->post('status');
        $id_pegawai=$this->input->post('id_pegawai');

        $this->db->set('status', $status);
        $this->db->set('id_pegawai', $id_pegawai);
        $this->db->where('id', $id);
        $result=$this->db->update('maintenance');
        return $result;
    }

    function delete_product(){
        $id=$this->input->post('id');
        // $storyboard=$this->input->post('storyboard');
        // unlink($storyboard);
        $this->db->where('id', $id);
        $result=$this->db->delete('maintenance');
        return $result;
    }
}
