<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		
	</section>
	<!-- Main content -->
	<section class="content">
		<div style="display:none;" id="myPrintArea" class="box box-info">
			<div class="box-header with-border">
				
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				
			</div>
			<!-- /.box-body -->
		</div>
				
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="row">
					<!--<div class="input-group">
							<select class="slectcanton form-control" id="slectcanton" name="slectcanton" style="width: 100%;" lang="es"></select>
							<div id="btnlmp" style="cursor: pointer; background-color: #dd4b39; border-color: #d73925;" class="input-group-addon">
								<a><i style="color: #fff;" class="fa fa-trash"></i></a>
							</div>
						</div>-->
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="form-group">
							<select class="slectcanton form-control" id="slectcanton" name="slectcanton" style="width: 100%;" lang="es"></select>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<button id="btn_csv" class="btn btn-primary"><i class="fa fa-file-excel-o" aria-hidden="true"></i> <strong>Reporte</strong></button>
					</div>
				</div>
				<!--<button name="btnlmp" id="btnlmp" class="btn btn-danger">Limpiar</button>-->
			</div>
			<div class="box-body">
			  <table id='empTable' class="table table-striped table-bordered nowrap dataTable" style="width:100%">
				<thead>
				  <tr>
					<th>Cedula</th>
					<th>Nombres</th>
					<th>Cantón</th>
					<th>Cargo</th>
					<th>Procedencia</th>
					<th>Observación</th>
					<th>Fecha Registro</th>
					<th>Usuario</th>
				  </tr>
				</thead>
			  </table>
			</div>
        <!-- /.box-body -->
		</div>

		<div class="modal fade" id="modal-permiso" tabindex="-1" role="dialog" aria-labelledby="modalLabelLarge" aria-hidden="true"  data-backdrop="static" data-keyboard="false">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="closeGN close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                
              </div>
              <div class="modal-body">
			  	<div class="row">
				  	<input readonly type="hidden" id="txtidpermiso" name="txtidpermiso">
					<div class="col-lg-12 col-md-12 col-sm-12">
						<div class="form-group">
							<label>Permisos</label>*
							<select class="form-control" id="selPermusers" style="width: 100%;"></select>
							<!--<div id="myselect-1"></div>-->
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12">
						<table id='empTableMd' class="table table-striped table-bordered nowrap dataTable" style="width:100%">
							<thead>
							<tr>
								<th>//</th>
								<th>Permiso</th>
								<th>Habilitar Actualizar/Eliminar</th>
							</tr>
							</thead>
						</table>
					</div>
				</div>
              </div>
              <div class="modal-footer">
                <button type="button" class="closeGN btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" id="btn_grdPermiso" class="btn btn-primary">Guardar</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
      <!-- /.box -->
	</section>
	<!-- /.content -->
</div>							
<!-- /.content-wrapper -->