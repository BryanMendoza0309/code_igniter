<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios_model extends CI_Model {
	public function login($username){
		$this->db->where("username", $username);
		//$this->db->where("tbl_usuario_password", $password);
		$resultados=$this->db->get("tbl_usuarios");
		if($resultados->num_rows()>0){
			return $resultados->row();
		}else{
			return false;
		}
	}
}