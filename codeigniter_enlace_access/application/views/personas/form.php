<?php
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Pragma: no-cache");
header("Expires: Sat, 26 Jul 1997 05:00:00 GMT");
?>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="<?php echo base_url();?>bower_components/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?php echo base_url();?>bower_components/bootstrap/css/custom.css">
        
        <!-- bootstrap datepicker -->
        <link rel="stylesheet" href="<?php echo base_url();?>bower_components/bootstrap-datepicker/css/bootstrap-datepicker.min.css">
        
        <link href="<?php echo base_url();?>bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.6/dist/sweetalert2.min.css" rel="stylesheet">
        <!-- Select2 -->
        <link rel="stylesheet" href="<?php echo base_url();?>bower_components/select2/dist/css/select2.min.css">
        
        <title>Hello, world!</title>
        
    </head>
    <body>
        <div class="page">
            <!--<div style="z-index: 2100;" class="fixed-top ml-3 mt-3">
                <button class="btn btn-primary">
                  <i class="fas fa-plus"></i> Añadir
                </button>
            </div>-->
            <a href="../../" class="home-btn">
                <i style="font-size: 2em; color: #ffffff;" class="fa fa-home"></i>
            </a>
            <div id="header-box">
                <div class="container center-both">
                    <img class="img-fluid" src="https://www.cne.gob.ec/wp-content/uploads/2023/02/CNElogoveb-1-e1708103327478.png" alt="Logo" style="width:166px;">
                </div>
            </div>
            <nav id="nav-box" class="navbar navbar-expand-sm bg-light navbar-light border fixed-top">
                <div class="container">
                    <div class="row w-100 justify-content-center align-items-center">
                        <a href="../../">
                            <h1 style="font-family: 'Arial', Sans-serif; font-weight: bold!important; color:#ffffff;" class="m-0">CNE</h1>
                        </a>
                    </div>
                </div> 
            </nav>        
            <section class="">
                <div class="heading-title heading-arrow-bottom">
                    <div class="container">
                        <div class="text-center">
                            <h3 style="font-size: 2.5rem">Información  <span>Personal</span></h3>
                        </div>
                    </div>
                </div>
            </section>
            <form id="miFormulario" enctype="multipart/form-data">
                <section class="py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header"><i style="font-size: 2em;" class="fa fa-address-card" aria-hidden="true"></i></div>
                                    <div class="card-body">
                                        <div class="form-row">
                                          <div class="form-group col-6">
                                                <label for="cedula">Cedula</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txtcedula">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-sort-numeric-desc"></i></span>
                                                    </div>
                                                </div>
                                                <div id="errorCedula" class="alert alert-danger" role="alert"></div>
                                          </div>
                                          <div class="form-group col-6"></div>
                                          <div class="form-group col-6">
                                                <label for="apellido">Apellidos</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txtapellido">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                                    </div>
                                                </div>
                                          </div>
                                          <div class="form-group col-6">
                                                <label for="nombre">Nombres</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txtnombre">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                                    </div>
                                                </div>
                                          </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-4">
                                                <label for="genero">Genero</label>
                                                <select class="form-control" id="selectGenero">
                                                  <option disabled selected>Seleccionar...</option>
                                                  <option>Hombre</option>
                                                  <option>Mujer</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="genero">Estado Civil</label>
                                                <select class="form-control" id="selectEstCivil">
                                                  <option disabled selected>Seleccionar...</option>
                                                  <option>Soltero/A</option>
                                                  <option>Casado/A</option>
                                                  <option>Divorciado/A</option>
                                                  <option>Union de Hecho/A</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="fNacimiento">Fecha de Nacimiento</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control datepicker" id="txtedad">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-4">
                                                <label for="telefono">Telefono</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txttelefono">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="celular">Celular 1</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txtcel1">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-mobile"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="celular">Celular 2</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txtcel2">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-mobile"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                          <label for="email">Email</label>
                                          <div class="input-group">
                                                <input type="text" class="form-control" id="txtemail">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-envelope-o"></i></span>
                                                </div>
                                           </div>
                                        </div>

                                        <div class="divider divider-border divider-center divider-color">
                                            <!-- divider -->
                                            <i class="fa fa-map-marker"></i>
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-4">
                                                <label for="genero">Nacionalidad</label>
                                                <select class="form-control" id="selectNacionalidad">
                                                  <option disabled selected>Seleccionar...</option>
                                                  <option>Ecuatoriana</option>
                                                  <option>Extranjera</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-8">
                                                <label for="direccion">Dirección</label>
                                                <div class="input-group">
                                                        <input type="text" class="form-control" id="txtdireccion">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i class="fa fa-map-marker"></i></span>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="canton">Cantón</label>
                                                <select style="width:100%;" id="selectProvincia" class="form-control">
                                                    <option disabled selected>Seleccionar...</option>
                                                    <?php foreach ($cantones as $canton): ?>
                                                        <option value="<?= $canton['id']; ?>"><?= $canton['canton']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="parroquia">Parroquia</label>
                                                <select style="width:100%;" id="selectParroquia" class="form-control">
                                                    <option disabled selected>Seleccionar...</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="py-2">
                    <div class="heading-title heading-arrow-bottom">
                        <div class="container">
                            <div class="text-center">
                                <h3 style="font-size: 2.5rem">Información  <span>Universitria</span></h3>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header"><i style="font-size: 2em;" class="fa fa-university" aria-hidden="true"></i></div>
                                    <div class="card-body">
                                        <div class="form-row">
                                          <div class="form-group col-6">
                                                <label for="NEducativo">Nivel Educativo</label>
                                                <select class="form-control" id="txtneducativo">
                                                  <option disabled selected>Seleccionar...</option>
                                                  <option>Básica Elemental</option>
                                                  <option>Bachillerato</option>
                                                  <option>Técnico</option>
                                                  <option>Tecnológico</option>
                                                  <option>Tercer Nivel</option>
                                                  <option>Cuarto Nivel</option>
                                                </select>
                                          </div>
                                          <div class="form-group col-6">
                                            <label for="inputEmail4">Titulo Obtenido</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="txttloobtenido">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-file"></i></span>
                                                </div>
                                            </div>
                                          </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="py-2">
                    <div class="heading-title heading-arrow-bottom">
                        <div class="container">
                            <div class="text-center">
                                <h3 style="font-size: 2.5rem">Información  <span>Bancaria</span></h3>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header"><i style="font-size: 2em;" class="fa fa-usd" aria-hidden="true"></i></div>
                                    <div class="card-body">
                                        <div class="form-row">
                                            <div class="form-group col-4">
                                                <label for="genero">Entidad Bancaria</label>
                                                <select class="form-control" id="selectGenero">
                                                  <option disabled selected>Seleccionar...</option>
                                                  <option>Banco</option>
                                                  <option>Cooperativa</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="genero">Tipo de Cuenta</label>
                                                <select class="form-control" id="selectGenero">
                                                  <option disabled selected>Seleccionar...</option>
                                                  <option>Cuenta de Ahorro</option>
                                                  <option>Cuenta Corriente</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="genero">No. de Cuenta</label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txtnocuenta">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-sort-numeric-desc"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="py-2">
                    <div class="heading-title heading-arrow-bottom">
                        <div class="container">
                            <div class="text-center">
                                <h3 style="font-size: 2.5rem">Información  <span>Adicional</span></h3>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header"><i style="font-size: 2em;" class="fa fa-info-circle" aria-hidden="true"></i></div>
                                    <div class="card-body">
                                        <div class="form-row">
                                          <div class="form-group col-4">
                                                <label for="genero">Discapacidad</label>
                                                <select class="form-control" id="selectGenero">
                                                  <option disabled selected>Seleccionar...</option>
                                                  <option>Si</option>
                                                  <option>No</option>
                                                </select>
                                          </div>
                                          <div class="form-group col-4">
                                            <label for="inputEmail4">Porcentaje</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="txtporcentaje">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-sort-numeric-desc"></i></span>
                                                </div>
                                            </div>
                                          </div>
                                          <div class="form-group col-4">
                                            <label for="inputEmail4">Num. Conadis</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="txtnoconadis">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-sort-numeric-desc"></i></span>
                                                </div>
                                            </div>
                                          </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section style="padding-top: initial !important;" class="py-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header"><h3>Carga de documentos</h3></div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="archivo">Cargar Archivo</label>
                                            <input type="file" class="form-control" name="archivo" id="archivo">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section style="padding-top: initial !important;" class="py-4">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 text-center">
                                <button id="btnEnviar" class="btn btn-primary btn-lg">Registar Datos</button>
                            </div>
                        </div>
                    </div>
                </section>            
            </form>
            <section class="cta bg-blue-grey text-white py-4 border-bottom border-secondary">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6><b>Want more?</b> Exclusive deals, the latest news: Our Newsletter</h6>
                                </li>
                                <li class="list-inline-item">
                                    <button type="button" class="btn btn-outline-info ">Sign UP</button>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
            </section>
            <section class="footer bg-blue-grey text-grey ">
                <div class="container py-5">
                    <div class="row d-flex ">
                        <div class="col-12 col-md-3 col-sm-6 col-xs-6">
                            <h6 class="text-info">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-grey">How it works?</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Get the app</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Terms of Service</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Career</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Press</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Contact</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-md-3 col-sm-6 col-xs-6">
                            <h6 class="text-info">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-grey">How it works?</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Get the app</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Terms of Service</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Career</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Press</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Contact</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-md-3 col-sm-6 col-xs-6">
                            <h6 class="text-info">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-grey">How it works?</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Get the app</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Terms of Service</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Career</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Press</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Contact</a></li>
                            </ul>
                        </div>
                        <div class="col-12 col-md-3 col-sm-6 col-xs-6">
                            <h6 class="text-info">Company</h6>
                            <ul class="list-unstyled">
                                <li><a href="#" class="text-grey">How it works?</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Get the app</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Terms of Service</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Career</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Press</a></li>
                                <div class="mt-2"></div>
                                <li><a href="#" class="text-grey">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="copyright text-center py-3 bg-blue-grey border-top border-secondary">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                © 2019 NextApp. All Rights Reserved
                            </div>
                            <div class="col-md-6">
                                <ul class="list-inline">
                                    <li class="list-inline-item">follow us on :</li>
                                    <li class="list-inline-item"><a href="#" class="text-primary"><i class="fa fa-facebook mr-1"></i>facebook</a></li>
                                    <li class="list-inline-item"><a href="#" class="text-info"><i class="fa fa-twitter mr-1"></i>Twitter</a></li>
                                    <li class="list-inline-item"><a href="#" class="text-danger"><i class="fa fa-youtube mr-1"></i>Youtube</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="<?php echo base_url();?>bower_components/jqueryslim/jquery-3.5.1.slim.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/jquerypopper/popper.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/bootstrap/css/bootstrap.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/jquery-3.7.1/dist/jquery.min.js"></script>
        <!--Datepicker-->
        <script src="<?php echo base_url();?>bower_components/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/bootstrap-datepicker/locales/bootstrap-datepicker.es.min.js"></script>
        <!-- Select2 -->
        <script src="<?php echo base_url();?>bower_components/select2/dist/js/select2.full.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/select2/dist/js/i18n/es.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.6/dist/sweetalert2.all.min.js"></script>
        <script>
            
            jQuery(document).ready(function($){
                $('#selectProvincia').select2();
                $('#selectParroquia').select2();

                $('#selectProvincia').on('change', function() {
                    var id_provincia = $(this).val();
                    $('#selectParroquia').empty();

                    if (id_provincia !== '') {
                        $.ajax({
                            url: '<?= base_url("form/parroquia"); ?>',
                            type: 'post',
                            dataType: 'json',
                            data: {id_provincia: id_provincia},
                            success: function(response) {
                                if (response.length > 0) {
                                    $('#selectParroquia').prop('disabled', false);
                                    $('#selectParroquia').append('<option disabled selected>Seleccionar...</option>');
                                    response.forEach(function(parroquia) {
                                        $('#selectParroquia').append('<option value="' + parroquia.id + '">' + parroquia.parroquia + '</option>');
                                    });
                                    $('#selectParroquia').select2();
                                } else {
                                    $('#selectParroquia').prop('disabled', true);
                                }
                            },
                            error: function(xhr, status, error) {
                                console.error('Error al obtener subcategorías: ' + error);
                            }
                        });
                    } else {
                        $('#selectParroquia').prop('disabled', true);
                    }
                });

                var aboveHeight = $('#header-box').outerHeight();
                $(window).scroll(function(){
                    if ($(window).scrollTop() > aboveHeight){
                        $('#nav-box').addClass('fixed').css('top','0').next().css('margin-top','52px');
                    } else {
                        $('#nav-box').removeClass('fixed').next().css('margin-top','0');
                    }
                });
                
                $('#txtedad').datepicker({
                    //minDate: date,
                    //endDate:date,
                    todayHighlight: true,
                    dateFormat : 'yy-mm-dd',
                    //autoclose: true,
                    language: 'es',
                    firstDay: 1,
                    monthNames: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
                                'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                    dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
                    //format: " yyyy",
                    //viewMode: "years", 
                    //minViewMode: "years"
                }).on('changeDate', function(e){
                    $(this).datepicker('hide');
                });
                
                // Agrega un listener al botón de enviar
                $("#btnEnviar").click(function () {
                    // Previene la acción por defecto del formulario

            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: "btn btn-success",
                    cancelButton: "btn btn-danger mr-3"
                },
                buttonsStyling: false
                });
                swalWithBootstrapButtons.fire({
                title: "¿Estas seguro?",
                text: "¡No podrás revertir esto!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonText: "Sí, aceptar!",
                cancelButtonText: "No, cancel!",
                reverseButtons: true
                }).then((result) => {
                if (result.isConfirmed) {
                    var formData = new FormData();
                    formData.append("cedula", 'dsas');
                    formData.append("nombre", 'dasda');
                    formData.append("apellido", 'dasdas');
                    // Obtener la ruta actual
                    var rutaActual = window.location.href;

                    // Dividir la ruta en segmentos usando "/"
                    var segmentos = rutaActual.split('/');

                    // El token se encuentra en el último segmento
                    var token = segmentos[segmentos.length - 1];
                    var id_list = segmentos[segmentos.length -2];
                    formData.append("token", token);
                    formData.append("id_list",id_list);
                    $.ajax({
                        type: "POST",
                        url: "<?php echo site_url('form/procesarForm'); ?>",
                        data: formData,
                        contentType: false,
                        processData: false,
                        success: function (response) {
                            // Maneja la respuesta del servidor (puede ser un mensaje de éxito, error, etc.)
                            if(response == 1){
                                
                            }else{
                                window.location.replace("error_404.php");
                            }
                        } 
                    });
                    swalWithBootstrapButtons.fire({
                    title: "Enviado!",
                    text: "Tu formulario se envió correctamente.",
                    icon: "success"
                    });
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire({
                    title: "Cancelado",
                    text: "Tu formulario se canceló",
                    icon: "error"
                    });
                }
                });
                    event.preventDefault();
                    
                    // Obtiene los datos del formulario
                    
                });
            });
        </script>
        <script>
        function miFuncion() {
            var rutaActual = window.location.href;
            var formData = new FormData();
                    // Dividir la ruta en segmentos usando "/"
                    var segmentos = rutaActual.split('/');
                    // El token se encuentra en el último segmento
                    var token = segmentos[segmentos.length - 1];
                    var id_list = segmentos[segmentos.length -2];
                    formData.append("token", token);
                    formData.append("id_list",id_list);
                    $.ajax({
                        type: "POST",
                        url: "<?php echo site_url('form/validatedInicio'); ?>",
                        data: formData,
                        contentType: false,
                        processData: false,
                        success: function (response) {
                            console.log("DOM:" + response);
                            if (response == 1) {
                                // Hacer algo si la validación es exitosa
                            } else {
                                // Redirigir a "error_404.php" si la validación falla
                                window.location.replace("error_404.php");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log("Error en la solicitud AJAX: " + textStatus + ", " + errorThrown);
                        }
                    });
                   

            console.log("Entro a la función");
        }

        // Evento que se dispara cuando el DOM ha sido completamente cargado
        document.addEventListener('DOMContentLoaded', function() {
    console.log("El DOM se ha cargado");
    miFuncion();
        });
    </script>
</head>
    </body>
</html>


