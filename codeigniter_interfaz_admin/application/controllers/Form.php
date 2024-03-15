<?php

/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/EmptyPHP.php to edit this template
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Form extends CI_Controller {
    public $rutaUrl = array();
    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('InfDomicilio_model');
        //$this->load->library('encryption');
        $this->load->helper(array('form', 'url'));
        $this->load->library(array('upload', 'encryption', 'form_validation'));
    }
    
    // Definición de la función 'index' que probablemente sirve como punto de entrada para la vista asociada
    /*public function index($id = NULL, $token = NULL){
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
            $data['cantones'] = $this->InfDomicilio_model->canton();
        
            // Cargar la vista
            $this->load->view('personas/form', $data);
        } else {
            // Redirigir o mostrar un mensaje de error
            redirect(base_url('error'));
        }
    }*/

    public function index(){
        // Puedes pasar el ID a la vista si es necesario
        $id=1;
        $data['id'] = $id;
        $data['cantones'] = $this->InfDomicilio_model->canton();

        // Cargar la vista
        $this->load->view('personas/form', $data);
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

    public function parroquia(){
        $id_canton = $this->input->post('id_provincia');
        $parroquias = $this->InfDomicilio_model->obtenerParroquias($id_canton);
        echo json_encode($parroquias);
    }

    public function procesarForm() {
        if($this->input->post()){
            
            $discapacidad = $this->input->post('discapacidad');
            
            $this->load->library('form_validation');
    
            $this->form_validation->set_rules('cedula', 'Cedula', 'required');
            $this->form_validation->set_rules('nombre', 'Nombre', 'required');
            $this->form_validation->set_rules('apellido', 'Apellido', 'required');
            $this->form_validation->set_rules('genero', 'Genero', 'required');
            $this->form_validation->set_rules('estcivil', 'Estado Civil', 'required');
            $this->form_validation->set_rules('fchanacimiento', 'Fecha Nacimiento', 'required');
            $this->form_validation->set_rules('celular', 'Celular', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|regex_match[/@.*\.com/]');

            $this->form_validation->set_rules('nacionalidad', 'Nacionalidad', 'required');
            $this->form_validation->set_rules('direccion', 'Dirección', 'required');
            $this->form_validation->set_rules('canton', 'Canton', 'required');
            $this->form_validation->set_rules('parroquia', 'Parroquia', 'required');

            $this->form_validation->set_rules('nveleducativo', 'Nivel Educativo', 'required');
            $this->form_validation->set_rules('tloobtenido', 'Titulo Obtenido', 'required');

            $this->form_validation->set_rules('entbancaria', 'Entidad Bancaria', 'required');
            $this->form_validation->set_rules('entbancarianomb', 'Nombre de Entidad Bancaria', 'required');
            $this->form_validation->set_rules('tpocuenta', 'Tipo de Cuenta', 'required');
            $this->form_validation->set_rules('nocuenta', 'Numero de Cuenta', 'required');

            if($discapacidad == 'si'){
                $this->form_validation->set_rules('porcentaje', 'Porcentaje', 'required');
                $this->form_validation->set_rules('noConadis', 'Numero de Conadis', 'required');
            }

            $this->form_validation->set_rules('archivo', 'Archivo', 'callback_validar_archivo');
                    
            $mensajes = array(
                'required' => 'El campo %s es obligatorio.',
                'regex_match' => 'El campo %s debe contener el símbolo @ y .com.'
            );
        
            $this->form_validation->set_message($mensajes);
        
            if ($this->form_validation->run() == FALSE) {
                $errors = array(
                    'cedula' => form_error('cedula'),
                    'nombre' => form_error('nombre'),
                    'apellido' => form_error('apellido'),
                    'genero' => form_error('genero'),
                    'estcivil' => form_error('estcivil'),
                    'fchanacimiento' => form_error('fchanacimiento'),
                    'celular'=> form_error('celular'),
                    'email'=> form_error('email'),
                    'nacionalidad'=> form_error('nacionalidad'),
                    'direccion'=> form_error('direccion'),
                    'canton'=> form_error('canton'),
                    'parroquia'=> form_error('parroquia'),
                    'nveleducativo'=> form_error('nveleducativo'),
                    'tloobtenido'=> form_error('tloobtenido'),
                    'entbancaria'=> form_error('entbancaria'),
                    'entbancarianomb'=> form_error('entbancarianomb'),
                    'tpocuenta'=> form_error('tpocuenta'),
                    'nocuenta'=> form_error('nocuenta'),
                    'porcentaje'=> form_error('porcentaje'),
                    'noConadis'=> form_error('noConadis'),
                    'archivo'=> form_error('archivo')
                );
        
                echo json_encode(array('error' => true, 'mensaje' => $errors));
                exit();
            }else{
                $cedula = $this->input->post('cedula');
                $nombre = $this->input->post('nombre');
                $apellido = $this->input->post('apellido');
                $genero = $this->input->post('genero');
                $estcivil = $this->input->post('estcivil');
                $fchanacimiento = $this->input->post('fchanacimiento');
                $telefono = $this->input->post('telefono');
                $movil1 = $this->input->post('celular');
                $movil2 = $this->input->post('celular2');
                $email = $this->input->post('email');
                $nacionalidad = $this->input->post('nacionalidad');
                $direccion = $this->input->post('direccion');
                $canton = $this->input->post('canton');
                $cantonstr = $this->input->post('cantonstr');
                $parroquia = $this->input->post('parroquia');
                $parroquiastr = $this->input->post('parroquiastr');
                $nveleducativo = $this->input->post('nveleducativo');
                $tloobtenido = $this->input->post('tloobtenido');
                $entbancaria = $this->input->post('entbancaria');
                $entbancariastr = $this->input->post('entbancariastr');
                $entbancarianomb = $this->input->post('entbancarianomb');
                $tpocuenta = $this->input->post('tpocuenta');
                $nocuenta = $this->input->post('nocuenta');
                $discapacidad = $this->input->post('discapacidad');
                $porcdiscapacidad = $this->input->post('porcdiscapacidad');
                $noconadis = $this->input->post('noconadis');
                                
                $new_name = date('Ymdhis');
                
                $config['file_name'] = $new_name;
                $config['upload_path'] = './uploads/';
                $config['allowed_types'] = 'pdf';
                $config['max_size'] = 2048;
                $config['max_width'] = 2048;
                $config['max_height'] = 2048;

                $this->upload->initialize($config);
                
                $ruta_almacenamiento=NULL;

                if (!$this->upload->do_upload('archivo')) {
                    //$data['aviso'] = array('error' => $this->upload->display_errors());
                    $error = $this->upload->display_errors();

                    if (strpos($error, 'exceeds the maximum allowed size') !== FALSE) {
                        //echo json_encode(['error' => true, 'mensaje' => 'Error: El archivo excede el tamaño permitido (2 MB)']);
                        echo json_encode(['error' => true, 'mensaje' => ['file' => 'Error: El archivo excede el tamaño permitido (2 MB)']]);
                    } else {
                        // Verificar si el error es debido al tipo de archivo no permitido
                        if (strpos($error, 'The filetype you are attempting to upload is not allowed') !== FALSE) {
                            echo json_encode(['error' => true, 'mensaje' => ['file' => 'Error: Tipo de archivo no permitido. Por favor, sube un archivo PDF.']]);
                        } else {
                            //echo json_encode(['error' => true, 'mensaje' => 'Error al subir el archivo: ' . $error]);
                            echo json_encode(['error' => true, 'mensaje' => ['file' => 'Error al subir el archivo: ' . $error]]);
                        }
                    }
                } else {
                    $subida = $this->upload->data();
                    $foto = $new_name . $subida['file_ext'];
                    $ruta_almacenamiento = $config['upload_path'] . $foto;
                    //La siguiente llamada funciona correctamente, la uso para otras funciones.
                    //$this->Consultas_m->update_tabla($tabla, $campo, $foto, $id);
                    
                    $this->guardarForm($cedula,$apellido,$nombre,$fchanacimiento,$genero,$estcivil,
                    $email,$telefono,$movil1,$movil2,$nacionalidad,$direccion,$canton,$cantonstr,$parroquia,
                    $parroquiastr,$nveleducativo,$tloobtenido,$entbancaria,$entbancariastr,$entbancarianomb,
                    $tpocuenta,$nocuenta,$discapacidad,$porcdiscapacidad,$noconadis,$ruta_almacenamiento);
                    //echo json_encode(['success' => true, 'mensaje' => 'Formulario procesado con éxito', 'data' => $ruta_almacenamiento]);
                    echo json_encode(['success' => true, 'mensaje' => ['Ok' => 'Formulario procesado con éxito', 'data' => $ruta_almacenamiento]]);
                }
            }
            /**/
        }
    }


    public function hashpass($pass){
		$opciones = [
			'cost' => 12,
		];
		return password_hash($pass, PASSWORD_BCRYPT, $opciones);
	}

    public function guardarForm($cedula,$apellido,$nombre,$fchanacimiento,$genero,$estcivil,
	$email,$telefono,$movil1,$movil2,$nacionalidad,$direccion,$canton,$cantonstr,$parroquia,
	$parroquiastr,$nveleducativo,$tloobtenido,$entbancaria,$entbancariastr,$entbancarianomb,
	$tpocuenta,$nocuenta,$discapacidad,$porcdiscapacidad,$noconadis,$ruta_almacenamiento){
		$movil1new = ($movil1 != "") ? $movil1 : NULL; 
		$movil2new = ($movil2 != "") ? " / ".$movil2 : NULL;
		
		$AddEmp=array(
			"tbl_empleado_cedula"=>$cedula,
			"tbl_empleado_cdlaizq"=>substr($cedula, -6),
			"tbl_empleado_apellnomb"=>strtoupper($apellido." ".$nombre),
			"tbl_empleado_apellido"=>strtoupper($apellido),
			"tbl_empleado_nombres"=>strtoupper($nombre),
			"tbl_empleado_fchanac"=>$fchanacimiento,
			"tbl_empleado_gnro"=>strtoupper($genero),
			"tbl_empleado_estcivil"=>strtoupper($estcivil),
			"tbl_empleado_email"=>$email,
			"tbl_empleado_tlfnoConv"=>$telefono,
			"tbl_empleado_tlfnoCelar"=>$movil1new . $movil2new,
			"tbl_empleado_nacionalidad"=>strtoupper($nacionalidad),
			"tbl_empleado_direccion"=>strtoupper($direccion),
			"tbl_empleado_canton"=>$canton,
			"tbl_empleado_cantonstr"=>strtoupper($cantonstr),
			"tbl_empleado_parroquia"=>$parroquia,
			"tbl_empleado_parroquiastr"=>strtoupper($parroquiastr),
			"tbl_empleado_nveledu"=>strtoupper($nveleducativo),
			"tbl_empleado_tloobt"=>strtoupper($tloobtenido),
			"tbl_empleado_entbcrbanco"=>$entbancaria,
			"tbl_empleado_entbcrbancostr"=>strtoupper($entbancariastr),
			"tbl_empleado_entidadbancaria"=>strtoupper($entbancarianomb),
			"tbl_empleado_tpocuenta"=>strtoupper($tpocuenta),
			"tbl_empleado_numcuenta"=>$nocuenta,
			"tbl_empleado_discapacidad"=>strtoupper($discapacidad),
			"tbl_empleado_porcdisc"=>$porcdiscapacidad,
			"tbl_empleado_numcndis"=>$noconadis,
			"tbl_empleado_url"=>ltrim($ruta_almacenamiento,'./'),
			"tbl_empleado_fcharegistro"=>date('Y-m-d')
		);
		$id_empleado = $this->InfDomicilio_model->instData($AddEmp);
		if ($id_empleado !== false) {
			$AddUsr=array(
				"username"=>$cedula,
				"nombres"=>$nombre,
				"apellidos"=>$apellido,
				"password"=>md5($cedula),
				"tpo_usuario"=>'usuario',
				"tbl_empleado_idtbl_empleado"=>$id_empleado
			);
			$this->InfDomicilio_model->instDatausr($AddUsr);
		}
	}

    // Función de callback para validar el archivo
    public function validar_archivo($str) {
        // Puedes realizar tu propia lógica de validación aquí
        // Por ejemplo, puedes verificar si el campo de archivo no está vacío

        if (empty($_FILES['archivo']['name'])) {
            $this->form_validation->set_message('validar_archivo', 'El campo de archivo es obligatorio.');
            return FALSE;
        }

        return TRUE;
    }
}
