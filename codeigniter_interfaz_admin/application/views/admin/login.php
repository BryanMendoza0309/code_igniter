<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>AdminLTE 2 | Log in</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		
		<!-- base_url() = http://localhost/ventas_ci/-->
		
		<!-- Bootstrap 3.3.7 -->
		<link rel="stylesheet" href="<?php echo base_url();?>assets/template/bootstrap/css/bootstrap.min.css">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<?php echo base_url();?>assets/template/font-awesome/css/font-awesome.min.css">
		
		<!-- Theme style -->
		<link rel="stylesheet" href="<?php echo base_url();?>assets/template/dist/css/AdminLTE.min.css">
		
	</head>
	<body class="hold-transition login-page">
		<div class="login-box">
			<div class="login-logo">
				<!--<h2>SISTEMA DE VENTAS</h2>-->
			</div>
			<!-- /.login-logo -->
			<div class="login-box-body">
				<p class="login-box-msg">Introduzca sus datos de ingreso</p>
				<p id="urlbase" style="display:none;"><?php echo base_url(); ?></p>
				<!--action="<?php //echo base_url(); ?>auth/login"-->
				<form  method="post" id="form_login" name="form_login">
					<div class="form-group has-feedback">
						<input type="text" class="form-control" placeholder="Usuario" name="username" id="username">
						<span class="glyphicon glyphicon-user form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input type="password" class="form-control" placeholder="Password" name="password" id="password">
						<span class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<button type="button" id="btn-primary" class="btn btn-primary btn-block btn-flat">Sign In</button>
						</div>
						<!-- /.col -->
					</div>
					<div id="rstLogin" style="margin-top: 15px; display:none;" class="callout callout-danger text-center"><p id="errorUsuario"></p></div>
				</form>
				
			</div>
			<!-- /.login-box-body -->
		</div>
		<!-- /.login-box -->
		
		<!-- jQuery 3 -->
		<script src="<?php echo base_url();?>assets/template/jquery/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="<?php echo base_url();?>assets/template/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#username').on('input', function (e) {
					if (!/^[a-z0-9áéíóúüñ_]*$/i.test(this.value)){
						this.value = this.value.replace(/[^a-z0-9áéíóúüñ]+/ig,"");
					}
				});
				
				$('#btn-primary').click(function(){
					var var_username = $("#username").val();
					var var_password = $("#password").val();
					if(var_username!="" && var_password!=""){
						$.ajax({
							method:"POST",
							url: '<?php echo base_url(); ?>login/auth',
							dataType: 'json',
							data: new FormData(form_login),
							contentType:false,
							cache:false,
							processData:false,
							success: function (response) {
								// Maneja la respuesta del servidor (puede ser un mensaje de éxito, error, etc.)
								//console.log(response.mensaje.err);
								if (response.error) {
									console.log(response.mensaje.err);
									// Muestra los mensajes de error en tu interfaz
									if (response.mensaje.err !== undefined) {
										$('#errorUsuario').text(response.mensaje.err);
										$('#rstLogin').show();
									}
								} else {
									// Si no hay errores, puedes hacer algo más, por ejemplo, redirigir o mostrar un mensaje de éxito
									console.log('Formulario procesado con éxito');
									window.location.href = response.mensaje.url;
								}
							},
							xhr: function(){ 
								// get the native XmlHttpRequest object 
								var xhr = $.ajaxSettings.xhr() ; 
								// set the onload event handler 
								xhr.upload.onload = function(){ 
									console.log('DONE!');
								}; 
								return xhr; 
							},
							error: function (error) {
								console.error("Error al procesar el formulario: ", error);
							}
						});
					}else{
						alert("No se permiten campos vacios");
					}
				});
			});
		</script>	
	</body>
</html>