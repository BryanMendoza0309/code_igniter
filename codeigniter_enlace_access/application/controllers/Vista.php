<?php

/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/EmptyPHP.php to edit this template
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Vista extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('Persona');
        $this->load->model('Access_token');
        $this->load->library('encryption');
        $this->load->helper('url');
    }
    
    // Definición de la función 'index' que probablemente sirve como punto de entrada para la vista asociada
    public function index(){
        $vdata["personas"] = $this->Persona->findAll();
        $this->load->view('personas/vista', $vdata);
    }
    
    public function tu_metodo($id = NULL, $token = NULL) {
        // Verificar la existencia de ID y token
        if ($id === NULL || $token === NULL) {
            // Redirigir o mostrar un mensaje de error
            redirect(base_url('error'));
        }

        // Verificar la validez del token
        if ($this->verificar_token($id, $token)) {
            // Procesar el ID
            // ...

            // Puedes pasar el ID a la vista si es necesario
            $data['id'] = $id;

            // Cargar la vista
            $this->load->view('tu_vista', $data);
        } else {
            // Redirigir o mostrar un mensaje de error
            redirect(base_url('error'));
        }
    }

    // Función para verificar la validez del token
    private function verificar_token($id, $token) {
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

    public function guardarToken(){
        $id_list = $this->input->post('postId_list');
        $token = $this->input->post('token');
    
        // Establecer el huso horario de Ecuador
        date_default_timezone_set('America/Guayaquil');
    
        // Obtener la fecha y hora actual en hora ecuatoriana
        $fechaActual = date('Y-m-d H:i:s');
    
        // Obtener la fecha y hora después de una hora en hora ecuatoriana
        $fechaExpiracion = date('Y-m-d H:i:s', strtotime($fechaActual . '+1 hour'));
    
        // Crear un array con los datos
        $arrayTokens = array(
            "token" => $token,
            "last_used_at" => $fechaActual,
            "expires_at" => $fechaExpiracion,
            "id_list" => $id_list
        );
    
        // Llamar a la función del modelo para guardar el token
        $this->Access_token->createAccessToken($arrayTokens);
        $this->Access_token->eliminarTokensExpirados();
    }
    
    
}
