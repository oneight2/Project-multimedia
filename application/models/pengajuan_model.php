<?php 
defined('BASEPATH') or exit('No direct script access allowed');

class Pengajuan_model extends CI_Model
{
    public function getPengajuan()
    {
        $query = "SELECT * FROM `pengajuan` JOIN `departemen`
                  ON `pengajuan`.`id_departemen` = `departemen`.`id_departemen` 
                
                ";
        return $this->db->query($query)->result_array();
    }
}
// $query = "SELECT * FROM `pengajuan` JOIN `departemen`
//                   ON `pengajuan`.`id_departemen` = `departemen`.`id` JOIN `project` ON `pengajuan`.`id_jenis_project` = `project`.`id`
                
//                 ";