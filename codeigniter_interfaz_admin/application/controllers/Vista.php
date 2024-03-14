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
}
