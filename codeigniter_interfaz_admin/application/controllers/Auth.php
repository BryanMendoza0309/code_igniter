<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct(){
		/*Cargo los datos de la consulta de la BD*/
		parent::__construct();
		$this->load->model("Usuarios_model");
		$this->load->library('encryption');
	}
	public function index()
	{
		/*se verifica que la session este iniciada*/
		if($this->session->userdata("login")){
			redirect(base_url()."dashboard");
		}else{
			$this->load->view('login');
		}
	}
	public function admin()
	{
		$this->load->view('login');
	}
	public function filter($str){
		/*remover caracteres especiales*/
		//convert case to lower
		$str = strtolower($str);
		//remove special characters
		$str = preg_replace('/[^a-zA-Z0-9_]/i',' ', $str);
		//remove white space characters from both side
		$str = trim($str);
		return $str;
	}

	function csidPermiso($id){
		$dataSql=$this->Usuarios_model->dtPermiso($id);
		return $dataSql;			
	}
	public function login(){
		/*obtener los datos del formulario por post*/
		$username=$this->filter($this->input->post("username"));
		$password=md5($this->input->post("password"));
		//echo $username;
		$res = $this->Usuarios_model->login(trim($username), trim($password));
		if(!$res){
			echo 'no';
			if(!isset($username) || !isset($password)){
				redirect(base_url());
			}
			//redirect(base_url());
		}else{
			$data=array(
				'idusuario' => $res->idtbl_usuarios,
				'nombres' => $res->nombres,
				'apellidos' => $res->apellidos,
				'idroles' => $res->tpo_usuario,
				'login' => TRUE
			);
			$this->session->set_userdata($data);
			if(isset($_SESSION['idusuario'])){
				$valores=array();
				$idUser=$_SESSION['idusuario'];
				foreach($this->csidPermiso($idUser) as $record){
					array_push($valores,$record->tbl_permisos_idtbl_permisos);
				}
				in_array(1,$valores)?$_SESSION['all']=1:$_SESSION['all']=0;
				//in_array(2,$valores)?$_SESSION['personal']=1:$_SESSION['personal']=0;
				in_array(3,$valores)?$_SESSION['usuario']=1:$_SESSION['usuario']=0;
				in_array(4,$valores)?$_SESSION['importar']=1:$_SESSION['importar']=0;
				//in_array(5,$valores)?$_SESSION['buscar']=1:$_SESSION['buscar']=0;
				in_array(6,$valores)?$_SESSION['empleado']=1:$_SESSION['empleado']=0;
				in_array(7,$valores)?$_SESSION['reporte']=1:$_SESSION['reporte']=0;
				in_array(8,$valores)?$_SESSION['fingestion']=1:$_SESSION['fingestion']=0;
				in_array(9,$valores)?$_SESSION['ttalPsto']=1:$_SESSION['ttalPsto']=0;
				in_array(10,$valores)?$_SESSION['cargoUpd']=1:$_SESSION['cargoUpd']=0;
			}
			$url=base_url().'dashboard';
			echo 'yes';
		}
		//echo $_SESSION['idusuario'];
	}
	public function logout(){
		/*cerrar la session*/
		$this->session->sess_destroy();
		redirect(base_url());
	}
}