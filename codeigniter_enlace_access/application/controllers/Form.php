<?php

/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/EmptyPHP.php to edit this template
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Form extends CI_Controller {
    // public $tokenValidated = array();
    // public $id_list = NULL;
    
    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('InfDomicilio_model');
        $this->load->model('Access_token');
        //$this->load->library('encryption');
        $this->load->helper(array('form', 'url'));
        $this->load->library(array('upload', 'encryption', 'form_validation'));
        // $this->tokenValidated['token'] = $this->uri->segment(3);
        // $this->id_list = $this->uri->segment(2);
    }
    
    // Definición de la función 'index' que probablemente sirve como punto de entrada para la vista asociada
    public function index($id = NULL, $token = NULL){
        
        // $result = $this->procesarForm();
        // return $result;
       //Verificar la existencia de ID y token
        if ($id === NULL || $token === NULL) {
            // Redirigir o mostrar un mensaje de error
            redirect(base_url('error'));
        }else{
            $validated = $this->Access_token->validatedToken($token,$id);
            if ($validated) {
                // El token y las abilities existen en la base de datos
                $this->load->view('personas/form');
            } else {
                // El token y/o las abilities no existen en la base de datos
                redirect(base_url('error'));
            }
            
        }

        
    }
    
        
    // Función para verificar la validez del token
    public function verificar_token($id, $token) {
        // Puedes implementar tu propia lógica de generación y verificación del token aquí
        // Por ejemplo, comparar el token en la URL con un token generado en el servidor
        $server_token = $this->generar_token($id);

        return ($token === $server_token);
    }

    // Función para generar un token
    private function generar_token($id) {
        // Puedes implementar tu propia lógica de generación del token aquí
        // Por ejemplo, usando la función hash con algún secreto único
        $secret = 'tu_secreto_unico';
        return hash('sha256', $id . $secret);
    }

    public function parroquia(){
        $id_canton = $this->input->post('id_provincia');
        $parroquias = $this->InfDomicilio_model->obtenerParroquias($id_canton);
        echo json_encode($parroquias);
    }

    public function procesarForm() {
        $id_list = $this->input->post('id_list');
        $token = $this->input->post('token');
        $validacion = $this->Access_token->validatedToken($token,$id_list);
        //  echo $this->tokenValidated;
        // return $this->tokenValidated;
    if ($validacion) { 
        $result  = $this->Access_token->modificHabilie($token,$id_list);
        
        echo 1;
        return true;
    } else {
        // El token no existe o abilities no es igual a 1
        echo 0;
        return true;
    }
        
    }

    public function validatedInicio(){
        $id_list = $this->input->post('id_list');
        $token = $this->input->post('token');
        $validacion = $this->Access_token->validatedToken($token,$id_list);
            if ($validacion) {
                // El token y las abilities existen en la base de datos
                echo 1;
                return true;
            } else {
                // El token no existe o abilities no es igual a 1
                echo 0;
                return true;
            }
            
        }

}
