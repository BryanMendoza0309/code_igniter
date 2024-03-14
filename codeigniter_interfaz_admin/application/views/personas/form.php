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
    <style>
        .asterRed{
            color:red;
        };
        .asterBlue{
            color:blue;
        }
    </style>
    <body>
        <div class="page">
            <!--<div style="z-index: 2100;" class="fixed-top ml-3 mt-3">
                <button class="btn btn-primary">
                  <i class="fas fa-plus"></i> Añadir
                </button>
            </div>-->
            <!--<a href="../../" class="home-btn">
                <i style="font-size: 2em; color: #ffffff;" class="fa fa-home"></i>
            </a>-->
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
                                                <label for="cedula">Cedula</label> <span  style="color: red;">*</span></label>
                                                <div class="input-group">
                                                    <input type="text" maxlength="10" class="soloNumeros form-control" id="txtcedula">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-sort-numeric-desc"></i></span>
                                                    </div>
                                                </div>
                                                <div style="display:none;" id="errorCedula" class="alert alert-danger" role="alert"></div>
                                          </div>
                                          <div class="form-group col-6"></div>
                                          <div class="form-group col-6">
                                                <label for="apellido">Apellidos</label> <span  style="color: red;">*</span></label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txtapellido">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                                    </div>
                                                </div>
                                                <div style="display:none;" id="errorApellido" class="alert alert-danger" role="alert"></div>
                                          </div>
                                          <div class="form-group col-6">
                                                <label for="nombre">Nombres</label> <span  style="color: red;">*</span></label>
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="txtnombre">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-user"></i></span>
                                                    </div>
                                                </div>
                                                <div style="display:none;" id="errorNombre" class="alert alert-danger" role="alert"></div>
                                          </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-4">
                                                <label for="genero">Genero</label> <span  style="color: red;">*</span></label>
                                                <select class="form-control" id="selectGenero">
                                                  <option value="" disabled selected>Seleccionar...</option>
                                                  <option value="Hombre">Hombre</option>
                                                  <option value="Mujer">Mujer</option>
                                                </select>
                                                <div style="display:none;" id="errorGenero" class="alert alert-danger" role="alert"></div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="genero">Estado Civil</label> <span  style="color: red;">*</span></label>
                                                <select class="form-control" id="selectEstCivil">
                                                  <option value="" disabled selected>Seleccionar...</option>
                                                  <option value="Soltero/A">Soltero/A</option>
                                                  <option value="Casado/A">Casado/A</option>
                                                  <option value="Divorciado/A">Divorciado/A</option>
                                                  <option value="Union de Hecho/A">Union de Hecho/A</option>
                                                </select>
                                                <div style="display:none;" id="errorEstCivil" class="alert alert-danger" role="alert"></div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="fNacimiento">Fecha de Nacimiento</label> <span  style="color: red;">*</span></label>
                                                <div class="input-group">
                                                    <input type="text" readonly class="form-control datepicker" id="txtedad">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                                                    </div>
                                                </div>
                                                <div style="display:none;" id="errorFNacimiento" class="alert alert-danger" role="alert"></div>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-4">
                                                <label for="telefono">Telefono</label>
                                                <div class="input-group">
                                                    <input type="text" class="soloNumeros form-control" id="txttelefono">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-phone"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="celular">Celular 1</label> <span  style="color: red;">*</span></label>
                                                <div class="input-group">
                                                    <input type="text" maxlength="10" class="soloNumeros form-control" id="txtcel1">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-mobile"></i></span>
                                                    </div>
                                                </div>
                                                <div style="display:none;" id="errorMovil" class="alert alert-danger" role="alert"></div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="celular">Celular 2</label>
                                                <div class="input-group">
                                                    <input type="text" maxlength="10" class="soloNumeros form-control" id="txtcel2">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-mobile"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                          <label for="email">Email</label> <span  style="color: red;">*</span></label>
                                          <div class="input-group">
                                                <input type="text" class="form-control" id="txtemail">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-envelope-o"></i></span>
                                                </div>
                                           </div>
                                           <div style="display:none;" id="errorEmail" class="alert alert-danger" role="alert"></div>
                                        </div>

                                        <div class="divider divider-border divider-center divider-color">
                                            <!-- divider -->
                                            <i class="fa fa-map-marker"></i>
                                        </div>

                                        <div class="form-row">
                                            <div class="form-group col-4">
                                                <label for="genero">Nacionalidad</label> <span  style="color: red;">*</span></label>
                                                <select class="form-control" id="selectNacionalidad">
                                                  <option value="" disabled selected>Seleccionar...</option>
                                                  <option value="Ecuatoriana">Ecuatoriana</option>
                                                  <option value="Extranjera">Extranjera</option>
                                                </select>
                                                <div style="display:none;" id="errorNacionalidad" class="alert alert-danger" role="alert"></div>
                                            </div>
                                            <div class="form-group col-8">
                                                <label for="direccion">Dirección</label> <span  style="color: red;">*</span></label>
                                                <div class="input-group">
                                                        <input type="text" class="form-control" id="txtdireccion">
                                                        <div class="input-group-append">
                                                            <span class="input-group-text"><i class="fa fa-map-marker"></i></span>
                                                        </div>
                                                </div>
                                                <div style="display:none;" id="errorDireccion" class="alert alert-danger" role="alert"></div>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="canton">Cantón</label> <span  style="color: red;">*</span></label>
                                                <select style="width:100%;" id="selectProvincia" class="form-control">
                                                    <option value="" disabled selected>Seleccionar...</option>
                                                    <?php foreach ($cantones as $canton): ?>
                                                        <option value="<?= $canton['id']; ?>"><?= $canton['canton']; ?></option>
                                                    <?php endforeach; ?>
                                                </select>
                                                <div style="display:none;" id="errorCanton" class="alert alert-danger" role="alert"></div>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="parroquia">Parroquia</label> <span  style="color: red;">*</span></label>
                                                <select style="width:100%;" id="selectParroquia" class="form-control">
                                                    <option value="" disabled selected>Seleccionar...</option>
                                                </select>
                                                <div style="display:none;" id="errorParroquia" class="alert alert-danger" role="alert"></div>
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
                                                <label for="NEducativo">Nivel Educativo</label> <span  style="color: red;">*</span></label>
                                                <select class="form-control" id="txtneducativo">
                                                  <option value="" disabled selected>Seleccionar...</option>
                                                  <option value="Básica Elemental">Básica Elemental</option>
                                                  <option value="Bachillerato">Bachillerato</option>
                                                  <option value="Técnico">Técnico</option>
                                                  <option value="Tecnológico">Tecnológico</option>
                                                  <option value="Tercer Nivel">Tercer Nivel</option>
                                                  <option value="Cuarto Nivel">Cuarto Nivel</option>
                                                </select>
                                                <div style="display:none;" id="errorNvelEducativo" class="alert alert-danger" role="alert"></div>
                                          </div>
                                          <div class="form-group col-6">
                                            <label for="inputEmail4">Titulo Obtenido</label> <span  style="color: red;">*</span></label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="txttloobtenido">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-file"></i></span>
                                                </div>
                                            </div>
                                            <div style="display:none;" id="errorTloObtenido" class="alert alert-danger" role="alert"></div>
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
                                                <label for="EntBancaria">Entidad Bancaria</label> <span  style="color: red;">*</span></label>
                                                <select class="form-control" id="selectEntBancaria">
                                                  <option value="" disabled selected>Seleccionar...</option>
                                                  <option value="Banco">Banco</option>
                                                  <option value="Cooperativa">Cooperativa</option>
                                                </select>
                                                <div style="display:none;" id="errorEntBancaria" class="alert alert-danger" role="alert"></div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="TpoCuenta">Tipo de Cuenta</label> <span  style="color: red;">*</span></label>
                                                <select class="form-control" id="selectTpoCuenta">
                                                  <option value="" disabled selected>Seleccionar...</option>
                                                  <option value="Cuenta de Ahorro">Cuenta de Ahorro</option>
                                                  <option value="Cuenta Corriente">Cuenta Corriente</option>
                                                </select>
                                                <div style="display:none;" id="errorTpoCuenta" class="alert alert-danger" role="alert"></div>
                                            </div>
                                            <div class="form-group col-4">
                                                <label for="NoCuenta">No. de Cuenta</label> <span  style="color: red;">*</span></label>
                                                <div class="input-group">
                                                    <input type="text" class="soloNumeros form-control" id="txtnocuenta">
                                                    <div class="input-group-append">
                                                        <span class="input-group-text"><i class="fa fa-sort-numeric-desc"></i></span>
                                                    </div>
                                                </div>
                                                <div style="display:none;" id="errorNoCuenta" class="alert alert-danger" role="alert"></div>
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
                                                <label for="genero">Discapacidad</label> <span  class="asterRed">*</span></label>
                                                <select class="form-control" id="selectDiscapacidad">
                                                  <option value="" disabled selected>Seleccionar...</option>
                                                  <option value="si">Si</option>
                                                  <option value="no">No</option>
                                                </select>
                                          </div>
                                          <div class="form-group col-4">
                                            <label for="inputEmail4">Porcentaje</label> <span id="asterisco1" style="color: red;">*</span>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="txtporcentaje"> 
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-sort-numeric-desc"></i></span>
                                                </div>
                                            </div>
                                            <div style="display:none;" id="errorPorcentaje" class="alert alert-danger" role="alert"></div>
                                          </div>
                                          <div class="form-group col-4">
                                            <label for="inputEmail4">Num. Conadis</label> <span id="asterisco2" style="color: red;">*</span>
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="txtnoconadis">
                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="fa fa-sort-numeric-desc"></i></span>
                                                </div>
                                            </div>
                                            <div style="display:none;" id="errorNoConadis" class="alert alert-danger" role="alert"></div>
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
                                            <label for="archivo">Cargar Archivo</label> <span  style="color: red;">*</span></label>
                                            <input type="file" class="form-control" name="archivo" id="archivo">
                                        </div>
                                        <div style="display:none;" id="errorArchivo" class="alert alert-danger" role="alert"></div>
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
                                    <a href="<?php echo base_url(); ?>usuario" type="button" class="btn btn-outline-info ">Sign UP</a>
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
</body>
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="<?php echo base_url();?>bower_components/jqueryslim/jquery-3.5.1.slim.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/jquerypopper/popper.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/bootstrap/js/bootstrap.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/jquery-3.7.1/dist/jquery.min.js"></script>
        <!--Datepicker-->
        <script src="<?php echo base_url();?>bower_components/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/bootstrap-datepicker/locales/bootstrap-datepicker.es.min.js"></script>
        <!-- Select2 -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.10.6/dist/sweetalert2.all.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/select2/dist/js/select2.full.min.js"></script>
        <script src="<?php echo base_url();?>bower_components/select2/dist/js/i18n/es.js"></script>
        <script>
            jQuery(document).ready(function($){
                $('.datepicker').datepicker({
                    format: 'dd/mm/yyyy',
                    endDate: '-18y', // Restringe las fechas a personas mayores de 18 años
                    language: 'es', // Establece el idioma del selector de fechas
                    autoclose: true // Cierra automáticamente el selector después de seleccionar una fecha
                });
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
                                    $('#selectParroquia').append('<option value="0" disabled selected>Seleccionar...</option>');
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

                $('.soloNumeros').on('input', function () { 
                    this.value = this.value.replace(/[^0-9]/g,'');
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
                var optionSelected;
                document.getElementById('selectDiscapacidad').addEventListener('change', function() {
                     optionSelected = this.value;
                    // Selecciona el elemento del asterisco
                    var asterisco1 = document.getElementById('asterisco1');
                    var asterisco2 = document.getElementById('asterisco2');
                    var porcentajeInput = document.getElementById('txtporcentaje');
                    var noConadisInput = document.getElementById('txtnoconadis');

                    if (optionSelected === 'no') {
                        porcentajeInput.value = '';
                        noConadisInput.value = '';
                        porcentajeInput.disabled = true;
                        noConadisInput.disabled = true;
                        asterisco1.style.color = 'white';
                        asterisco2.style.color = 'white';
                    } else {
                        porcentajeInput.disabled = false;
                        noConadisInput.disabled = false;
                        asterisco1.style.color = 'red';
                        asterisco2.style.color = 'red';
                    }
                });
                
                // Agrega un listener al botón de enviar
                $("#btnEnviar").click(function () {
                    
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
                    var formData = new FormData($("#miFormulario")[0]);
                    formData.append("cedula", $("#txtcedula").val());
                    formData.append("nombre", $("#txtnombre").val());
                    formData.append("apellido", $("#txtapellido").val());
                    formData.append("genero", $('#selectGenero :selected').val());
                    formData.append("estcivil", $("#selectEstCivil :selected").val());
                    formData.append("fchanacimiento", $("#txtedad").val());
                    formData.append("telefono", $("#txttelefono").val());
                    formData.append("celular", $("#txtcel1").val());
                    formData.append("celular2", $("#txtcel2").val());
                    formData.append("email", $("#txtemail").val());
                    
                    formData.append("nacionalidad", $("#selectNacionalidad :selected").val());
                    formData.append("direccion", $("#txtdireccion").val());
                    formData.append("canton", $("#selectProvincia :selected").val());
                    formData.append("parroquia", $("#selectParroquia :selected").val());

                    formData.append("nveleducativo", $("#txtneducativo :selected").val());
                    formData.append("tloobtenido", $("#txttloobtenido").val());

                    formData.append("entbancaria", $("#selectEntBancaria :selected").val());
                    formData.append("tpocuenta", $("#selectTpoCuenta :selected").val());
                    formData.append("nocuenta", $("#txtnocuenta").val());

                    formData.append("discapacidad", $("#selectDiscapacidad :selected").val());
                    if(optionSelected){
                        formData.append("porcdiscapacidad", $("#txtporcentaje").val());
                        formData.append("noconadis", $("#txtnoconadis").val());
                    }
                    $("#errorCedula").hide();
                    $("#errorNombre").hide();
                    $("#errorApellido").hide();
                    $("#errorGenero").hide();
                    $("#errorEstCivil").hide();
                    $("#errorFNacimiento").hide();
                    $("#errorMovil").hide();
                    $("#errorEmail").hide();
                    $("#errorNacionalidad").hide();
                    $("#errorDireccion").hide();
                    $("#errorCanton").hide();
                    $("#errorParroquia").hide();
                    $("#errorNvelEducativo").hide();
                    $("#errorTloObtenido").hide();
                    $("#errorEntBancaria").hide();
                    $("#errorTpoCuenta").hide();
                    $("#errorNoCuenta").hide();
                    $("#errorPorcentaje").hide();
                    $("#errorNoConadis").hide();
                    $("#errorArchivo").hide();
                    // Envía los datos al controlador de CodeIgniter usando Ajax
                    $.ajax({
                        type: "POST",
                        url: "<?php echo site_url('form/procesarForm'); ?>",
                        data: formData,
                        contentType: false,
                        processData: false,
                        success: function (response) {
                            // Maneja la respuesta del servidor (puede ser un mensaje de éxito, error, etc.)
                            console.log(response);
                             // Maneja la respuesta del servidor
                            var data = JSON.parse(response);
                            var tiempoError = 30000;
                            if (data.error) {
                                swalWithBootstrapButtons.fire({
                                title: "Cancelado",
                                text: "Tiene que completar los campos requeridos",
                                icon: "error"
                                });
                                // Muestra los mensajes de error en tu interfaz
                                if (data.mensaje.cedula) {
                                    $('#errorCedula').html(data.mensaje.cedula);
                                    $("#errorCedula").show();
                                }
                                if (data.mensaje.nombre) {
                                    $('#errorNombre').html(data.mensaje.nombre);
                                    $("#errorNombre").show();
                                }
                                if (data.mensaje.apellido) {
                                    $('#errorApellido').html(data.mensaje.apellido);
                                    $("#errorApellido").show();
                                }
                                if (data.mensaje.genero) {
                                    $('#errorGenero').html(data.mensaje.genero);
                                    $("#errorGenero").show();
                                }
                                if (data.mensaje.estcivil) {
                                    $('#errorEstCivil').html(data.mensaje.estcivil);
                                    $("#errorEstCivil").show();
                                }
                                if (data.mensaje.fchanacimiento) {
                                    $('#errorFNacimiento').html(data.mensaje.fchanacimiento);
                                    $("#errorFNacimiento").show();
                                }
                                if (data.mensaje.celular) {
                                    $('#errorMovil').html(data.mensaje.celular);
                                    $("#errorMovil").show();
                                }
                                if (data.mensaje.email) {
                                    $('#errorEmail').html(data.mensaje.email);
                                    $("#errorEmail").show();
                                }
                                if (data.mensaje.nacionalidad) {
                                    $('#errorNacionalidad').html(data.mensaje.nacionalidad);
                                    $("#errorNacionalidad").show();
                                }
                                if (data.mensaje.direccion) {
                                    $('#errorDireccion').html(data.mensaje.direccion);
                                    $("#errorDireccion").show();
                                }
                                if (data.mensaje.canton) {
                                    $('#errorCanton').html(data.mensaje.canton);
                                    $("#errorCanton").show();
                                }
                                if (data.mensaje.parroquia) {
                                    $('#errorParroquia').html(data.mensaje.parroquia);
                                    $("#errorParroquia").show();
                                }
                                if (data.mensaje.nveleducativo) {
                                    $('#errorNvelEducativo').html(data.mensaje.nveleducativo);
                                    $("#errorNvelEducativo").show();
                                }
                                if (data.mensaje.tloobtenido) {
                                    $('#errorTloObtenido').html(data.mensaje.tloobtenido);
                                    $("#errorTloObtenido").show();
                                }
                                if (data.mensaje.entbancaria) {
                                    $('#errorEntBancaria').html(data.mensaje.entbancaria);
                                    $("#errorEntBancaria").show();
                                }
                                if (data.mensaje.tpocuenta) {
                                    $('#errorTpoCuenta').html(data.mensaje.tpocuenta);
                                    $("#errorTpoCuenta").show();
                                }
                                if (data.mensaje.nocuenta) {
                                    $('#errorNoCuenta').html(data.mensaje.nocuenta);
                                    $("#errorNoCuenta").show();
                                }
                                if (data.mensaje.porcentaje) {
                                    $('#errorPorcentaje').html(data.mensaje.porcentaje);
                                    $("#errorPorcentaje").show();
                                }
                                if (data.mensaje.noConadis) {
                                    $('#errorNoConadis').html(data.mensaje.noConadis);
                                    $("#errorNoConadis").show();
                                }
                                if (data.mensaje.archivo) {
                                    $('#errorArchivo').html(data.mensaje.archivo);
                                    $("#errorArchivo").show();
                                }
                            } else {
                                // Si no hay errores, puedes hacer algo más, por ejemplo, redirigir o mostrar un mensaje de éxito
                                console.log('Formulario procesado con éxito');
                                swalWithBootstrapButtons.fire({
                                title: "Enviado!",
                                text: "Tu formulario se envió correctamente.",
                                icon: "success",
                                showCancelButton: false,
                                confirmButtonText: "OK",
                                confirmButtonClass: "btn btn-success",
                                buttonsStyling: false
                                }).then((result) =>{
                                    if(result.isConfirmed){
                                        window.location.reload();
                                        window.scrollTo(0, 0);
                                    }
                                });
                            }
                        },
                        error: function (error) {
                            console.error("Error al procesar el formulario: ", error);
                        }
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

                    // var genero=$('#selectGenero :selected').val();
                    // alert("gen"+genero+" "+"cedu"+$("#txtnombre").val());
                    // Previene la acción por defecto del formulario

        </script>
</html>


