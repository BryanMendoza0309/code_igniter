<?php

/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/EmptyPHP.php to edit this template
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class InfDomicilio extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('InfDomicilio_model');
        //$this->load->library('encryption');
        //$this->load->helper('url');
    }
    
    public function index() {
        $data['cantones'] = $this->InfDomicilio_model->canton();
        $this->load->view('personas/form', $data);
    }

    /*public function obtener_subcategorias() {
        $id_categoria = $this->input->post('id_categoria');
        $subcategorias = $this->Categorias_model->obtener_subcategorias($id_categoria);
        echo json_encode($subcategorias);
    }*/
}
