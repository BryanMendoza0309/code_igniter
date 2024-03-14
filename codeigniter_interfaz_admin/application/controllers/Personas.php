<?php

/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/EmptyPHP.php to edit this template
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Personas extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->helper('form');
        // Este helper proporciona funciones útiles para trabajar con formularios en CodeIgniter.
        // Al cargar este helper, se habilitan diversas funciones que facilitan la creación y procesamiento de formularios HTML.
        // Ejemplos de funciones incluidas son form_open(), form_input(), form_dropdown(), entre otras.
        // Estas funciones ayudan a generar código HTML para formularios de manera más sencilla y segura.
        $this->load->database();
        $this->load->model('Persona');
        $this->load->library('form_validation');
        $this->load->library('encryption');
    }
    
    // Definición de la función 'index' que probablemente sirve como punto de entrada para la vista asociada
    public function index(){
    }
    
    public function listado(){
        $vdata["personas"] = $this->Persona->findAll();
        $this->load->view('personas/listado', $vdata);
    }
    
    // Definición de la función 'guardar' en el controlador Personas
    public function guardar($persona_id = null){
        $mensaje=array('required' => 'El %s es obligatorio');
        
        $this->form_validation->set_rules('nombre', 'Nombre', 'required', $mensaje);
        $this->form_validation->set_rules('apellido', 'Apellido', 'required', $mensaje);
        $this->form_validation->set_rules('edad', 'Edad', 'required', $mensaje);
        
        $vdata["nombre"] = $vdata["apellido"] = $vdata["edad"] = "";
        
        if (isset($persona_id)) {
            $persona=$this->Persona->find($persona_id);

            if (isset($persona)) {
                $vdata["nombre"] = $persona->nombre;
                $vdata["apellido"] = $persona->apellido;
                $vdata["edad"] = $persona->edad;
            }
        }
        
        // Verificar si la solicitud HTTP es un POST
        if($this->input->server("REQUEST_METHOD")=="POST"){
            // Obtener datos del formulario utilizando el objeto input
            $data["nombre"] = $this->input->post("txtnombre");
            $data["apellido"] = $this->input->post("txtapellido");
            $data["edad"] = $this->input->post("txtedad");

            $vdata["nombre"] = $this->input->post("txtnombre");
            $vdata["apellido"] = $this->input->post("txtapellido");
            $vdata["edad"] = $this->input->post("txtedad");
            
            if ($this->form_validation->run()) {
                if (isset($persona_id)) {                
                    $this->Persona->update($persona_id, $data);
                } else {
                    // Insertar los datos en la base de datos utilizando el modelo Persona
                    $this->Persona->insert($data);
                }
            }
        }
                
        // Cargar la vista 'guardar' ubicada en el directorio 'personas'
        $this->load->view('personas/guardar', $vdata);
    }
        
    public function borrar(){
        
    }
}

