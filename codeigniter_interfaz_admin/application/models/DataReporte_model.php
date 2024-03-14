<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DataReporte_model extends CI_Model {
	function getEmployeesempleado($postData=null, $idCnton=null, $idCgo=null, $idCnsjria=null, $Confirmar=null){
		$response = array();

		## Read value
		$draw = $postData['draw'];
		$start = $postData['start'];
		$rowperpage = $postData['length']; // Rows display per page
		$columnIndex = $postData['order'][0]['column']; // Column index
		$columnName = $postData['columns'][$columnIndex]['data']; // Column name
		$columnSortOrder = $postData['order'][0]['dir']; // asc or desc
		$searchValue = $postData['search']['value']; // Search value
		
		## Search 
		$searchQuery = "";
		if($searchValue != ''){
			if (is_numeric($searchValue)) {
				$searchQuery = " ( a.tbl_empleado_cedula like '%".$searchValue."%' ) ";
			}else{
				$searchQuery = " ( a.tbl_empleado_apellnomb like '%".$searchValue."%' ) ";
			}
		
		}

		## Total number of records without filtering
		$this->db->select('count(*) as allcount');
		$this->db->from('tbl_usuarios a');
		//$this->db->join('tbl_usuarios b', 'a.tbl_empleado_usuario = b.idtbl_usuarios', 'inner');
		//$this->db->where("(a.tbl_empleado_estado IS NULL)", NULL, FALSE);
		/*if(!empty($idCnton)){
			$this->db->where("(a.tbl_empleado_cantonstr like '%".$idCnton."%')", NULL, FALSE);
		}
		if(!empty($idCgo)){
			$this->db->where("(a.tbl_empleado_cgo='".$idCgo."')", NULL, FALSE);
		}
		if(!empty($idCnsjria)){
			$this->db->where("(a.tbl_empleado_consejeria='".$idCnsjria."')", NULL, FALSE);
		}
		if(!empty($Confirmar)){
			$this->db->where("(a.tbl_empleado_confirmar='".$Confirmar."')", NULL, FALSE);
		}*/
		//$this->db->or_where('tbl_usuario_tipousuario=', 'seg');
		$records = $this->db->get()->result();
		$totalRecords = $records[0]->allcount;

		## Total number of record with filtering
		$this->db->select('count(*) as allcount');
		$this->db->from('tbl_usuarios a');
		/*$this->db->join('tbl_usuarios b', 'a.tbl_empleado_usuario = b.idtbl_usuarios', 'inner');
		$this->db->where("(a.tbl_empleado_estado IS NULL)", NULL, FALSE);
		if(!empty($idCnton)){
			$this->db->where("(a.tbl_empleado_cantonstr like '%".$idCnton."%')", NULL, FALSE);
		}
		if(!empty($idCgo)){
			$this->db->where("(a.tbl_empleado_cgo='".$idCgo."')", NULL, FALSE);
		}
		if(!empty($idCnsjria)){
			$this->db->where("(a.tbl_empleado_consejeria='".$idCnsjria."')", NULL, FALSE);
		}
		if(!empty($Confirmar)){
			$this->db->where("(a.tbl_empleado_confirmar='".$Confirmar."')", NULL, FALSE);
		}*/
		//$this->db->where('tbl_usuario_tipousuario=', 'usuario');
		//$this->db->or_where('tbl_usuario_tipousuario=', 'seg');
		
		if($searchQuery != '')
		$this->db->where($searchQuery);
		$records = $this->db->get()->result();
		$totalRecordwithFilter = $records[0]->allcount;

		## Fetch records
		//$this->db->select('idtbl_empleado,tbl_empleado_cedula,tbl_empleado_apellnomb,UPPER(tbl_empleado_cantonstr) as nmCtonstr,tbl_empleado_cgo,tbl_empleado_consejeria,tbl_empleado_obsv,tbl_empleado_fcharegistro,CONCAT(SUBSTRING_INDEX(b.nombres," ",1), " ", SUBSTRING_INDEX(b.apellidos," ",1)) AS name');
		$this->db->select('*');
		$this->db->from('tbl_usuarios a');
		//$this->db->join('tbl_usuarios b', 'a.tbl_empleado_usuario = b.idtbl_usuarios', 'inner');
		//$this->db->where("(a.tbl_empleado_estado IS NULL)", NULL, FALSE);
		/*if(!empty($idCnton)){
			$this->db->where("(a.tbl_empleado_cantonstr like '%".$idCnton."%')", NULL, FALSE);
		}
		if(!empty($idCgo)){
			$this->db->where("(a.tbl_empleado_cgo='".$idCgo."')", NULL, FALSE);
		}
		if(!empty($idCnsjria)){
			$this->db->where("(a.tbl_empleado_consejeria='".$idCnsjria."')", NULL, FALSE);
		}
		if(!empty($Confirmar)){
			$this->db->where("(a.tbl_empleado_confirmar='".$Confirmar."')", NULL, FALSE);
		}*/
		//$this->db->where('tbl_usuario_tipousuario=', 'usuario');
		//$this->db->or_where('tbl_usuario_tipousuario=', 'seg');
				
		if($searchQuery != '')
		$this->db->where($searchQuery);
		$this->db->order_by($columnName, $columnSortOrder);
		$this->db->limit($rowperpage, $start);
		$records = $this->db->get()->result();

		$data = array();

		foreach($records as $record ){
			$data[] = array(
				"idtbl_usuarios"=>$record->idtbl_usuarios,
				"nombres"=>$record->nombres,
				"nombres"=>$record->nombres,
				"nombres"=>$record->nombres,
				"nombres"=>$record->nombres,
				"nombres"=>$record->nombres,
				"nombres"=>$record->nombres,
				"nombres"=>$record->nombres,
				"nombres"=>$record->nombres
			);
		}

		## Response
		$response = array(
			"draw" => intval($draw),
			"iTotalRecords" => $totalRecords,
			"iTotalDisplayRecords" => $totalRecordwithFilter,
			"aaData" => $data
		);

		return $response; 
	}
}