<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set('America/Guayaquil');
require FCPATH.'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Writer\Csv;

class Reporte extends CI_Controller {
	//variable global para la session
	var $varCarne;
	
	public function __construct(){
		//Cargo los datos de la consulta de la BD
		parent::__construct();
		$this->load->model("DataReporte_model");
		//$this->load->model("Usuarios_model");
		//$this->load->model("GestLab_model");
		//$this->load->library('encryption');
		//$this->load->library('modulo10');
		//$this->load->helper('url');
		//$this->load->helper('cookie');
	}
	
	public function index(){
        $this->load->view('admin/header');
		$this->load->view('admin/menu');
		$this->load->view('admin/body_reporte');
		$this->load->view('admin/footer');
    }

	/*cambiar a minusculas los conectores*/
	function capitalizarString($string) {
		// Palabras a dejar en minúsculas
		$excepciones = array("el", "la", "los", "las", "del");

		// Dividir el string en palabras
		$palabras = explode(" ", $string);

		// Capitalizar la primera letra de cada palabra
		foreach ($palabras as &$palabra) {
			$palabra = ucwords($palabra);
			// Verificar si la palabra está en el arreglo de excepciones y convertirla a minúsculas
			if (in_array(strtolower($palabra), $excepciones)) {
				$palabra = strtolower($palabra);
			}
		}

		// Unir las palabras en un solo string
		$resultado = implode(" ", $palabras);

		return $resultado;
	}
	//select canton
	public function getCanton(){
        $id=$this->input->post('postId');
		$records = $this->DataReporte_model->getrowCanton($id);
		if(isset($records)){
			$data = array();
			foreach($records as $record ){
				$data[] = array(
				   "id"=>$record->nmCtonstr,
				   "text"=>$record->nmCtonstr
				); 
			}	
		}else{
			$data[] = array(
				"id"=>0,
				"text"=>'Sin datos...'
			); 
		}
		echo json_encode($data);
	}
	
	public function empListempleado(){
	    if($this->input->post('draw')!=""){
			// POST data
			$postData = $this->input->post();
			// Get data
			$idCnton = $this->input->post("slCnton");
			$idCgo = $this->input->post("slCgo");
			$idCnsjria = $this->input->post("slCnsjria");
			$Confirmar = $this->input->post("slCnfir");
			$data = $this->DataReporte_model->getEmployeesempleado($postData,$idCnton,$idCgo,$idCnsjria,$Confirmar);
			echo json_encode($data);
	    }else{
	      	$this->load->view('admin/header');
			$this->load->view('admin/menu');
			$this->load->view('admin/body_reporte');
			$this->load->view('admin/footer'); 
	    }
	}
	
	public function xlsExpt(){
		//fetch my data
		//$fini='2023-01-08';
		//$ffin='2023-01-08';
		$idCantSet=($this->uri->segment(3)!='undefined') ? $this->uri->segment(3) : '';
		$idCgoSet=($this->uri->segment(4)!='undefined') ? $this->uri->segment(4) : '';
		$idConsjeria=($this->uri->segment(5)!='undefined') ? $this->uri->segment(5) : '';
		$idConfirmar=($this->uri->segment(6)!='undefined') ? $this->uri->segment(6) : '';
		
		$idCant='';
		if(!empty($idCantSet)){
			$idCant=str_replace('_', ' ', $idCantSet);
		}
		
		$idCgo='';
		if(!empty($idCgoSet)){
			$idCgoDS=str_replace("__", " /", $idCgoSet);
			$idCgo=str_replace("_", " ", $idCgoDS);
		}
		
		$time = time();
		$filename='Reporte'.date("(H_i_s)", $time);
		header('Content-Type: application/vnd.ms-excel');
		header('Content-Disposition: attachment;filename="'.$filename.'.xlsx"');
		$spreadsheet = new Spreadsheet();
		$sheet = $spreadsheet->setActiveSheetIndex(0);
		
		$styleArray = [
			'borders' => [
				'allBorders' => [
					'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
					'color' => ['argb' => 'ff000000'],
				],
			],
		];

		$mergeRange = 'A1:AH1';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('A1', 'BASE DE DATOS DE COLABORADORES ELECCIONES SECCIONALES '.date("Y").' CPCCS');
		
		$sheet->getColumnDimension('A')->setAutoSize(true);
		$sheet->getColumnDimension('B')->setAutoSize(true);
		$sheet->getColumnDimension('C')->setAutoSize(true);
		$sheet->getColumnDimension('D')->setAutoSize(true);
		$sheet->getColumnDimension('E')->setAutoSize(true);
		$sheet->getColumnDimension('F')->setAutoSize(true);
		$sheet->getColumnDimension('G')->setAutoSize(true);
		$sheet->getColumnDimension('H')->setAutoSize(true);
		$sheet->getColumnDimension('I')->setAutoSize(true);
		$sheet->getColumnDimension('J')->setAutoSize(true);
		$sheet->getColumnDimension('K')->setAutoSize(true);
		$sheet->getColumnDimension('L')->setAutoSize(true);
		$sheet->getColumnDimension('M')->setAutoSize(true);
		$sheet->getColumnDimension('N')->setAutoSize(true);
		$sheet->getColumnDimension('O')->setAutoSize(true);
		$sheet->getColumnDimension('P')->setAutoSize(true);
		$sheet->getColumnDimension('Q')->setAutoSize(true);
		$sheet->getColumnDimension('R')->setAutoSize(true);
		$sheet->getColumnDimension('S')->setAutoSize(true);
		$sheet->getColumnDimension('T')->setAutoSize(true);
		$sheet->getColumnDimension('U')->setAutoSize(true);
		$sheet->getColumnDimension('V')->setAutoSize(true);
		$sheet->getColumnDimension('W')->setAutoSize(true);
		$sheet->getColumnDimension('X')->setAutoSize(true);
		$sheet->getColumnDimension('Y')->setAutoSize(true);
		$sheet->getColumnDimension('Z')->setAutoSize(true);
		$sheet->getColumnDimension('AA')->setAutoSize(true);
		$sheet->getColumnDimension('AB')->setAutoSize(true);
		$sheet->getColumnDimension('AC')->setAutoSize(true);
		$sheet->getColumnDimension('AD')->setAutoSize(true);
		$sheet->getColumnDimension('AE')->setAutoSize(true);
		$sheet->getColumnDimension('AF')->setAutoSize(true);
		$sheet->getColumnDimension('AG')->setAutoSize(true);
		$sheet->getColumnDimension('AH')->setAutoSize(true);

		$sheet->getStyle('A:AH')->getAlignment()->setHorizontal('center');
		$sheet->getStyle('A:AH')->getAlignment()->setVertical('center');
		
		//combinar dos celdas en la misma columna
		$mergeRange = 'A2:A3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('A2', ' #CÉDULA');
		$mergeRange = 'B2:B3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('B2', ' APELLIDOS');
		$mergeRange = 'C2:C3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('C2', ' NOMBRES');
		$mergeRange = 'D2:D3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('D2', ' GÉNERO');
		$mergeRange = 'E2:E3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('E2', ' NACIONALIDAD');
		$mergeRange = 'F2:F3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('F2', ' LUGAR DE DOMICILIO');
		$mergeRange = 'G2:G3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('G2', ' FECHA DE NACIMIENTO');
		$mergeRange = 'H2:H3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('H2', ' ESTADO CIVIL');
		$mergeRange = 'I2:I3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('I2', ' DISCAPACIDAD');
		$mergeRange = 'J2:J3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('J2', ' PORCENTAJE DE DISCAPACIDAD');
		$mergeRange = 'K2:K3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('K2', ' NIVEL EDUCATIVO');
		$mergeRange = 'L2:L3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('L2', ' TITULO OBTENIDO');
		$mergeRange = 'M2:M3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('M2', ' CARGO');
		$mergeRange = 'N2:N3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('N2', ' RMU');
		
		//GESTIÓN DE RECURSOS HUMANOS
		$mergeRange = 'O2:S2';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('O2', 'GESTIÓN DE RECURSOS HUMANOS');
		$sheet->setCellValue('O3', 'CANTÓN');
		$sheet->setCellValue('P3', 'PARROQUIA');
		$sheet->setCellValue('Q3', 'ZONA');
		$sheet->setCellValue('R3', 'COD RECINTO');
		$sheet->setCellValue('S3', 'NOMBRE DE RECINTO');
		
		//FECHA INGRESO
		$mergeRange = 'T2:V2';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('T2', 'FECHA INGRESO');
		$sheet->setCellValue('T3', 'AÑO');
		$sheet->setCellValue('U3', 'MES');
		$sheet->setCellValue('V3', 'DIA');
		
		//FECHA SALIDA
		$mergeRange = 'W2:Y2';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('W2', 'FECHA SALIDA');
		$sheet->setCellValue('W3', 'AÑO');
		$sheet->setCellValue('X3', 'MES');
		$sheet->setCellValue('Y3', 'DIA');
		
		$mergeRange = 'Z2:Z3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('Z2', ' INFORMACIÓN SRI');
		
		//ENTIDAD BANCARIA
		$mergeRange = 'AA2:AB2';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('AA2', 'ENTIDAD BANCARIA');
		$sheet->setCellValue('AA3', 'BANCO');
		$sheet->setCellValue('AB3', 'COOPERATIVA');
		
		$mergeRange = 'AC2:AC3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('AC2', ' TIPO DE CUENTA');
		$mergeRange = 'AD2:AD3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('AD2', ' No CUENTA');
		
		//ENTIDAD BANCARIA
		$mergeRange = 'AE2:AF2';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('AE2', 'TELÉFONO');
		$sheet->setCellValue('AE3', 'COVENCIONAL');
		$sheet->setCellValue('AF3', 'CELULAR');
		
		$mergeRange = 'AG2:AG3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('AG2', ' CORREO ELECTRÓNICO');
		
		$mergeRange = 'AH2:AH3';
		$sheet->mergeCells($mergeRange);
		$sheet->setCellValue('AH2', ' OBSERVACIÓN');
		
		$data=$this->DataReporte_model->expDataEmp($idCant,$idCgo,$idConsjeria,$idConfirmar);
		
		$sn=4;
		$i=1;
		foreach ($data as $row) {
			$sheet->setCellValue('A'.$sn,$row->tbl_empleado_cedula);
			$sheet->setCellValue('B'.$sn,$row->tbl_empleado_apellido);
			$sheet->setCellValue('C'.$sn,$row->tbl_empleado_nombres);
			$sheet->setCellValue('D'.$sn,$row->tbl_empleado_gnro);
			$sheet->setCellValue('E'.$sn,$row->tbl_empleado_nacionalidad);
			$sheet->setCellValue('F'.$sn,$row->tbl_empleado_lugardomicilio);
			$sheet->setCellValue('G'.$sn,$row->tbl_empleado_fchanac);
			$sheet->setCellValue('H'.$sn,$row->tbl_empleado_estcivil);
			$sheet->setCellValue('I'.$sn,$row->tbl_empleado_discapacidad);
			$sheet->setCellValue('J'.$sn,$row->tbl_empleado_porcdisc);
			$sheet->setCellValue('K'.$sn,$row->tbl_empleado_nveledu);
			$sheet->setCellValue('L'.$sn,$row->tbl_empleado_tloobt);
			$sheet->setCellValue('M'.$sn,$row->tbl_empleado_cgo);
			$sheet->setCellValue('N'.$sn,$row->tbl_empleado_rmu);
			$sheet->setCellValue('O'.$sn,$row->tbl_empleado_cantonstr);
			$sheet->setCellValue('P'.$sn,$row->tbl_empleado_parroquiastr);
			$sheet->setCellValue('Q'.$sn,$row->tbl_empleado_zona);
			$sheet->setCellValue('R'.$sn,$row->tbl_empleado_codrcto);
			$sheet->setCellValue('S'.$sn,$row->tbl_empleado_nmrcto);
			$sheet->setCellValue('T'.$sn,$row->tbl_empleado_fchainganio);
			$sheet->setCellValue('U'.$sn,$row->tbl_empleado_fchaingmes);
			$sheet->setCellValue('V'.$sn,$row->tbl_empleado_fchaingdia);
			$sheet->setCellValue('W'.$sn,$row->tbl_empleado_fchasalanio);
			$sheet->setCellValue('X'.$sn,$row->tbl_empleado_fchasalmes);
			$sheet->setCellValue('Y'.$sn,$row->tbl_empleado_fchasaldia);
			$sheet->setCellValue('Z'.$sn,$row->tbl_empleado_infsri);
			$sheet->setCellValue('AA'.$sn,$row->tbl_empleado_entbcrbanco);
			$sheet->setCellValue('AB'.$sn,$row->tbl_empleado_entbcrcooperativa);
			$sheet->setCellValue('AC'.$sn,$row->tbl_empleado_tpocuenta);
			$sheet->setCellValue('AD'.$sn,$row->tbl_empleado_numcuenta);
			$sheet->setCellValue('AE'.$sn,$row->tbl_empleado_tlfnoConv);
			$sheet->setCellValue('AF'.$sn,$row->tbl_empleado_tlfnoCelar);
			$sheet->setCellValue('AG'.$sn,$row->tbl_empleado_email);
			$sheet->setCellValue('AH'.$sn,$row->tbl_empleado_obsv);
			$sn++;
			$i++;
		}
		
		$sheet->getStyle('A1:AH'.$i+=2)->applyFromArray($styleArray);
		
		$sheet
		->getStyle('A1')
		->getFill()
		->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
		->getStartColor()
		->setARGB('ff9bc2e6');
		
		$sheet
		->getStyle('A2:AH3')
		->getFill()
		->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
		->getStartColor()
		->setARGB('ff00ffff');
		//$sheet->getColumnDimension('A')->setWidth(16);
		//$sheet->getColumnDimension('B')->setWidth(44);
		//$sheet->getColumnDimension('C')->setWidth(20);
		//$sheet->getColumnDimension('D')->setWidth(14);
		//foreach (range('A', $sheet->getHighestColumn()) as $columnID) {
			//$sheet->getColumnDimension('B')->setAutoSize(true);
			//$sheet->getStyle($columnID)->getAlignment()->setHorizontal('left');
			//$sheet->getStyle($columnID)->getAlignment()->setVertical('left');
		//}
		
		
		
		
		$spreadsheet->getActiveSheet()->setTitle('N° ENTRADAS SALIDAS');
		$spreadsheet->setActiveSheetIndex(0);
		$writer = new Xlsx($spreadsheet);
		$filename=date("d-m-Y").time();
		$writer->save("php://output");
	}

	public function getCargo(){
        $id=$this->input->post('postId');
		$data = $this->DataReporte_model->getrowCargo($id);
		echo json_encode($data);
	}
	
	public function getCsejeria(){
        $id=$this->input->post('postId');
		$data = $this->DataReporte_model->getrowCjeria($id);
		echo json_encode($data);
	}
	
	public function xlsExptts(){
		//fetch my data
		//$fini='2023-01-08';
		//$ffin='2023-01-08';
		$idCant=($this->uri->segment(3)!='undefined') ? $this->uri->segment(3) : '';
		$idCgo=($this->uri->segment(4)!='undefined') ? $this->uri->segment(4) : '';
		if(!empty($idCant)){		
			echo'cton no vacio';
		}
		if(!empty($idCgo)){
			echo'cton cgo no vacio';
		}
	}
}