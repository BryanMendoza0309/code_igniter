<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Access_token extends CI_Model {

    public $table = 'access_token';
    public $table_id = 'id';

    public function __construct(){
    }

    function findAll(){
        // Seleccionar todos los campos en la consulta
        $this->db->select();

        // Especificar la tabla desde la cual se realizará la consulta
        $this->db->from($this->table);

        // Ejecutar la consulta y obtener el resultado como un conjunto de resultados
        $query = $this->db->get();

        // Devolver todos los resultados como un array de objetos
        return $query->result();
    }


    function createAccessToken($data){
        $this->db->insert($this->table, $data);
    }

    function validatedToken($token,$id_list){
         // Seleccionar el número de filas (COUNT) que coinciden con el token y las abilities dados
    $this->db->select('COUNT(*) as num_filas');
    $this->db->from($this->table);
    $this->db->where('token', $token);
    $this->db->where('id_list', $id_list);
    $this->db->where('abilities', 1);

    // Ejecutar la consulta y obtener el resultado como un solo valor
    $query = $this->db->get();
    $resultado = $query->row()->num_filas;

    // Devolver true si hay al menos un registro, false si no hay registros
    return ($resultado > 0);
    }

    public function eliminarTokensExpirados() {
        // Establecer el huso horario de Ecuador
        date_default_timezone_set('America/Guayaquil');
    
        // Obtener la fecha y hora actual
        $fechaActual = date('Y-m-d H:i:s');
    
        // Seleccionar filas donde expires_at es menor que la fecha actual
        $this->db->where('expires_at <', $fechaActual);
    
        // Ejecutar la consulta para obtener las filas que cumplen con la condición
        $query = $this->db->get($this->table);
    
        // Obtener los resultados como un array de objetos
        $tokensExpirados = $query->result();
    
        // Eliminar las filas seleccionadas
        foreach ($tokensExpirados as $token) {
            $this->db->delete($this->table, array('id' => $token->id));
        }
    }

    public function modificHabilie($token,$id_list){
        // Seleccionar el número de filas (COUNT) que cumplen con las condiciones
        $data = array('abilities' => 0);
        $this->db->where('token', $token);
        $this->db->where('id_list', $id_list);
        $this->db->update($this->table, $data);
        return ($this->db->affected_rows() > 0);
    // Devolver true si existe el token y abilities es igual a 1, false si no
    // return ($resultado > 0);
    }
    
}