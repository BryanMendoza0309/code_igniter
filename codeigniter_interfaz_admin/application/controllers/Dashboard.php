<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->library('session');
		//$this->load->model("DataImport_model");
		$this->load->helper('url');
		/*if(!$this->session->userdata("login")){
			redirect(base_url());
		}*/
	}
	
	public function index(){
		/*vista del dashboard*/
		//$this->load->view('layouts/header');
		//$this->load->view('layouts/aside');
		if (defined('REQUEST') && REQUEST === 'external') {
            return;
        }
		//echo $_SESSION['tipouser'];
		//if($this->session->userdata('idroles')=='1'){
		if(isset($_SESSION['tipouser'])){ 
			if($_SESSION['tipouser']=='admin'){
				redirect(base_url()."dashboard/admin","refresh");
			}
			if($_SESSION['tipouser']=='usuario'){
				redirect(base_url()."dashboard/uauario","refresh");
			}
		}
		//}
		//$this->load->view('layouts/footer');
		/**/
	}
	public function admin()
	{
		$this->load->view('header');
		$this->load->view('menu');
		$this->load->view('body_usuario');
		$this->load->view('footer');
	}
	/*opcion de importar la información*/
	public function usuario()
	{
		$this->load->view('header');
		$this->load->view('menu');
		$this->load->view('body_importar');
		$this->load->view('footer');
	}
}
