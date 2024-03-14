<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct(){
		/*Cargo los datos de la consulta de la BD*/
		parent::__construct();
		$this->load->database(); // Cargar la base de datos
		$this->load->model("Usuarios_model");
		$this->load->library(array('encryption', 'session'));
	}
	public function index()
	{
		/*se verifica que la session este iniciada*/
		if($this->session->userdata("login")){
			redirect(base_url()."dashboard");
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
	
	public function login(){
		$username = $this->input->post("username");
		$password = $this->input->post("password");
		
		$res = $this->Usuarios_model->login($this->filter($username));
		
		// Verificar intentos de inicio de sesión
		$login_attempts = $this->session->userdata('login_attempts') ?? 0;
		if ($login_attempts > 2) {
			$this->session->set_userdata('locked', time());
			$this->session->set_userdata('login_maxinten', time());
			//redirect(base_url().'admin'); // Redirigir a la página principal o a donde sea necesario
		}
		
		// Verificar si el usuario existe y la contraseña es correcta
		if (!$res || !password_verify($password, $res->password)) {
			$this->session->set_userdata('login_attempts', $login_attempts + 1);
			$data['error'] = "El usuario y/o contraseña son incorrectos";
			$this->load->view('login', $data); // Cargar la vista de inicio de sesión con el mensaje de error
		} else {
			// Iniciar sesión correctamente
			$this->session->set_userdata('some_name', 'some_value');
			$data = array(
				'idusuario' => $res->idtbl_usuarios,
				'nombres' => $res->nombres,
				'apellidos' => $res->apellidos,
				'tipouser' => $res->tpo_usuario,
				'idempleado' => $res->tbl_empleado_idtbl_empleado,
				'login' => TRUE
			);
			$this->session->set_userdata($data);
			redirect(base_url().'dashboard'); // Redirigir al dashboard o a donde sea necesario después de iniciar sesión
		}
	}
	
	public function logout(){
		/*cerrar la session*/
		$this->session->sess_destroy();
		redirect(base_url());
	}
}