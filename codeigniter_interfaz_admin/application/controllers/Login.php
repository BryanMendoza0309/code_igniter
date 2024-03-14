<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
    
        public function __construct() {
            parent::__construct();
			$this->load->database();
			$this->load->model("Usuarios_model");
			$this->load->library(array('encryption', 'session'));
        }
	
        public function index(){
			/*se verifica que la session este iniciada*/
			if($this->session->userdata("login")){
				redirect(base_url()."reporte");
			}else{
				$this->load->view('admin/login');
			}
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

		public function auth(){
			/*obtener los datos del formulario por post*/
			$username=$this->filter($this->input->post("username"));
			$password=md5($this->input->post("password"));
			//echo $username;
			$res = $this->Usuarios_model->login(trim($username), trim($password));
			if(!$res){
				$data='El usuario y/o contraseña son incorrestos.';
				if(!isset($username) || !isset($password)){
					$data=base_url().'admin';
				}
				//echo json_encode(['status' => 'error', 'message' => ['err' => $url]]);
				echo json_encode(array('error' => true, 'mensaje' => ['err' => $data]));
				//redirect(base_url());
			}else{
				$dataSs=array(
					'idusuario' => $res->idtbl_usuarios,
					'nombres' => $res->nombres,
					'apellidos' => $res->apellidos,
					'tipouser' => $res->tpo_usuario,
					'login' => TRUE
				);
				$this->session->set_userdata($dataSs);
				$data=base_url().'reporte';
				echo json_encode(array('success' => true, 'mensaje' => ['url' => $data]));
			}
			//echo $_SESSION['idusuario'];
		}
		
		public function logout(){
			/*cerrar la session*/
			$this->session->sess_destroy();
			redirect(base_url().'login');
		}
}
