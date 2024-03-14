<?php 
	$url=$this->uri->uri_string();
?>
    <header class="main-header">
		<div class="rst_sessionact"></div>
		<!-- Logo -->
		<a href="../../index2.html" class="logo">
			<!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>CNE</b></span>
			<!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b></b> CNE</span>
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top">
			<!-- Sidebar toggle button-->
			<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
				<span class="sr-only">Toggle navigation </span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
				  
				  <!-- User Account: style can be found in dropdown.less -->
				  <li class="dropdown user user-menu">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					  <img src="<?php echo base_url();?>img/logomp.jpg" class="user-image" alt="User Image">
					  <span class="hidden-xs"><?php if(isset($_SESSION['idusuario'])){echo ucfirst(strtok($_SESSION['nombres'], ' '))." ".ucfirst(strtok($_SESSION['apellidos'], ' '));} ?></span>
					</a>
					<ul class="dropdown-menu">
					  <!-- User image -->
					  <li class="user-header">
						<img src="<?php echo base_url();?>img/logomp.jpg" class="img-circle" alt="User Image">

						<p>
						  <?php if(isset($_SESSION['idusuario'])){echo ucfirst(strtok($_SESSION['nombres'], ' '))." ".ucfirst(strtok($_SESSION['apellidos'], ' '));} ?>
						  <small>CNE<?php //echo $_SESSION['tipouser']; ?></small>
						</p>
					  </li>
					  
					  <!-- Menu Footer-->
					  <li class="user-footer">
						<div class="pull-left">
						  <!--<a href="#" class="btn btn-default btn-flat">Profile</a>
							-->
						</div>
						<div class="pull-right">
						  <a href="<?php echo base_url(); ?>login/logout" class="btn btn-default btn-flat">Salir</a>
						</div>
					  </li>
					</ul>
				  </li>
				  
				</ul>
			</div>
		</nav>
	</header>

  <!-- =============================================== -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<!-- Sidebar user panel -->
			<div class="user-panel">
				<div class="pull-left image">
					<img src="<?php echo base_url();?>img/logomp.jpg" class="img-circle" alt="User Image">
				</div>
				<div class="pull-left info">
					<p>CNE</p>
					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
				</div>
			</div>
			<!-- sidebar menu: : style can be found in sidebar.less -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header" style="color:#fff!important">MAIN NAVIGATION</li>
				<?php if($_SESSION['tipouser']=='admin'){ ?>
				<li class="<?php if($url == 'dashboard/usuario' || $url == 'dashboard'){echo "active";} ?>">
					<a href="<?php echo base_url();?>dashboard/usuario">
						<i class="fa fa-users"></i> <span>Agregar Usuarios</span>
					</a>
				</li>
				<?php } ?>
				
				<?php if($_SESSION['tipouser']=='admin'){ ?>
					<li class="treeview <?php if($url == 'Dashboard/empleadomst' || $url == 'Dashboard/empleadomstr'){echo "active";} ?>">
					  <a href="#">
						<i class="fa fa-edit"></i> <span>Empleado</span>
						<span class="pull-right-container">
						  <i class="fa fa-angle-left pull-right"></i>
						</span>
					  </a>
					  <ul class="treeview-menu">
						<li class="<?php if($url == 'Dashboard/empleadomst'){echo "active";} ?>">
							<a href="<?php echo base_url();?>Dashboard/empleadomst">
								<i class="fa fa-circle-o"></i> <span>Agregar</span>
							</a>
						</li>
						<li class="<?php if($url == 'Dashboard/empleadomstr'){echo "active";} ?>">
							<a href="<?php echo base_url();?>Dashboard/empleadomstr">
								<i class="fa fa-circle-o"></i> <span>Mostrar</span>
							</a>
						</li>
					  </ul>
					</li>
				<?php } ?>
				
				<?php if($_SESSION['tipouser']=='admin'){ ?>
					<li class="<?php if($url == 'reporte'){echo "active";} ?>">
						<a href="<?php echo base_url();?>reporte">
							<i class="fa fa-file-text-o"></i> <span>Reporte</span>
						</a>
					</li>
				<?php } ?>
				
				<!--<li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
				<li class="header">LABELS</li>
				<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
				<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
				<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>-->
			</ul>
		</section>
		<!-- /.sidebar -->
	</aside>
  
  <!-- =============================================== -->

