$(function () {
	var getUrl = window.location;
	var baseurl = getUrl.origin+'/'+getUrl.pathname.split('/')[1]+'/';
	//alert(baseurl)
	$(".modal-xlg").css("width", "90%");
	function agrenttr(data_save){
		$.ajax({
			url:baseurl+"Data_Personal/insDomicilio",
			dataType : 'json',
			method: 'POST',
			data:data_save,
			success:function(result)
			{
				//console.log(result);
				//$('#add_name')[0].reset();
				/*$('#dynamic_field input').each(function(i, ctrl) {
					//ctrl.checked = ctrl.defaultChecked;
					ctrl.value = ctrl.defaultValue;
				});*/

				if(result.messageid=="error"){
					Swal.fire({
						title: 'No ha ingresado los datos de información personal!',
						icon: 'warning',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok',
					}).then((rslt) => {
						$('#tab1').trigger('click');
					});
				}
				if(result.messageDom=="empty"){
					Swal.fire({
						title: 'Campos requeridos se encuentran sin completar!',
						icon: 'warning',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok',
					});
				}else{
					if(result.messageid=="Ok"){
						if(result.email=="erremail"){
							Swal.fire({
								title: 'Verifique la información del email!',
								icon: 'warning',
								allowOutsideClick: false,
								allowEscapeKey: false,
								showCancelButton: false,
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'Ok',
							});
						}
						if(result.email=="errPhone"){
							Swal.fire({
								title: 'Verifique la información del teléfono!',
								icon: 'warning',
								allowOutsideClick: false,
								allowEscapeKey: false,
								showCancelButton: false,
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'Ok',
							});
						}
						if(result.message=="ok"){
							Swal.fire({
								title: 'Exito al guardar!',
								icon: 'success',
								allowOutsideClick: false,
								allowEscapeKey: false,
								showCancelButton: false,
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'Ok',
							});
						}
						if(result.message=="dup"){
							Swal.fire({
								title: 'Ya se encuentra registrado!',
								icon: 'warning',
								allowOutsideClick: false,
								allowEscapeKey: false,
								showCancelButton: false,
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'Ok',
							});
						}
					}
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);
				}; 
				return xhr; 
			}
		});
	}
	/**guardar datos de domicilio */
	$('#btn_grdDom').click(function(){
		var data_save_ser = $('#add_name').serialize();
		var selpro = $('#slectProvincia option:selected').text();
		var selcant = $('#slectCanton option:selected').text();
		var selparro = $('#slectParroquia option:selected').text();
		var addintional = 'postPro=' + selpro + '&' + 'postcant=' + selcant + '&' + 'postparro=' + selparro;
		var data_save = data_save_ser + '&' + addintional;
		agrenttr(data_save);
	});

	/**Agregar multiples correos */
	var i=1;
	$('#add').click(function(){
		i++;
		$('#dynamic_field').append('<tr class="fequ" id="row'+i+'"><td><input type="text" name="namecrro[]" placeholder="Correo" class="form-control name_list" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');
	});

	$('#addupd').click(function(){
		i++;
		$('#dynamic_fieldupd').append('<tr class="fequ" id="row'+i+'"><td><input type="text" name="namecrroupd[]" placeholder="Correo" class="form-control name_list" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_remove">X</button></td></tr>');
	});

	$(document).on('click', '.btn_remove', function(){
		var button_id = $(this).attr("id"); 
		$('#row'+button_id+'').remove();
	});

	/**Agregar multiples telefonos */
	var i=1;
	$('#addtlf').click(function(){
		i++;
		$('#dynamic_fieldtlf').append('<tr class="fequ" id="rowtlf'+i+'"><td><input type="text" name="nametlf[]" placeholder="Teléfono" class="form-control name_list" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_removetlf">X</button></td></tr>');
	});

	$('#addtlfupd').click(function(){
		i++;
		$('#dynamic_fieldtlfupd').append('<tr class="fequ" id="rowtlf'+i+'"><td><input type="text" name="nametlfupd[]" placeholder="Teléfono" class="form-control name_list" /></td><td><button type="button" name="remove" id="'+i+'" class="btn btn-danger btn_removetlf">X</button></td></tr>');
	});

	$(document).on('click', '.btn_removetlf', function(){
		var button_id = $(this).attr("id"); 
		$('#rowtlf'+button_id+'').remove();
	});

	function filterFloat(evt,input){
		// Backspace = 8, Enter = 13, ‘0′ = 48, ‘9′ = 57, ‘.’ = 46, ‘-’ = 43
		var key = window.Event ? evt.which : evt.keyCode;   
		var chark = String.fromCharCode(key);
		var tempValue = input.value+chark;
		var isNumber = (key >= 48 && key <= 57);
		var isSpecial = (key == 8 || key == 13 || key == 0 ||  key == 46);
		if(isNumber || isSpecial){
			return filter(tempValue);
		}        
		
		return false;    
		
	}
	
	function filter(__val__){
		var preg = /^([0-9]+\.?[0-9]{0,2})$/; 
		return (preg.test(__val__) === true);
	}

	$('#txtporc').on('keypress', function (event) {
		return filterFloat(event,this);
	});

	$('#txtced').on('input', function () { 
		this.value = this.value.replace(/[^0-9]/g,'');
	});

	var msjNota = function() {
		$.ajax({
			url: baseurl+'Data_Personal/notaMsj',
			dataType : 'json',
			type: 'POST',
			success: function(data) {
				console.log(data.data.msjNota);
				$('.notaMsj').text(data.data.msjNota);
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					//table_usuarios.ajax.reload();
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	}
			
	$('#tab1').click(function(){
		$("#btn_grdPr").css("display", "initial");
		$("#btn_grdDis").css("display", "none");
		$("#btn_grdDom").css("display", "none");
	});
	
	$('#tab2').click(function(){
		$("#btn_grdPr").css("display", "none");
		$("#btn_grdDis").css("display", "initial");
		$("#btn_grdDom").css("display", "none");
		msjNota();
	});
	
	$('#tab3').click(function(){
		$("#btn_grdPr").css("display", "none");
		$("#btn_grdDis").css("display", "none");
		$("#btn_grdDom").css("display", "initial");
		msjNota();
	});

	var TablePersonal = $('#empTable').DataTable({
		'tabIndex': '',
		'responsive': false,
		'processing': true,
		'serverSide': true,
		'serverMethod': 'post',
		//'searching': false, // Remove default Search Control
		//'lengthChange': false,
		'ajax': {
		  'url':BASE_URL+'Data_Personal/empListpersonal'
		},
		'order': [[ 2, 'asc' ]],
		'columnDefs': [
		  {
			targets: 0,
			orderable: false
		  }
		],
		'columns': [
		   { data: null },
		   { data: 'nroidentificacion' },
		   { data: 'nombres' }
		],
		'createdRow': function( row, data, dataIndex ) {
		  $('td:eq(0)', row).html(
			  '<div class="btn-group">'
			  +'<button type="button" tooltip="Opciones" flow="down" class="btn btn-info btn-flat" data-toggle="dropdown"><i class="fa fa-refresh" aria-hidden="true"></i></button>'
			  +'<button type="button" class="btn btn-info btn-flat dropdown-toggle" data-toggle="dropdown">'
				+'<span class="caret"></span>'
				+'<span class="sr-only">Toggle Dropdown</span>'
			  +'</button>'
			  +'<ul class="dropdown-menu" role="menu">'
				+'<li><a id="updPers" href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Información Personal</a></li>'
				+'<li><a id="updDisc" href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Información de Discapacidad</a></li>'
				+'<li><a id="updDomi" href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Información Domiciliaria</a></li>'
				+'<li class="divider"></li>'
				+'<li><a id="dltPers" href="#"><i class="fa fa-trash-o"></i>Eliminar</a></li>'
			  +'</ul>'
			  +'</div>'
		  );
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

	var tbldltPers = function(tbody, table){
		$(tbody).on("click", "a#dltPers", function(){
			var data = table.row($(this).parents("tr")).data();
			var idtbPers = data.idtbl_persona;
			Swal.fire({
				title: 'Estas seguro?',
				text: "No podrás revertir!",
				icon: 'warning',
				allowOutsideClick: false,
				allowEscapeKey: false,
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Si!',
				cancelButtonText: 'Cancelar'
			}).then((result) => {
				if (result.isConfirmed) {
					$.ajax({
						url: baseurl+'Data_Personal/deletePersonal',
						type: 'POST',
						data: {
							postId:idtbPers
						},
						success: function(data) {
							console.log(data);
						},xhr: function(){ 
							// get the native XmlHttpRequest object 
							var xhr = $.ajaxSettings.xhr() ; 
							// set the onload event handler 
							xhr.upload.onload = function(){ 
							console.log('DONE!');
								TablePersonal.ajax.reload(function(){
									$(".paginate_button > a").on("focus",function(){
										$(this).blur();
									});
								}, false);
							}; 
							return xhr; 
						}
					});
				}
			});
		});
	}
	tbldltPers('#empTable', TablePersonal);
	
	//$('#slectProvincia').find('option:selected').text('Bolívar');
	//var el = document.getElementById("slectProvincia");
	//el.innerHTML = $("#slectProvincia option:selected").text('Bolivar');
	var tblupdPers = function(tbody, table){
		$(tbody).on("click", "a#updPers", function(){
			var data = table.row($(this).parents("tr")).data();
			var idtbPers = data.idtbl_persona;
			var nroident = data.nroidentificacion;
			var nombres = data.nombres;
			var fchanac = data.fchanacimiento;
			var genero = data.genero;
			var tposangre = data.tiposangre;
			var estcivil = data.estadocivil;
			var tpoDoc = data.tpodocumento;
			
			//if(estcivil=='casado' || estcivil=='casada')
			var estnew='';
			if (({ Casado : 1, Casada : 1 })[estcivil]) {
				estnew='Casado (a)';
			}
			if (({ Divorciado : 1, Divorciada : 1 })[estcivil]) {
				estnew='Divorciado (a)';
			}
			if (({ Soltero : 1, Soltera : 1 })[estcivil]) {
				estnew='Soltero (a)';
			}
			if (({ 'Union Libre' : 1 })[estcivil]) {
				estnew='Union Libre';
			}
			if (({ Viudo : 1, Viuda : 1 })[estcivil]) {
				estnew='Viudo (a)';
			}
			var edad=calcularEdad(fchanac);
			
			$("#mdupdPers").modal("show");
			$("#txtidupd").val(idtbPers);
			$("#txtcedupd").val(nroident);
			$("#txtnomupd").val(nombres);
			$("#slectFchanactoupd").val(fchanac);
			$("#txtedadupd").val(edad);
			$('#slectGeneroupd').val(genero).trigger('change.select2');
			$('#slectTposangreupd').val(tposangre).trigger('change.select2');
			$('#slectEstcivilupd').val(estnew).trigger('change.select2');
			
			if(({ Pasaporte : 1 })[tpoDoc]){
				$("#txtcedupd").attr("readonly", false); 
			}else{
				$("#txtcedupd").attr("readonly", true); 
			}
		});
	}
	tblupdPers('#empTable', TablePersonal);

	var Discdata = function(postDiscid) {
		var formData = new FormData();
		formData.append('postidDomi', postDiscid);
		$.ajax({
			url: baseurl+'Data_Personal/discpData',
			dataType : 'json',
			type: 'POST',
			data: formData,
			success: function(result) {
				console.log(result.tipo);
				//$('.notaMsj').text(data.data.msjNota);
				$('#tptext').text(result.tipo);
				$('#cnettext').text(result.canet);
				if (({ 'N/N' : 1 })[result.canet]) { 
					$('.cnetDisc').css({ 'display': 'none'}); 
				}else{
					$('.cnetDisc').css({ 'display': 'initial'}); 
				}
				if (({ 'Si' : 1 })[result.canet]) { 
					$('#cnetNo').css({ 'display': 'none'});
					$('#cnetSi').css({ 'display': 'initial'});  
				}
				if (({ 'No' : 1 })[result.canet]) { 
					$('#cnetNo').css({ 'display': 'initial'});
					$('#cnetSi').css({ 'display': 'none'});  
				}
				//nro de carnet y porcentaje
				$('#nocnettext').text(result.nocanet);
				$('#pctjecanet').text(result.pctjecanet);
				//esta en tramite
				$('#canettrmite').text(result.canettrmite);
				//adquirio discapacidad de nacimiento
				if (({ 'No' : 1 })[result.adq_dscpNac]) { 
					$('#dscpNacNo').css({ 'display': 'initial'});  
				}else{
					$('#dscpNacNo').css({ 'display': 'none'});
				}
				$('#adq_dscpNac').text(result.adq_dscpNac);
				$('#adq_dscpNacfch').text(result.adq_dscpNacfch);
				$('#adq_dscpObs').text(result.adq_dscpObs);
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					//table_usuarios.ajax.reload();
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	}
	
	var tblupdDisc = function(tbody, table){
		$(tbody).on("click", "a#updDisc", function(){
			var data = table.row($(this).parents("tr")).data();
			var idtbPers = data.idtbl_persona;
			//$("#mdupdDisc").modal("show");
			
			$('#mdupdDisc').modal({
				show: true
			})
			$("#txtidDomi").val(idtbPers);
			var validPers=$("#txtidDomi").val();
			if(validPers.length>0){
				Discdata($("#txtidDomi").val());
			}
		});
	}
	tblupdDisc('#empTable', TablePersonal);
	
	var dataDomic = function(postDomicid) {
		var formData = new FormData();
		formData.append('postidDomic', postDomicid);
		$.ajax({
			url: baseurl+'Data_Personal/domicData',
			dataType : 'json',
			type: 'POST',
			data: formData,
			success: function(result) {
				console.log(result);
				$('#emtext').text(result.email);
				$('#tlftext').text(result.telefono);
				$('#protext').text(result.provincia);
				$('#cttext').text(result.canton);
				$('#prrtext').text(result.parroquia);
				$('#dirtext').text(result.direccion);
				$('#ocptext').text(result.ocupacion);
				$('#obstext').text(result.observacion);
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					//table_usuarios.ajax.reload();
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	}

	var tblupdDomi = function(tbody, table){
		$(tbody).on("click", "a#updDomi", function(){
			var data = table.row($(this).parents("tr")).data();
			var idtbPers = data.idtbl_persona;
								
			$("#mdupdDom").modal("show");
			$("#txtidDomic").val(idtbPers);
			var validPers=$("#txtidDomic").val();
			if(validPers.length>0){
				dataDomic($("#txtidDomic").val());
			}
			
		});
	}
	tblupdDomi('#empTable', TablePersonal);
			
	var unsetId = function() {
		$.ajax({
			url: baseurl+'Data_Personal/unsetSession',
			dataType : 'json',
			type: 'POST',
			xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					//table_usuarios.ajax.reload();
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	}
	
	$("#dadd").click(function(){
		$("#mdaddPers").modal("show");
		unsetId();
		$("#btn_grdPr").removeAttr('disabled');
	});
	
	$("#btn_salir").click(function(){
		unsetId();
		$("#btn_grdPr").removeAttr('disabled');
	});

	$("#btnaddtpodisc").click(function(){
		//$("#mdaddtpodisc").modal("show");
		//$('.btncerrDisc').trigger('click'); 
		$('#addTipodisc').css({ 'display': 'initial'});
	});

	$("#btnaddtpodiscupd").click(function(){
		//$("#mdaddtpodisc").modal("show");
		//$('.btncerrDisc').trigger('click'); 
		$('#addTipodiscupd').css({ 'display': 'initial'});
	});
	
	$(".btncerr-MDDiscadd").click(function(){
		$('#mdupdDisc').modal({
			show: true
		}) 
	});

	/**Eliminar */
	/*$("#btnaddProsal").click(function(){
		$("#mdaddProsal").modal("show");
	});*/
	
	$("#btn_grdDis").click(function(){
		var tipoDisc=$('#slectTpodisc :selected').text();
		var carneDisc = document.querySelector('input[type=radio][name=carneDisc]:checked').value;
		var nocarneDisc=$("#txtnocarne").val();
		var porccarneDisc=$("#txtporc").val();
		var adqDisc = document.querySelector('input[type=radio][name=optAdqdisc]:checked').value;
		var adqfhaDisc=$("#slectfchaadqdisc").val();
		var obsDisc=$("#txtAdqDiscOBS").val();
		//var optnoAdqdisno=document.getElementById('optAdqdiscno').checked;
		//var carneDissi=document.getElementById('carneDiscsi').checked;
		if (({ 1 : 1 })[carneDisc]){
			var noCarnet=nocarneDisc;
			var porcCarnet=porccarneDisc;
		}else{
			var noCarnet="";
			var porcCarnet="";
		}
		if (({ 1 : 1 })[adqDisc]){
			var adqFcha="";
		}else{
			var adqFcha=adqfhaDisc;
		}
		var formData = new FormData();
		formData.append('posttpoDisc', tipoDisc);
		formData.append('postcrnetDisc', carneDisc);
		formData.append('postnoCarnet', noCarnet);
		formData.append('postporcCarnet', porcCarnet);
		formData.append('postadqDisc', adqDisc);
		formData.append('postadqfhaDisc', adqFcha);
		formData.append('postobsDisc', obsDisc);

		$.ajax({
			url: baseurl+'Data_Personal/addPostdiscapacidadtest',
			dataType : 'json',
			type: 'POST',
			data: formData,
			success: function(dta) {
				if(dta.data.messageid=='error'){
					Swal.fire('No ha ingresado los datos de información personal',"","warning");
					$('#tab1').trigger('click');
				}
				if(dta.data.message=='ok'){
					Swal.fire('Exito al guardar',"","success");
				}
				if(dta.data.messagecnet=='errcarnet'){
					Swal.fire('Revise la información de No. Carné y Porcentaje',"","warning");
				}
				if(dta.data.messagecnet=='errfchaadqdisc'){
					Swal.fire('No ha seleccionado la fecha cuando adquirio la discapacidad',"","warning");
				}
				if(dta.data.message=='dup'){
					Swal.fire('Registro se encuentra duplicado',"","warning");
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	});
	
	var post_TpoDisc = function(tpodisc){
		var formData = new FormData();    
		formData.append('postTpodisc', tpodisc);
										
		$.ajax({
			url: baseurl+'Data_Personal/addTpodiscapacidad',
			dataType : 'json',
			type: 'POST',
			data: formData,
			success: function(dta) {
				if(dta.data.message=='ok'){
					Swal.fire('Exito al guardar',"","success");
					//$('#formaddreg').modal('hide');
					//$("#txtcedmd").val("");
					//$("#txtnommd").val("");
					//$("#txtapemd").val("");
					//$("#slectpst").select2().val('').trigger("change");
					//selectpsto();
				}
				if(dta.data.messagetpodisc=='errtipodisc'){
					Swal.fire('Campos con asteriscos son obligatorios',"","warning");
				}
				if(dta.data.message=='dup'){
					Swal.fire('Duplicado',"","warning");
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					//table_usuarios.ajax.reload();
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	}

	$("#btn_grdtpodsic").click(function(){
		post_TpoDisc($('#txttpodiscadd').val());
	});

	$("#btn_grdtpodsicupd").click(function(){
		post_TpoDisc($('#txttpodiscaddupd').val());
	});

	$("#btn_grdtpodsiccls").click(function(){
		$('#addTipodisc').css({ 'display': 'none'});
	});

	$("#btn_grdtpodsicupdcls").click(function(){
		$('#addTipodiscupd').css({ 'display': 'none'});
	});
	
	/** Eliminar */
	/*$("#btn_grdProsal").click(function(){
		var formData = new FormData();    
		formData.append('postProsal', $('#txttprosal').val());
										
		$.ajax({
			url: '<?php echo base_url();?>Data_Personal/addProsalud',
			dataType : 'json',
			type: 'POST',
			data: formData,
			success: function(dta) {
				if(dta.data.message=='ok'){
					Swal.fire('Exito al guardar',"","success");
				}
				if(dta.data.messageprosal=='errprosal'){
					Swal.fire('Campos con asteriscos son obligatorios',"","warning");
				}
				if(dta.data.message=='dup'){
					Swal.fire('Duplicado',"","warning");
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					//table_usuarios.ajax.reload();
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	});*/

	var selectpdisc = function() {
		$('.slectTpodisc').select2({
			//var cursoID = $("#selectcurso").val();
			//placeholder: 'Tipo de discapacidad...',
			
			minimumResultsForSearch: -1,
			ajax: {
				url: baseurl+'Data_Personal/getTpodiscapacidad',
				type: "post",
				dataType: 'json',
				delay: 250,
				data: function (params) {
					return {
						searchTerm: params.term
					};
				},
				processResults: function (data) {
					return {
						results: data
					};
				},
				cache: true
			},initSelection: function(element, callback) {
				var id = $(element).val();
				if(id !== "") {
					$.ajax(baseurl+"Data_Personal/getTpodiscapacidadDF", {
						type: "post",
						data: {id: id},
						dataType: "json"
					}).done(function(data) {
						$.each(data, function (i, value){
							$(".slectTpodisc").append('<option style="display:none;" value='+value['id']+' selected>'+value['text']+'</option>');
							callback({id: value['id'],text: value['text']});
						});
					});
				}
			}
		});
	}
	selectpdisc();

	var selectProvincia = function() {
		$.ajax({
			type: "POST",
			url: baseurl+"Data_Personal/getProvincia",
			dataType: "json",
			success: function(response){
				//console.log(response);
				$.each(response, function (i, value){
					$(".slectProvincia").append('<option value='+value['id']+'>'+value['text']+'</option>');
				});
			}
		});	
	}
	selectProvincia();
	
	var postProvincia = function(provinciaID){
		return new Promise((resolve, reject) => {
			$.ajax({
				type: "POST",
				url: baseurl+"Data_Personal/getCanton",
				dataType: "json",
				data: "postId="+provinciaID,
				success: function(response){
					//console.log(response);
					var html = "";
					$.each(response, function (i, value){
						html+='<option value='+value['id']+'>'+value['text']+'</option>';
					});
					$(".slectCanton").html(html);
				}
			}).then(() => {
				resolve(100);
			});
		});
	}
	
	var postParroquia = function(parroquiaID){
		$.ajax({
			type: "POST",
			url: baseurl+"Data_Personal/getParroquia",
			dataType: "json",
			data: "postId="+parroquiaID,
			success: function(response){
				//console.log(response);
				var html = "";
				$.each(response, function (i, value){
					html+='<option value='+value['id']+'>'+value['text']+'</option>';
				});
				$(".slectParroquia").html(html);
			}
		});
	}

	$('.slectProvincia').on('change', function(){
		var provinciaID = $(this).val();
		//alert(countryID)
		if(provinciaID){
			postProvincia(provinciaID)
			.then(
				function () {
					var idCanton=$('.slectCanton :selected').val();
					postParroquia(idCanton);
				}
			);
		}
	});

	$('.slectCanton').on('change', function(){
		var parroquiaID = $(this).val();
		//alert(countryID)
		if(parroquiaID){
			postParroquia(parroquiaID); 
		}
	});
	
	$("#btn_grdPr").click(function(){
		var formData = new FormData();    
		formData.append('postTpodoc', $('#slectTpodoc :selected').val());
		formData.append('postCedadd', $("#txtced").val());
		formData.append('postNomadd', $("#txtnom").val());
		formData.append('postFchaNac', $("#slectFchanacto").val());
		formData.append('postGenero', $('#slectGenero :selected').val());
		formData.append('postTposangre', $('#slectTposangre :selected').val());
		formData.append('postEstcivil', $('#slectEstcivil :selected').val());
		$("#btn_grdPr").prop('disabled', true);								
		$.ajax({
			url: baseurl+'Data_Personal/addPostpersonal',
			dataType : 'json',
			type: 'POST',
			data: formData,
			success: function(dta) {
				if(dta.data.message=='ok'){
					Swal.fire({
						title: 'Exito al guardar!',
						icon: 'success',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok'
					});
					//$('#formaddreg').modal('hide');
					//$("#txtcedmd").val("");
					//$("#txtnommd").val("");
					//$("#txtapemd").val("");
					//$("#slectpst").select2().val('').trigger("change");
					//selectpsto();
				}
				if(dta.data.message=='errc'){
					Swal.fire({
						title: 'Campos con asteriscos son obligatorios!',
						icon: 'warning',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok'
					}).then((rslt) => {
						$("#btn_grdPr").removeAttr('disabled');
					});
				}
				if(dta.data.messagecederr=='errced'){
					Swal.fire({
						title: 'Error en el No. de docum.<br>'+dta.data.messageced,
						icon: 'warning',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok'
					}).then((rslt) => {
						$('#txtced').parent().addClass('has-error');
						$("#btn_grdPr").removeAttr('disabled');
					});
				}
				if(dta.data.messageced=='ok'){
					$('#txtced').parent().removeClass('has-error');
					$("#btn_grdPr").removeAttr('disabled');
				}
				if(dta.data.message=='dup'){
					Swal.fire({
						title: 'Duplicado!',
						icon: 'warning',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok'
					}).then((rslt) => {
						$("#btn_grdPr").removeAttr('disabled');
					});
				}
				if(dta.data.message=='iddefinido'){
					Swal.fire({
						title: 'Ya se agrego un registro!',
						icon: 'warning',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok'
					}).then((rslt) => {
						$('#btn_salir').trigger('click');
					});
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	});
	
	$('.select2-search__field').css('width', '100%');
			 
	$("#discapacidad").on('change', function() {
		if( $(this).is(':checked') ) {
			// Hacer algo si el checkbox ha sido seleccionado
			$("#infDiscchge").removeAttr('disabled');
			//$("#txtnocarne").addAttr('disabled');
			$("#txtnocarne").prop('disabled', true);
			$("#txtporc").prop('disabled', true);
		}else{
			$("#infDiscchge").prop('disabled', true);
			$("#txtnocarne").prop('disabled', true);
			$("#txtporc").prop('disabled', true);
		}
	});
	
	$(".carneDiscCH").on('change', function() {
		var updDiscinput=$("#txtidDomi").val();
		if(updDiscinput.length>0){
			var selected = document.querySelector('input[type=radio][name=carneDiscupd]:checked').value;
		}else{
			var selected = document.querySelector('input[type=radio][name=carneDisc]:checked').value;
		}
		if (({ 1 : 1 })[selected]){
			$(".txtnocarne").removeAttr('disabled');
			$(".txtporc").removeAttr('disabled');
		}else{
			$(".txtnocarne").prop('disabled', true);
			$(".txtporc").prop('disabled', true);
		}
	});
	
	$(".optAdqdiscCH").on('change', function() {
		var updDiscinput=$("#txtidDomi").val();
		if(updDiscinput.length>0){
			var selected = document.querySelector('input[type=radio][name=optAdqdiscupd]:checked').value;
		}else{
			var selected = document.querySelector('input[type=radio][name=optAdqdisc]:checked').value;
		}
		
		//si el value del check es si
		if (({ 1 : 1 })[selected]){
			$(".slectfchaadqdisc").prop('disabled', true);
		}else{
			$(".slectfchaadqdisc").removeAttr('disabled');
		}
	});
					
	$(".prsProbsaludCH").on('change', function() {
		var selected = document.querySelector('input[type=radio][name=prsProbsalud]:checked').value;
		//si el value del check es si
		if (({ 1 : 1 })[selected]){
			$("#prsProbsaludchge").removeAttr('disabled');
		}else{
			$("#prsProbsaludchge").prop('disabled', true);
		}
	});
			
	$("#btnaddMnal").click(function(){
		$("#txtced").removeAttr('disabled');
		$("#txtnom").removeAttr('disabled');
		document.getElementById("txtced").focus();
	});

	$("#slectTpodoc").on('change', function() {
		var selectTpodoc=$(this).val();
		if (({ 'Pasaporte' : 1 })[selectTpodoc]){
			$("#txtced").removeAttr('disabled');
			$("#txtnom").removeAttr('disabled');
			$("#txtsearchData").prop('disabled', true);
			$("#btnSearchD").prop('disabled', true);
			document.getElementById("txtced").focus();
		}else{
			$("#txtced").prop('disabled', true);
			$("#txtnom").prop('disabled', true);
			$("#txtsearchData").removeAttr('disabled');
			$("#btnSearchD").removeAttr('disabled');
		}
	});
			
	$("#eck").click(function(){
		if($('#discapacidad').is(':checked')){
			var valdisc=$('input:checkbox[name=discapacidad]:checked').val();
			alert('Seleccionado'+ valdisc);
		}else{
			alert()
		}
	});
	
	
	$('.dateNacto').datepicker({
		defaultDate:new Date('1994/05/10'),
		//minDate: new Date('1999/10/25'),
		yearRange: '-90:+0',
		autoclose: true,
		todayHighlight: true,
		dateFormat: 'yy-mm-dd',
		changeMonth: true,
		changeYear: true,
		language: 'es',
		firstDay: 1,
		monthNames: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
					'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
		dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
	}).on('changeDate', function(e){
		$(this).datepicker('hide');
	});
	
	
	$('#slectfchaadqdisc').datepicker({
		defaultDate:new Date('1994/05/10'),
		//minDate: new Date('1999/10/25'),
		yearRange: '-100:+0',
		autoclose: true,
		todayHighlight: true,
		dateFormat: 'yy-mm-dd',
		changeMonth: true,
		changeYear: true,
		language: 'es',
		firstDay: 1,
		monthNames: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
					'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
		dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
	}).on('changeDate', function(e){
		$(this).datepicker('hide');
	});

	$('#slectfchaadqdiscupd').datepicker({
		defaultDate:new Date('1994/05/10'),
		//minDate: new Date('1999/10/25'),
		yearRange: '-100:+0',
		autoclose: true,
		todayHighlight: true,
		dateFormat: 'yy-mm-dd',
		changeMonth: true,
		changeYear: true,
		language: 'es',
		firstDay: 1,
		monthNames: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun',
					'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
		dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
	}).on('changeDate', function(e){
		$(this).datepicker('hide');
	});
			
	function calcularEdad(fecha) {
		var hoy = new Date();
		var cumpleanos = new Date(fecha);
		var edad = hoy.getFullYear() - cumpleanos.getFullYear();
		var m = hoy.getMonth() - cumpleanos.getMonth();

		if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate())) {
			edad--;
		}
		return edad;
	}
	
	$('.dateNacto').on('change', function() {
		var edad=calcularEdad($(this).val());
		$('.txtedad').val(edad);
	});
	
	var dataPersonal = function(cedula, nombres) {
		var formData = new FormData();    
		formData.append('postCedadd', cedula);
		formData.append('postNomadd', nombres);
		
		return new Promise((resolve, reject) => {							
			$.ajax({
				url: baseurl+'Data_Personal/addPostpersonal',
				dataType : 'json',
				type: 'POST',
				data: formData,
				success: function(dta) {
					if(dta.data.message=='ok'){
						Swal.fire('Exito al guardar',"","success");
						//$('#formaddreg').modal('hide');
						//$("#txtcedmd").val("");
						//$("#txtnommd").val("");
						//$("#txtapemd").val("");
						//$("#slectpst").select2().val('').trigger("change");
						//selectpsto();
					}
					if(dta.data.message=='errc'){
						Swal.fire('Campos con asteriscos son obligatorios',"","warning");
					}
					if(dta.data.message=='dup'){
						Swal.fire('Duplicado',"","warning");
					}
				},xhr: function(){ 
					// get the native XmlHttpRequest object 
					var xhr = $.ajaxSettings.xhr() ; 
					// set the onload event handler 
					xhr.upload.onload = function(){ 
						console.log('DONE!');
						//table_usuarios.ajax.reload();
					}; 
					return xhr; 
				},
				enctype: 'multipart/form-data',
				processData: false, // tell jQuery not to process the data
				contentType: false // tell jQuery not to set contentType
			}).then(() => {
				resolve(100);
			});
		});
	}
	
	//Discapacidad
	var dataDiscapacidad = function(cedula, tipoDisc, carneDisc, nocarneDisc, porccarneDisc, adqDisc, adqfhaDisc, obsDisc) {
		var formData = new FormData();    
		//formData.append('postCedadd', cedula);
		//formData.append('postNomadd', nombres);
		if($('#discapacidad').is(':checked')){
			if (({ 1 : 1 })[carneDisc]){
				var noCarnet=nocarneDisc;
				var porcCarnet=porccarneDisc;
			}else{
				var noCarnet="";
				var porcCarnet="";
			}
			if (({ 1 : 1 })[adqDisc]){
				var adqFcha="";
			}else{
				var adqFcha=adqfhaDisc;
			}
			formData.append('postCed', cedula);
			formData.append('posttpoDisc', tipoDisc);
			formData.append('postcrnetDisc', carneDisc);
			formData.append('postnoCarnet', noCarnet);
			formData.append('postporcCarnet', porcCarnet);
			formData.append('postadqDisc', adqDisc);
			formData.append('postadqfhaDisc', adqFcha);
			formData.append('postobsDisc', obsDisc);
			$.ajax({
				url: baseurl+'Data_Personal/addPostdiscapacidad',
				dataType : 'json',
				type: 'POST',
				data: formData,
				success: function(dta) {
					if(dta.data.message=='ok'){
						Swal.fire('Exito al guardar',"","success");
						//$('#formaddreg').modal('hide');
						$("#txtcedmd").val("");
						$("#txtnommd").val("");
						$("#txtapemd").val("");
						$("#slectpst").select2().val('').trigger("change");
						selectpsto();
					}
					if(dta.data.message=='errc'){
						Swal.fire('Campos con asteriscos son obligatorios',"","warning");
					}
					if(dta.data.message=='dup'){
						Swal.fire('Duplicado',"","warning");
					}
				},xhr: function(){ 
					// get the native XmlHttpRequest object 
					var xhr = $.ajaxSettings.xhr() ; 
					// set the onload event handler 
					xhr.upload.onload = function(){ 
						console.log('DONE!');
						//table_usuarios.ajax.reload();
					}; 
					return xhr; 
				},
				enctype: 'multipart/form-data',
				processData: false, // tell jQuery not to process the data
				contentType: false // tell jQuery not to set contentType
			});
		}else{
			console.log('empty!');
		}
	}
	
	//Problemas de salud
	var dataProsalud = function(cedula) {
		var formData = new FormData();    
		formData.append('postCed', cedula);
		//formData.append('postNomadd', nombres);
		if($('#prsProbsaludsi').is(':checked')){
			$.ajax({
				url: baseurl+'Data_Personal/addPostproSalud',
				dataType : 'json',
				type: 'POST',
				data: formData,
				success: function(dta) {
					if(dta.data.message=='ok'){
						Swal.fire('Exito al guardar',"","success");
					}
					if(dta.data.message=='errc'){
						Swal.fire('Campos con asteriscos son obligatorios',"","warning");
					}
					if(dta.data.message=='dup'){
						Swal.fire('Duplicado',"","warning");
					}
				},xhr: function(){ 
					// get the native XmlHttpRequest object 
					var xhr = $.ajaxSettings.xhr() ; 
					// set the onload event handler 
					xhr.upload.onload = function(){ 
						console.log('DONE!');
						//table_usuarios.ajax.reload();
					}; 
					return xhr; 
				},
				enctype: 'multipart/form-data',
				processData: false, // tell jQuery not to process the data
				contentType: false // tell jQuery not to set contentType
			});
		}else{
			console.log('pro_salud_empty!');
		}
	}
	
	$('#btn_check').click(function(){
		var txtced=$("#txtced").val();
		var txtnom=$("#txtnom").val();
		var txtfchanac=$("#slectFchanacto").val();
		var Genero=$('#slectGenero :selected').val();
		var tpoSangre=$('#slectTposangre :selected').val();
		var estCivil=$('#slectEstcivil :selected').val();
		//data discapacidad
		var tipoDisc=$('#slectTpo :selected').val();
		var carneDisc = document.querySelector('input[type=radio][name=carneDisc]:checked').value;
		var nocarneDisc=$("#txtnocarne").val();
		var porccarneDisc=$("#txtporc").val();
		var adqDisc = document.querySelector('input[type=radio][name=optAdqdisc]:checked').value;
		var adqfhaDisc=$("#slectfchaadqdisc").val();
		var obsDisc=$("#txtAdqDiscOBS").val();
		var optnoAdqdisno=document.getElementById('optAdqdiscno').checked;
		var carneDissi=document.getElementById('carneDiscsi').checked;
		//data problemas de salud
		if(txtced.length>0 && txtnom.length>0 && txtfchanac.length>0 && typeof(Genero)!="undefined" && typeof(tpoSangre)!="undefined" && typeof(estCivil)!="undefined"){
			dataPersonal(txtced,txtnom)
			.then(
				function () {
					dataDiscapacidad(txtced, tipoDisc, carneDisc, nocarneDisc, porccarneDisc, adqDisc, adqfhaDisc, obsDisc);
				}
			).then(
				function () {
					dataProsalud(txtced);
				}
			);
		}else{
			Swal.fire('Revise los campos de la información personal',"","warning");
		}
	});

	/**form modal actualizar personal */
	$("#btn_updPers").click(function(){
		var formData = new FormData();    
		formData.append('postidPers', $('#txtidupd').val());
		formData.append('postCed', $('#txtcedupd').val());
		formData.append('postNombres', $('#txtnomupd').val());
		formData.append('postFNac', $('#slectFchanactoupd').val());
		formData.append('postGenero', $('#slectGeneroupd').val());
		formData.append('postTposangre', $('#slectTposangreupd').val());
		formData.append('postEstcivil', $('#slectEstcivilupd').val());
										
		$.ajax({
			url: baseurl+'Data_Personal/updPersonal',
			dataType : 'json',
			type: 'POST',
			data: formData,
			success: function(result) {
				if(result.data.message=='ok'){
					Swal.fire({
						title: 'Exito al guardar!',
						icon: 'success',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok'
					});
				}
				if(result.data.msgempty=='errc'){
					Swal.fire({
						title: 'Faltan campos por completar!',
						icon: 'warning',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok'
					});
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	});

	/**modal actualizar discapacidad */
	$("#btn_updDis").click(function(){
		var tipoDisc=$('#slectTpodiscupd :selected').text();
		var carneDisc = document.querySelector('input[type=radio][name=carneDiscupd]:checked').value;
		var nocarneDisc=$("#txtnocarneupd").val();
		var porccarneDisc=$("#txtporcupd").val();
		var adqDisc = document.querySelector('input[type=radio][name=optAdqdiscupd]:checked').value;
		var adqfhaDisc=$("#slectfchaadqdiscupd").val();
		var obsDisc=$("#txtAdqDiscOBSupd").val();
		//var optnoAdqdisno=document.getElementById('optAdqdiscno').checked;
		//var carneDissi=document.getElementById('carneDiscsi').checked;
		if (({ 1 : 1 })[carneDisc]){
			var noCarnet=nocarneDisc;
			var porcCarnet=porccarneDisc;
		}else{
			var noCarnet="";
			var porcCarnet="";
		}
		if (({ 1 : 1 })[adqDisc]){
			var adqFcha="";
		}else{
			var adqFcha=adqfhaDisc;
		}
		var formData = new FormData();
		formData.append('postId', $("#txtidDomi").val());
		formData.append('posttpoDisc', tipoDisc);
		formData.append('postcrnetDisc', carneDisc);
		formData.append('postnoCarnet', noCarnet);
		formData.append('postporcCarnet', porcCarnet);
		formData.append('postadqDisc', adqDisc);
		formData.append('postadqfhaDisc', adqFcha);
		formData.append('postobsDisc', obsDisc);

		$.ajax({
			url: baseurl+'Data_Personal/updPostdisc',
			dataType : 'json',
			type: 'POST',
			data: formData,
			success: function(dta) {
				if(dta.data.message=='ok'){
					Swal.fire('Exito al guardar',"","success");
				}
				if(dta.data.messagecnet=='errcarnet'){
					Swal.fire('Revise la información de No. Carné y Porcentaje',"","warning");
				}
				if(dta.data.messagecnet=='errfchaadqdisc'){
					Swal.fire('No ha seleccionado la fecha cuando adquirio la discapacidad',"","warning");
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					Discdata($("#txtidDomi").val());
					TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	});

	$("#btncerrDisc").click(function(){
		$("#txtidDomi").val("");
	});

	/**modal actualizar domicilio */
	$("#btn_updDomic").click(function(){
		var data_save_ser = $('#add_nameupd').serialize();
		var idPers = $('#txtidDomic').val();
		var selpro = $('#slectProvinciaupd option:selected').text();
		var selcant = $('#slectCantonupd option:selected').text();
		var selparro = $('#slectParroquiaupd option:selected').text();
		var addintional = 'postIdps=' + idPers + '&' + 'postPro=' + selpro + '&' + 'postcant=' + selcant + '&' + 'postparro=' + selparro;
		var data_save = data_save_ser + '&' + addintional;
		$.ajax({
			url:baseurl+"Data_Personal/updDomicilio",
			dataType : 'json',
			method: 'POST',
			data:data_save,
			success:function(result){
				if(result.messageDom=="empty"){
					Swal.fire({
						title: 'Campos requeridos se encuentran sin completar!',
						icon: 'warning',
						allowOutsideClick: false,
						allowEscapeKey: false,
						showCancelButton: false,
						confirmButtonColor: '#3085d6',
						confirmButtonText: 'Ok',
					});
				}else{
					if(result.email=="erremail"){
						Swal.fire({
							title: 'Verifique la información del email!',
							icon: 'warning',
							allowOutsideClick: false,
							allowEscapeKey: false,
							showCancelButton: false,
							confirmButtonColor: '#3085d6',
							confirmButtonText: 'Ok',
						});
					}
					if(result.phone=="errPhone"){
						Swal.fire({
							title: 'Verifique la información del teléfono campo debe ser solo numerico!',
							icon: 'warning',
							allowOutsideClick: false,
							allowEscapeKey: false,
							showCancelButton: false,
							confirmButtonColor: '#3085d6',
							confirmButtonText: 'Ok',
						});
					}
					if(result.message=="ok"){
						Swal.fire({
							title: 'Exito al guardar!',
							icon: 'success',
							allowOutsideClick: false,
							allowEscapeKey: false,
							showCancelButton: false,
							confirmButtonColor: '#3085d6',
							confirmButtonText: 'Ok',
						});
					}
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					dataDomic($("#txtidDomic").val());
					TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);
				}; 
				return xhr; 
			}
		});
	});
	function imgb64rtr(search,idimg){
		var formData = new FormData();    
		formData.append( 'postCed', search);
		$.ajax({
			url: BASE_URL+'Data_api/api',
			dataType: 'json',
			type: 'POST',
			data: formData,
			beforeSend: function() {
				$('#loader').removeClass('hidden');
			},success: function(result){
				var status=result.data.estado;
				$("#txtced").val(result.data.cedula);			
				$("#txtnom").val(result.data.nombres);			
				/*if(status == 'ok'){
					var srcrt="data:image/png;base64,"+data.data.imgb64;
				}
				
				if(status == 'empty'){
					var srcrt='<?php echo base_url();?>'+data.data.imglocal;
				}
				
				$("#"+idimg).attr({ 
				   src: srcrt,
				   title: "jQuery",
				   alt: "jQuery Logo"
				});*/
			},complete: function(){
				$('#loader').addClass('hidden');
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
			xhr.upload.onload = function(){ 
				console.log('DONE!');
				//table_usuarios.ajax.reload();
			}; 
			return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	}
	
	$('#btnSearchD').click(function(){
		var txtcedSach=$("#txtsearchData").val();
		
		if(txtcedSach.length>0){
			var idimg='imgb64';
			imgb64rtr(txtcedSach,idimg);
		}else{
			Swal.fire({
				title: 'Campo de cedula vacio!',
				icon: 'warning',
				allowOutsideClick: false,
				allowEscapeKey: false,
				showCancelButton: false,
				confirmButtonColor: '#3085d6',
				confirmButtonText: 'Ok',
			});
		}
	});
});