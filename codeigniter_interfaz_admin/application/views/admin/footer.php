
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.12
    </div>
    <strong>Copyright &copy; 2022-<?php echo date("Y"); ?> <a href="<?php echo base_url(); ?>">CNE</a>.</strong> All rights
    reserved.
  </footer>
</div>
<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="<?php echo base_url();?>bower_componentsd/jquery/dist/jquery.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url();?>bower_componentsd/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url();?>bower_componentsd/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url();?>bower_componentsd/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url();?>dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url();?>dist/js/demo.js"></script>
<!-- Select2 -->
<script src="<?php echo base_url();?>bower_componentsd/select2/dist/js/select2.full.js"></script>
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/3.5.0/select2.min.js"></script>-->
<!--<script src="<?php echo base_url();?>bower_components/select2/dist/js/i18n/es.js"></script>-->
<!-- DataTables -->
<script src="<?php echo base_url();?>bower_componentsd/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/datatables.net-bs/js/dataTables.fixedHeader.min.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/datatables.net-bs/js/dataTables.responsive.min.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/datatables.net-bs/js/responsive.bootstrap.min.js"></script>
<!--jquery confirm-->
<script src="<?php echo base_url();?>bower_componentsd/jquery-confirm/jquery-confirm.min.js"></script>
<!-- InputMask -->
<script src="<?php echo base_url();?>bower_componentsd/input-mask/jquery.inputmask.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/input-mask/jquery.inputmask.extensions.js"></script>
<!--Datepicker-->
<script src="<?php echo base_url();?>bower_componentsd/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/bootstrap-datepicker/dist/locales/bootstrap-datepicker.es.min.js"></script>

<!--alert-->
<script src="<?php echo base_url();?>bower_componentsd/sweetalert/popper.min.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/sweetalert/sweetalert2@9.js"></script>

<!--Autocomplete-->
<script src="<?php echo base_url();?>dist/js/jquery-ui.min.js"></script>
<script src="<?php echo base_url();?>dist/js/typeahead.js"></script>
<script src="<?php echo base_url();?>bower_componentsd/pdfObject/pdfobject.min.js"></script>

<script src="<?php echo base_url();?>bower_componentsd/toast/jquery.floating-messages.js"></script>

<?php if($this->uri->uri_string() == 'Dashboard/default'){ ?>
	<!--Particle.js-->
	<script src="<?php echo base_url();?>bower_components/particles.js/particles.min.js"></script>
	<script src="<?php echo base_url();?>bower_components/particles.js/particlesjs-config.js"></script>
<?php } ?>

<style>
	/* Clases para los contenedores de Radio y Checkbox*/
	.content-input{
		margin-bottom: 15px;
		cursor: pointer;
	}

	.content-input{
		position: relative;
		margin-bottom: 15px;
		padding:5px 0 5px 60px;
		display: block;
	}

	/* 
	La propiedadd appearance da un aspecto standard a un elemento.
	Por ejemplo: appearance: button
	Como vamos a personalizar nuestros elemento añadimos el valor none
	*/
	.content-input input,
	.content-select select{
		appearance: none;
		-webkit-appearance: none;
		-moz-appearance: none;
	}


	.content-input i,
	.content-input i:before{
		transition: all 0.25s ease;
	}

	/* 
	Ocultamos nuestros inputs.
	Con opacity 0. Si utilizamos visibility:hidden o display:none;
	no funcionarían
	*/
	.content-input input{
		visibility: hidden;
		position: absolute;
		right: 0;
	}

	/*
	Propiedades para cualquier el elmento i después de un input
	dentro de la capa .content-input
	*/
	.content-input input + i{
		background: #f0f0f0;
		border:2px solid rgba(0,0,0,0.2);
		position: absolute;
		left: 0;
		top: 0;
	}

	/*
	Propiedades para el checkbox
	*/
	.content-input input[type=checkbox ] + i{
		width: 52px;
		height: 30px;
		border-radius: 15px;
	}

	/*
	Propiedades para radio
	*/
	.content-input input[type=radio] + i{
		height: 30px;
		width: 30px;
		border-radius: 100%;
		left: 15px;
	}


	/*
	Creamos el círculo que aparece encima de los checkbox
	con la etqieta before. Importante aunque no haya contenido
	debemos poner definir este valor.
	*/
	.content-input input[type=checkbox] + i:before{
		content: ''; /* No hay contenido */
		width: 26px;
		height: 26px;
		background: #fff;
		border-radius: 50%;
		position: absolute;
		z-index: 1;
		left: 0px;
		top: 0px;
		-webkit-box-shadow: 3px 0 3px 0 rgba(0,0,0,0.2);
		box-shadow: 3px 0 3px 0 rgba(0,0,0,0.2);
	}


	.content-input input[type=checkbox] + i:after{
		content: 'Si';
		position: absolute;
		font-size: 10px;
		color: rgba(255,255,255,0.6);
		top: 8px;
		left: 4px;
		opacity: 0;
		transition: all 0.25s ease 0.25s;
	}

	/*
	Creamos el cículo que se mostrará cuando hagamos click 
	en cualquier radio y lo ocultamos con opacity 0
	*/
	.content-input input[type=radio] + i:before{
		content: '';
		display: block;
		height: 18px;
		width: 18px;
		background: red;
		border-radius: 100%;
		position: absolute;
		z-index: 1;
		top: 4px;
		left: 4px;
		background:#2AC176;
		transition: all 0.25s ease;
		transform: scale(0);
		opacity: 0; /* Lo ocultamos*/
	}



	.content-input:hover input[type=radio]:not(:checked) + i,
	.content-input:hover input[type=checkbox]:not(:checked) + i{
		background: #B1E8CD;
	}



	/*
	Con :checked definimos los valores css cuando un input
	como radio o checkbox está checheado
	*/
	.content-input input[type=checkbox]:checked + i{
		background: #2AC176;
	}

	.content-input input[type=checkbox]:checked + i:before{
		left: 22px;
		-webkit-box-shadow: -3px 0 3px 0 rgba(0,0,0,0.2);
		box-shadow: 3px 0 -3px 0 rgba(0,0,0,0.2);
	}

	.content-input input[type=checkbox]:checked + i:after{
		opacity: 1;
	}

	.content-input input[type=radio]:checked + i:before{
		transform: scale(1);
		opacity: 1;
	}








	.page-header {
	margin: 10px 0 20px 0;
	font-size: 18px;
	}
	.user-panel>.info {
		padding: 5px 5px 5px 15px;
		line-height: 1;
		position: initial;
		left: 55px;
	}
	/*estilo datatable para que se adapte el contenido a las celdas*/
	table.dataTable.nowrap th, table.dataTable.nowrap td {
		white-space: normal;
	}

	/*.tab-content {
		max-height: calc(100vh - 212px);
		overflow-y: auto;
	}*/

	.body-md {
		max-height: calc(100vh - 212px);
		overflow-y: auto;
		overflow-x: hidden;
	}

	.ui-datepicker {
		z-index: 9999 !important;
	}






	/* START TOOLTIP STYLES */
	[tooltip] {
	position: relative; /* opinion 1 */
	}

	/* Applies to all tooltips */
	[tooltip]::before,
	[tooltip]::after {
	text-transform: none; /* opinion 2 */
	font-size: .9em; /* opinion 3 */
	line-height: 1;
	user-select: none;
	pointer-events: none;
	position: absolute;
	display: none;
	opacity: 0;
	}
	[tooltip]::before {
	content: '';
	border: 5px solid transparent; /* opinion 4 */
	z-index: 1001; /* absurdity 1 */
	}
	[tooltip]::after {
	content: attr(tooltip); /* magic! */
	
	/* most of the rest of this is opinion */
	font-family: Helvetica, sans-serif;
	text-align: center;
	
	/* 
		Let the content set the size of the tooltips 
		but this will also keep them from being obnoxious
		*/
	min-width: 3em;
	max-width: 21em;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	padding: 1ch 1.5ch;
	border-radius: .3ch;
	box-shadow: 0 1em 2em -.5em rgba(0, 0, 0, 0.35);
	background: #333;
	color: #fff;
	z-index: 1000; /* absurdity 2 */
	}

	/* Make the tooltips respond to hover */
	[tooltip]:hover::before,
	[tooltip]:hover::after {
	display: block;
	}

	/* don't show empty tooltips */
	[tooltip='']::before,
	[tooltip='']::after {
	display: none !important;
	}

	/* FLOW: UP */
	[tooltip]:not([flow])::before,
	[tooltip][flow^="up"]::before {
	bottom: 100%;
	border-bottom-width: 0;
	border-top-color: #333;
	}
	[tooltip]:not([flow])::after,
	[tooltip][flow^="up"]::after {
	bottom: calc(100% + 5px);
	}
	[tooltip]:not([flow])::before,
	[tooltip]:not([flow])::after,
	[tooltip][flow^="up"]::before,
	[tooltip][flow^="up"]::after {
	left: 50%;
	transform: translate(-50%, -.5em);
	}

	/* FLOW: DOWN */
	[tooltip][flow^="down"]::before {
	top: 100%;
	border-top-width: 0;
	border-bottom-color: #333;
	}
	[tooltip][flow^="down"]::after {
	top: calc(100% + 5px);
	}
	[tooltip][flow^="down"]::before,
	[tooltip][flow^="down"]::after {
	left: 50%;
	transform: translate(-50%, .5em);
	}

	/* FLOW: LEFT */
	[tooltip][flow^="left"]::before {
	top: 50%;
	border-right-width: 0;
	border-left-color: #333;
	left: calc(0em - 5px);
	transform: translate(-.5em, -50%);
	}
	[tooltip][flow^="left"]::after {
	top: 50%;
	right: calc(100% + 5px);
	transform: translate(-.5em, -50%);
	}

	/* FLOW: RIGHT */
	[tooltip][flow^="right"]::before {
	top: 50%;
	border-left-width: 0;
	border-right-color: #333;
	right: calc(0em - 5px);
	transform: translate(.5em, -50%);
	}
	[tooltip][flow^="right"]::after {
	top: 50%;
	left: calc(100% + 5px);
	transform: translate(.5em, -50%);
	}

	/* KEYFRAMES */
	@keyframes tooltips-vert {
	to {
		opacity: .9;
		transform: translate(-50%, 0);
	}
	}

	@keyframes tooltips-horz {
	to {
		opacity: .9;
		transform: translate(0, -50%);
	}
	}

	/* FX All The Things */ 
	[tooltip]:not([flow]):hover::before,
	[tooltip]:not([flow]):hover::after,
	[tooltip][flow^="up"]:hover::before,
	[tooltip][flow^="up"]:hover::after,
	[tooltip][flow^="down"]:hover::before,
	[tooltip][flow^="down"]:hover::after {
	animation: tooltips-vert 300ms ease-out forwards;
	}

	[tooltip][flow^="left"]:hover::before,
	[tooltip][flow^="left"]:hover::after,
	[tooltip][flow^="right"]:hover::before,
	[tooltip][flow^="right"]:hover::after {
	animation: tooltips-horz 300ms ease-out forwards;
	}










	/* UNRELATED to tooltips */
	/*body {
	margin: 0;
	min-height: 100vh;
	display: flex;
	flex-direction: column;
	font-family: sans-serif;
	background: #ededed;
	}
	main {
	flex: 1 1 100vh;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	}
	aside {
	flex: none;
	display: flex;
	align-items: center;
	justify-content: center;
	background: #49b293;
	color: #fff;
	padding: 1em;
	}
	main div {
	text-align: center;
	color: #353539;
	}
	main span {
	padding: .5em 1em;
	margin: .5em;
	display: inline-block;
	background: #dedede;
	}

	aside a {
	color: inherit;
	text-decoration: none;
	font-weight: bold;
	display: inline-block;
	padding: .4em 1em;
	}*/
</style>
<script type="text/javascript">
    var BASE_URL = "<?php echo base_url().index_page();?>";
</script>

<?php if($this->uri->uri_string() == 'reporte'){ ?>
	<script type="text/javascript">
		$(function () {
			var Table = $('#empTable').DataTable({
				'tabIndex': '',
				'responsive': true,
				'processing': true,
				'serverSide': true,
				'serverMethod': 'post',
				//'searching': false, // Remove default Search Control
				//'lengthChange': false,
				'ajax': {
					'url':'<?=base_url()?>reporte/empListempleado',
					'data': function(data) {
						// Read values
						var slecCton = $('#slectcanton :selected').val();
						var slecCgo = $('#slectcargo :selected').val();
						var slecCnsjria = $('#slectcnsjria :selected').val();
						var slecConfir = $('#selectConfirmar :selected').val();
						
						// Append to data
						if(typeof(slecCton)!="undefined"){
							data.slCnton = slecCton;
						}
						if(typeof(slecCgo)!="undefined"){
							data.slCgo = slecCgo;
						}
						if(typeof(slecCnsjria)!="undefined"){
							data.slCnsjria = slecCnsjria;
						}
						if(slecConfir!=""){
							data.slCnfir = slecConfir;
						}
					}
				},
				'order': [[ 1, 'asc' ]],
				'columnDefs': [
				{
					targets: 0,
					orderable: false
				}
				],
				'columns': [
					{ data: 'nombres' },
					{ data: 'nombres' },
					{ data: 'nombres' },
					{ data: 'nombres' },
					{ data: 'nombres' },
					{ data: 'nombres' },
					{ data: 'nombres' },
					{ data: 'nombres' }
				],
				'createdRow': function( row, data, dataIndex ) {
					var est = data.estentsal;
				},
				'language': {
					"sProcessing":     "Procesando...",
					"sLengthMenu":     "Mostrar _MENU_ registros",
					"sZeroRecords":     "Dato no encontrado lo sentimos ;(",
					"sEmptyTable":      "Ningún dato disponible en esta tabla",
					"sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
					"sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
					"sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
					"sInfoPostFix":    "",
					"sSearch":         "Buscar:",
					"sUrl":            "",
					"sInfoThousands":  ",",
					"sLoadingRecords": "Cargando...",
					"oPaginate": {
						"sFirst":    "Primero",
						"sLast":     "Último",
						"sNext":     "Siguiente",
						"sPrevious": "Anterior"
					},
					"oAria": {
						"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
						"sSortDescending": ": Activar para ordenar la columna de manera descendente"
					}
				}
			});
		});
	</script>
<?php } ?>

</body>
</html>