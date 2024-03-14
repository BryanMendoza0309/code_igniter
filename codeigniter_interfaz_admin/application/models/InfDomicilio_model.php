<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class InfDomicilio_model extends CI_Model {

    public $tblCanton = 'tbl_canton';
    public $tblCanton_id = 'id_provincia';
  
    public function __construct(){
    }
    
    public function canton() {
        $this->db->where($this->tblCanton_id, '13');
        $query = $this->db->get($this->tblCanton);
        return $query->result_array();
    }

    public function obtenerParroquias($id=NULL) {
        $this->db->where('id_canton', $id);
        $query = $this->db->get('tbl_parroquia');
        return $query->result_array();
    }
    
    public function instData($data){
		$this->db->insert('tbl_empleado', $data);
		if($this->db->affected_rows()>0){
			//return true;
            return $this->db->insert_id();
		}else{
			return false;
		}
	}

    public function instDatausr($data){
		$this->db->insert('tbl_usuarios', $data);
		if($this->db->affected_rows()>0){
			return true;
		}else{
			return false;
		}
	}

    /*// Definición de la función 'find' que busca un registro por su ID en la base de datos
    function find($id){
        // Seleccionar todos los campos en la consulta
        $this->db->select();

        // Especificar la tabla desde la cual se realizará la consulta
        $this->db->from($this->table);

        // Agregar una condición WHERE para buscar el registro con el ID proporcionado
        $this->db->where($this->table_id, $id);

        // Ejecutar la consulta y obtener el resultado
        $query = $this->db->get();

        // Devolver la primera fila del resultado como un objeto
        return $query->row();
    }
    
    // Definición de la función 'findAll' que busca todos los registros en la base de datos
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
    
    // Definición de la función 'insert' que inserta un nuevo registro en la base de datos
    function insert($data){
        // Utilizar el objeto de la base de datos para realizar una inserción en la tabla especificada
        $this->db->insert($this->table, $data);

        // Devolver el ID del último registro insertado en la tabla
        return $this->db->insert_id();
    }
    
   // Definición de la función 'update' que actualiza un registro en la base de datos por su ID
    function update($id, $data){
        // Especificar la condición WHERE para la actualización, en este caso, el ID del registro
        $this->db->where($this->table_id, $id);
        // Utilizar el objeto de la base de datos para realizar una actualización en la tabla especificada
        $this->db->update($this->table, $data);
    }

    // Definición de la función 'delete' que elimina un registro en la base de datos por su ID
    function delete($id){
        // Especificar la condición WHERE para la eliminación, en este caso, el ID del registro
        $this->db->where($this->table_id, $id);
        // Utilizar el objeto de la base de datos para realizar una eliminación en la tabla especificada
        $this->db->delete($this->table);
    }*/
}

/* End of file user_m.php */
/* Location: ./application/models/user_m.php */