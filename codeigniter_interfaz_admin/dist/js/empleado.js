$(function () {
	$(".mytabs a").click(function(e){
		if ($(this).hasClass("disabled")) {
			e.preventDefault();
			$(this).addClass("disabledTab");
			//alert("This tab is disabled");
			return false;
		}else{
			e.preventDefault();
			$(this).tab('show');
		}
	});
	function ucfirst(str,force){
		str=force ? str.toLowerCase() : str;
		return str.replace(/(\b)([a-zA-Z])/,
		function(firstLetter){
			return   firstLetter.toUpperCase();
		});
	}
	$('.ucfirstd').keyup(function(){
		var cp_value= ucfirst($(this).val(),true) ;
		$(this).val(cp_value);
	});
	$(".modal-wide").on("show.bs.modal", function() {
		var height = $(window).height() - 200;
		$(this).find(".modal-body").css("max-height", height);
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
				$('#loaderAddEmp').removeClass('hidden');
			},success: function(result){
				var status=result.data.estado;
				$("#txtced").val(result.data.cedula);			
				$("#txtnom").val(result.data.nombres);
				$("#imgb64").attr({ 
				   src: "data:image/png;base64,"+result.data.imgb64,
				   title: "jQuery",
				   alt: "jQuery Logo"
				});
								
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
				$('#loaderAddEmp').addClass('hidden');
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
	
	$("#txtsearchData").keyup(function(event) {
        if (event.which === 13) {
            $("#btnSearchD").click();
        }
    });
	
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
	
	$('.dateNacto').datepicker({
		defaultDate:new Date('1994-05-10'),
		//minDate: new Date('1999/10/25'),
		yearRange: '-90:+0',
		autoclose: true,
		todayHighlight: true,
		dateFormat: 'yy-mm-dd',
		changeMonth: true,
		changeYear: true,
		language: 'es',
		firstDay: 1,
		monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
		dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
	});/*.on('changeDate', function(e){
		$(this).datepicker('hide');
	});*/
		
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
		
	$('#nmrCnta').on('input', function () { 
		this.value = this.value.replace(/[^0-9]/g,'');
	});
	
	$('#txttlfconv').on('input', function () { 
		this.value = this.value.replace(/[^0-9,/]/g, '').replace(/,/g, '/');
	});
	
	$('#txtRmu').on('input', function () {
		this.value = this.value.replace(/[^0-9,.]/g, '').replace(/,/g, '.');
	});
	
	$('#txttlfcelar').on('input', function () { 
		this.value = this.value.replace(/[^0-9,/]/g, '').replace(/,/g, '/');
	});
	
	/*$('.slectInsBcn').select2({
		//var cursoID = $("#selectcurso").val();
		placeholder: 'Seleccione...',
		//minimumResultsForSearch:-1,					
		ajax: {
			url: BASE_URL+'Data_Personal/getInsBnc',
			type: "post",
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					searchTerm: params.term // search term
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		}
	});*/
	
	$('#slectCantonot').select2({
		//var cursoID = $("#selectcurso").val();
		placeholder: 'Seleccione...',
		//minimumResultsForSearch:-1,					
		ajax: {
			url: BASE_URL+'Data_Personal/getCantonLD',
			type: "post",
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					searchTerm: params.term // search term
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		}
	});
	
	$('#slectCantonotAdd').select2({
		//var cursoID = $("#selectcurso").val();
		placeholder: 'Seleccione...',
		//minimumResultsForSearch:-1,					
		ajax: {
			url: BASE_URL+'Data_Personal/getCantonLD',
			type: "post",
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					searchTerm: params.term // search term
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		}
	});
	
	$('#slectCtonGRH').select2({
		//var cursoID = $("#selectcurso").val();
		placeholder: 'Seleccione...',
		//minimumResultsForSearch:-1,					
		ajax: {
			url: BASE_URL+'Data_Personal/getCtonGRH',
			type: "post",
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					searchTerm: params.term // search term
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		}
	});
	
	$('#slectPrrqGRH').select2();
	
	$("#slectCtonGRH").on('change', function(e) {
		e.preventDefault();
		var Cnton=$(this).val();
		$.ajax({
			url: BASE_URL+'Data_Personal/getPrrqGRH',
			type: "post",
			dataType: "json",
			data: {
				postCnton: Cnton // search term
			},
			success: function(data) {
				var slParr="";
				for(var key in data){
					slParr+="<option value="+data[key]['idtbl_parroquia']+">"+data[key]['parroquia']+"</option>";
				}
				$("#slectPrrqGRH").html(slParr);
			}
		});
	});
	
	function selectCargo(){
		$.ajax({
			url: BASE_URL+'Data_Personal/getPrrqGRH',
			type: "post",
			dataType: "json",
			data: {
				postCnton: Cnton // search term
			},
			success: function(data) {
				var slParr="";
				for(var key in data){
					slParr+="<option value="+data[key]['idtbl_parroquia']+">"+data[key]['parroquia']+"</option>";
				}
				$("#slectPrrqGRH").html(slParr);
			}
		});
	}
	
	$('#slectCargo').select2({
		placeholder: 'Seleccione...'
	});
	
	$("#slectMdl").on('change', function(e) {
		e.preventDefault();
		var Modalidad=$(this).val();
		//alert(Modalidad);
		$.ajax({
			url: BASE_URL+'Data_Personal/getCargo',
			type: "post",
			dataType: "json",
			data: {
				postMdad: Modalidad // search term
			},
			success: function(data) {
				var slParr='<option selected disabled value="0">Seleccione...</option>';
				for(var key in data){
					slParr+="<option value="+data[key]['idtbl_cargosrd']+">"+data[key]['tbl_cargo_cargo']+" / "+data[key]['tbl_cargo_area']+"</option>";
				}
				$("#slectCargo").html(slParr);
				//console.log(slParr);
			}
		});
	});
	
	$("#slectCargo").on('change', function(e) {
		e.preventDefault();
		var Cgo=$(this).val();
		
		$.ajax({
			url: BASE_URL+'Data_Personal/getOthData',
			type: "post",
			dataType: "json",
			data: {
				postCgo: Cgo // search term
			},
			success: function(data) {
				var rmu='';
				var dp='';
				for(var key in data){
					rmu+=data[key]['tbl_cargo_rmu'];
					dp+=data[key]['tbl_cargo_departamento'];
				}
				$("#txtRmu").val(rmu);
				$("#txtDpto").val(dp);
				//console.log(rmu+' '+dp);
			}
		});
	});
		
	$('#slectNvelEdu').select2({
		//var cursoID = $("#selectcurso").val();
		placeholder: 'Seleccione...',
		//minimumResultsForSearch:-1,
		ajax: {
			url: BASE_URL+'Data_Personal/getNveledu',
			type: "post",
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					searchTerm: params.term // search term
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		}
	});
	
	$('#slectNvelEduAdd').select2({
		//var cursoID = $("#selectcurso").val();
		placeholder: 'Seleccione...',
		//minimumResultsForSearch:-1,
		ajax: {
			url: BASE_URL+'Data_Personal/getNveledu',
			type: "post",
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					searchTerm: params.term // search term
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		}
	});
	
	$("#btnaddMnal").click(function(){
		$("#txtced").removeAttr('disabled');
		$("#txtnom").removeAttr('disabled');
		document.getElementById("txtced").focus();
	});
	
	$('#txtced').on('input', function () { 
		this.value = this.value.replace(/[^0-9]/g,'');
	});
	
	$("#btn_guardaremp").click(function(){
		var formData = new FormData();    
		formData.append('postCedadd', $("#txtced").val());
		formData.append('postNomadd', $("#txtnom").val());
		formData.append('postFchaNac', $("#slectFchanacto").val());
		formData.append('postGenero', $('#slectGenero :selected').val());
		formData.append('postTposangre', $('#slectTposangre :selected').val());
		formData.append('postEstcivil', $('#slectEstcivil :selected').val());
		formData.append('postEtnia', $('#slectEtnia :selected').val());
		formData.append('postEmail', $('#txtmail').val());
		formData.append('postTlfconv', $('#txttlfconv').val());
		formData.append('postTlfcelar', $('#txttlfcelar').val());
		formData.append('postNacionalidad', $('#slectNacionalidad :selected').val());
		formData.append('postLgarDomi', $('#slectCantonot :selected').val());
		
		formData.append('postDiscp', $('#slectDiscp :selected').val());
		formData.append('postpcjeDiscp', $('#pcjDisc').val());
		formData.append('postnmrCdis', $('#nmrCdis').val());
		
		formData.append('postInstBanc', $('#slectInsBcn :selected').val());
		formData.append('posttpoCnta', $('#slectTpoCnta :selected').val());
		formData.append('postNmroCta', $("#nmrCnta").val());
		
		formData.append('postnvelEdu', $("#slectNvelEdu :selected").val());
		formData.append('posttlobtndo', $("#txtTtloObt").val());
		formData.append('postcargo', $("#slectCargo :selected").val());
		formData.append('postrmu', $("#txtRmu").val());
		formData.append('postfchaing', $("#slectfchaEnt").val());
		formData.append('postfchasal', $("#slectfchaSal").val());
		formData.append('postinfsri', $("#txtinfSRI").val());
		formData.append('postobser', $("#txtObsv").val());
		
		$("#btn_guardar").prop('disabled', true);								
		$.ajax({
			url: BASE_URL+'Data_Personal/addPostpersonal',
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
						$("#btn_guardar").removeAttr('disabled');
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
						$("#btn_guardar").removeAttr('disabled');
					});
				}
				if(dta.data.messageced=='ok'){
					$('#txtced').parent().removeClass('has-error');
					$("#btn_guardar").removeAttr('disabled');
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
						$("#btn_guardar").removeAttr('disabled');
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
					/*TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);*/
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	});
	
	$("#btnGrdinfpers").click(function(){
		var formData = new FormData();    
		formData.append('postCedadd', $("#txtced").val());
		formData.append('postNomadd', $("#txtnom").val());
		formData.append('postFchaNac', $("#slectFchanacto").val());
		formData.append('postGenero', $('#slectGenero :selected').val());
		formData.append('postTposangre', $('#slectTposangre :selected').val());
		formData.append('postEstcivil', $('#slectEstcivil :selected').val());
		formData.append('postEtnia', $('#slectEtnia :selected').val());
		formData.append('postEmail', $('#txtmail').val());
		formData.append('postTlfconv', $('#txttlfconv').val());
		formData.append('postTlfcelar', $('#txttlfcelar').val());
		formData.append('postNacionalidad', $('#slectNacionalidad :selected').val());
		formData.append('postLgarDomi', $('#slectCantonot :selected').val());
		formData.append('postNveledu', $('#slectNvelEdu :selected').val());
		formData.append('postTloobt', $('#txtTtloObt').val());
		formData.append('postCons', $('#sltcons :selected').val());
		
		formData.append('postDiscp', $('#slectDiscp :selected').val());
		formData.append('postpcjeDiscp', $('#pcjDisc').val());
		formData.append('postnmrCdis', $('#nmrCdis').val());
				
		$("#btnGrdinfpers").prop('disabled', true);								
		$.ajax({
			url: BASE_URL+'Data_Personal/addPostempidn',
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
					}).then((rslt) => {
						$('#infFnanemp').trigger('click');
						$('#btnGrdinfpers').css("display", "none");
						$("#addEmpinf").addClass("disabledTab");
						$('#btnGrdinffin').show();
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
						$("#btnGrdinfpers").removeAttr('disabled');
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
						$("#btnGrdinfpers").removeAttr('disabled');
					});
				}
				if(dta.data.messageced=='ok'){
					$('#txtced').parent().removeClass('has-error');
					$("#btnGrdinfpers").removeAttr('disabled');
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
						$("#btnGrdinfpers").removeAttr('disabled');
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
					/*TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);*/
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	});
	
	
	$("#btnGrdinfpersAdd").click(function(){
		var formData = new FormData();    
		formData.append('postCedadd', $("#txtced").val());
		formData.append('postNomadd', $("#txtnom").val());
		formData.append('postFchaNac', $("#slectFchanactoAdd").val());
		formData.append('postGenero', $('#slectGeneroAdd :selected').val());
		formData.append('postTposangre', $('#slectTposangreAdd :selected').val());
		formData.append('postEstcivil', $('#slectEstcivilAdd :selected').val());
		formData.append('postEtnia', $('#slectEtniaAdd :selected').val());
		formData.append('postEmail', $('#txtmailAdd').val());
		formData.append('postTlfconv', $('#txttlfconvAdd').val());
		formData.append('postTlfcelar', $('#txttlfcelarAdd').val());
		formData.append('postNacionalidad', $('#slectNacionalidadAdd :selected').val());
		formData.append('postLgarDomi', $('#slectCantonotAdd :selected').val());
		formData.append('postNveledu', $('#slectNvelEduAdd :selected').val());
		formData.append('postTloobt', $('#txtTtloObtAdd').val());
		formData.append('postCons', $('#sltconsAdd :selected').val());
		
		formData.append('postDiscp', $('#slectDiscpAdd :selected').val());
		formData.append('postpcjeDiscp', $('#pcjDiscAdd').val());
		formData.append('postnmrCdis', $('#nmrCdisAdd').val());
		
		$.ajax({
			url: BASE_URL+'Data_Personal/addPostempidn',
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
					}).then((rslt) => {
						$('.close').trigger('click');
						$('#btnGrdinfpersAdd').css("display", "none");
						$("#btnGrdinfpersAdd").removeAttr('disabled');
						//$("#addEmpinf").addClass("disabledTab");
						//$('#btnGrdinffin').show();
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
						$("#btnGrdinfpersAdd").removeAttr('disabled');
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
						$("#btnGrdinfpersAdd").removeAttr('disabled');
					});
				}
				if(dta.data.messageced=='ok'){
					$('#txtced').parent().removeClass('has-error');
					$("#btnGrdinfpersAdd").removeAttr('disabled');
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
						$("#btnGrdinfpersAdd").removeAttr('disabled');
					});
				}
				if(dta.data.message=='iddefinido'){
					Swal.fire({
						title: 'Ya se agrego el registro!',
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
					Table.ajax.reload(function(){
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
	
	
	$("#btnGrdinffin").click(function(){
		var formData = new FormData();    
		formData.append('posttpoBnc', $('#slectTpoBcn').val());
		formData.append('postInstBanc', $('#slectInsBcn').val());
		formData.append('posttpoCnta', $('#slectTpoCnta :selected').val());
		formData.append('postNmroCta', $("#nmrCnta").val());
		formData.append('postinfsri', $('#slectInfSri :selected').val());
				
		$("#btn_guardar").prop('disabled', true);								
		$.ajax({
			url: BASE_URL+'Data_Personal/addPostinfFin',
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
					}).then((rslt) => {
						location.reload();
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
					});
				}
				if(dta.data.message=='errdup'){
					Swal.fire({
						title: 'La cuenta que esta intentando ingresar ya se registro!',
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
					/*TablePersonal.ajax.reload(function(){
						$(".paginate_button > a").on("focus",function(){
							$(this).blur();
						});
					}, false);*/
				}; 
				return xhr; 
			},
			enctype: 'multipart/form-data',
			processData: false, // tell jQuery not to process the data
			contentType: false // tell jQuery not to set contentType
		});
	});
		
	$("#btnaddMnal").click(function(){
		$("#txtced").removeAttr('disabled');
		$("#txtnom").removeAttr('disabled');
		document.getElementById("txtced").focus();
	});
	
	$('#slectDiscp').on('change', function() {
		var valSlt=$(this).find(":selected").val();
		if(valSlt!='NO'){
			$("#pcjDiscp").css("display", "block");
			$("#nmrCndis").css("display", "block");
		}else{
			$("#pcjDiscp").css("display", "none");
			$("#nmrCndis").css("display", "none");
		}
	});
	
	$('#slectDiscpAdd').on('change', function() {
		var valSlt=$(this).find(":selected").val();
		if(valSlt!='NO'){
			$("#pcjDiscpAdd").css("display", "block");
			$("#nmrCndisAdd").css("display", "block");
		}else{
			$("#pcjDiscpAdd").css("display", "none");
			$("#nmrCndisAdd").css("display", "none");
		}
	});
	
	$('#slectDiscpact').on('change', function() {
		var valSlt=$(this).find(":selected").val();
		if(valSlt!='NO'){
			$("#pcjDiscp").css("display", "block");
			$("#nmrCndis").css("display", "block");
		}else{
			$("#pcjDiscp").css("display", "none");
			$("#nmrCndis").css("display", "none");
			$("#pcjDiscact").val('NA');
			$("#nmrCdisact").val('NA');
		}
	});
	
	$('#txtRmu').on('input', function () {
	  this.value = this.value.replace(/[^0-9,.]/g, '').replace(/,/g, '.');
	});
	
	var f = new Date();
	var dateCurrent=f.getFullYear() + "/"+ (f.getMonth()+1) + "/" + f.getDate();
	//alert(dateCurrent)
	
	$('#slectfchaEnt').datepicker({
		autoclose: true,
		todayHighlight: true,
		dateFormat: 'yy-mm-dd',
		changeMonth: true,
		changeYear: true,
		language: 'es',
		firstDay: 1,
		onSelect: function(dateText, inst) {
		  // Acciones a realizar cuando se selecciona una fecha
		  console.log(dateText);
		  $('#slectfchaSal').removeAttr('disabled');
		  // Aquí puedes agregar el código que deseas ejecutar cuando se seleccione una fecha
		},
		monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
		dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
	}).on('changeDate', function(e){
		$(this).datepicker('hide');
	});
			
	$('#slectfchaSal').datepicker({
		autoclose: true,
		todayHighlight: true,
		dateFormat: 'yy-mm-dd',
		changeMonth: true,
		changeYear: true,
		language: 'es',
		firstDay: 1,
		monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
		dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
	}).on('changeDate', function(e){
		$(this).datepicker('hide');
	});
	
	function reemplazarEspaciosPorGuiones(cadena) {
		return cadena.replace(/\s/g, "_");
	}
	
	var Table = $('#empTable').DataTable({
		'tabIndex': '',
		'responsive': false,
		'processing': true,
		'serverSide': true,
		'serverMethod': 'post',
		//'searching': false, // Remove default Search Control
		//'lengthChange': false,
		'ajax': {
		  'url':BASE_URL+'Data_Personal/empListempleado'
		},
		'order': [[ 0, 'desc' ]],
		'columnDefs': [
          { 'orderable': false, 'targets': 0 },//ocultar para columna 0
          { 'orderable': false, 'targets': 1 },//ocultar para columna 1
          { 'orderable': false, 'targets': 2 },//ocultar para columna 1
          { 'orderable': false, 'targets': 3 },//ocultar para columna 1
          { 'orderable': false, 'targets': 4 },//ocultar para columna 1
          { 'orderable': false, 'targets': 5 },//ocultar para columna 1
          { 'orderable': false, 'targets': 6 },//ocultar para columna 1
          //`Asi para cada columna`...
        ],
		'columns': [
		   { data: 'idtbl_empleado' },
		   { data: 'tbl_empleado_cedula' },
		   { data: 'tbl_empleado_apellnomb' },
		   { data: 'tbl_empleado_cantonstr' },
		   { data: 'tbl_empleado_cgo' },
		   { data: 'tbl_empleado_consejeria' },
		   { data: 'tbl_empleado_obsv' }
		],
		'createdRow': function( row, data, dataIndex ) {
		  $('td:eq(0)', row).html(
			'<div class="btn-group">'
			  +'<a type="button" tooltip="Editar" flow="down" id="btn_editarEmp" class="btn btn-warning btn-flat AddActMdal"><i class="fa fa-check-square-o" aria-hidden="true"></i></a>'
			  //+'<a type="button" id="btn_eliminarUsr" class="btn btn-danger btn-flat"><i class="fa fa-trash-o"></i></a>'
			  +'</div>'
		  );
		},
		'rowCallback': function( row, data, index ) {
			var ctratCnfirmar=data.tbl_empleado_confirmar;
			var ctratEstado=data.tbl_empleado_stadoconfir;
			var ctratModalidad=data.tbl_empleado_modalidad;
			console.log(ctratEstado);
			let newctratModalidad = (ctratModalidad !== null) ? reemplazarEspaciosPorGuiones(data.tbl_empleado_modalidad) : 'NA';
			if(newctratModalidad=='Sin_relación_de_dependencia' && ctratEstado==1 && ctratCnfirmar=='Si'){
				$(row).addClass('resaltar');
			}
			/*if(newctratModalidad=='Sin_relación_de_dependencia' && ctratCnfirmar=='No'){
				$(row).addClass('resaltar-noacepto');
			}*/
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
	
	var tbldltUsr = function(tbody, table){
		$(tbody).on("click", "a#btn_eliminarUsr", function(){
			var data = table.row($(this).parents("tr")).data();
			var idtbemp = data.idtbl_empleado;
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
						url: BASE_URL+'Data_Personal/deleteEmpleado',
						type: 'POST',
						data: {
							id:idtbemp
						},
						success: function(data) {
							console.log(data);
						},xhr: function(){ 
							// get the native XmlHttpRequest object 
							var xhr = $.ajaxSettings.xhr() ; 
							// set the onload event handler 
							xhr.upload.onload = function(){ 
							console.log('DONE!');
								Table.ajax.reload(function(){
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
	tbldltUsr('#empTable', Table);
	
	var tbleditEmp = function(tbody, table){
		$(tbody).on("click", "a#btn_editarEmp", function(){
			var data = table.row($(this).parents("tr")).data();
			var idtbEmpl = data.idtbl_empleado;
			//alert(idtbEmpl);
			var nroident = data.tbl_empleado_cedula;
			var nombres = data.tbl_empleado_apellnomb;
			var fchanac = data.tbl_empleado_fchanac;
			var genero = data.tbl_empleado_gnro;
			var tposangre = data.tbl_empleado_tpsangre;
			var estcivil = data.tbl_empleado_estcivil;
			var etnia = data.tbl_empleado_etnia;
			var email = data.tbl_empleado_email;
			var tlfnoConv = data.tbl_empleado_tlfnoConv;
			var tlfnoCelar = data.tbl_empleado_tlfnoCelar;
			var nacionalidad = data.tbl_empleado_nacionalidad;
			var lgardomicilio = data.tbl_empleado_lugardomicilio;
			var nvelEduc = data.tbl_empleado_nveledu;
			var titloObt = data.tbl_empleado_tloobt;
			var discdad = data.tbl_empleado_discapacidad;
			var pordisc = data.tbl_empleado_porcdisc;
			var numcndis = data.tbl_empleado_numcndis;
			var tpoIntfin = data.tbl_empleado_tpoFin;
			var insBnc = data.tbl_empleado_instbanc;
			var tpoCnta = data.tbl_empleado_tpocuenta;
			var infSri = data.tbl_empleado_infsri;
			var numCnta = data.tbl_empleado_numcuenta;
			console.log(insBnc);
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
			
			var etnianew='';
			if (({ Mestizo : 1, Mestiza : 1 })[etnia]) {
				etnianew='Mestizo (a)';
			}
			if (({ Montubio : 1, Montubia : 1 })[etnia]) {
				etnianew='Montubio (a)';
			}
			if (({ Afroecuatoriano : 1, Afroecuatoriana : 1 })[etnia]) {
				etnianew='Afroecuatoriano (a)';
			}
			if (({ 'Indigena' : 1 })[etnia]) {
				etnianew='Indigena';
			}
			if (({ Blanco : 1, Blanca : 1 })[etnia]) {
				etnianew='Blanco (a)';
			}
			if (({ Mulato : 1, Mulata : 1 })[etnia]) {
				etnianew='Mulato (a)';
			}
			if (({ 'Otro' : 1 })[etnia]) {
				etnianew='Otro';
			}
			
			var discdadnew='';
			var discdadvalnew='';
			if (({ 'NO' : 1 })[discdad]) {
				//discdadnew='Ninguna';
				discdadvalnew='NO';
			}else{
				//discdadnew=discdad;
				discdadvalnew=discdad;
			}
			
			var edad=calcularEdad(fchanac);
			
			if(discdad!='NO'){
				$("#pcjDiscp").css("display", "initial");
				$("#nmrCndis").css("display", "initial");
			}else{
				$("#pcjDiscp").css("display", "none");
				$("#nmrCndis").css("display", "none");
				var pordisc='NA';
				var numcndis='NA';
			}
			
			$("#txtidupd").val(idtbEmpl);
			$("#txtcedupd").val(nroident);
			$("#txtnomupd").val(nombres);
			$("#slectFchanacto").val(fchanac);
			$("#txtedadupd").val(edad);
			$('#slectGeneroupd').val(genero);
			$('#slectTposangreupd').val(tposangre);
			$('#slectEstcivilupd').val(estnew);
			$('#slectEtniaupd').val(etnianew);
			$('#txtemailupd').val(email);
			$('#txttelfconv').val(tlfnoConv);
			$('#txttelfcel').val(tlfnoCelar);
			$('#slectNacionalidad').val(nacionalidad);
			$("#slectCantonotact").append ('<option selected="selected" value="'+lgardomicilio+'">'+lgardomicilio+'</option>');
			$("#slectNvelEdu").append ('<option selected="selected" value="'+nvelEduc+'">'+nvelEduc+'</option>');
			$('#txtTtloObt').val(titloObt);
			
			$('#slectDiscpact').val(discdadvalnew);
			$("#pcjDiscact").val(pordisc);
			$("#nmrCdisact").val(numcndis);
			
			$('#slectTpoBcn').val(tpoIntfin);
			$("#txtInsBcn").val(insBnc);
			$("#slectTpoCnta").val(tpoCnta);
			$("#slectInfSri").val(infSri);
			$("#nmrCnta").val(numCnta);
						
			/*if(({ Pasaporte : 1 })[tpoDoc]){
				$("#txtcedupd").attr("readonly", false); 
			}else{
				$("#txtcedupd").attr("readonly", true); 
			}*/
			$('#slectCantonotact').select2('close');
			$("#mdaddEmp").modal("show");
			//$('#slectCantonotact').select2('open');
			$("#btn_grdPr").removeAttr('disabled');
		});
	}
	tbleditEmp('#empTable', Table);
	
	$("#btnUpload").click(function(){
		$("#myModaladj").modal("show");
		$("#file").val(null);
	});
	
	//$('#slectCantonot').select2().val('24 de Mayo').trigger('change');
	//$("#slectCantonot").append ('<option selected="selected" value="Aguarico">Aguarico</option>')
	//$("#mdaddPers").modal("show");
		//unsetId();
		//$("#btn_grdPr").removeAttr('disabled');
	
	/*$('.dateNactomst').daterangepicker({
        locale:{
            format:"YYYY-MM-DD"
        },
        singleDatePicker:true,
        showDropdowns:true,
        timePicker:false,
        minYear:2000,
        maxYear:moment().format('YYYY')
    },function(inicio,fin){
        //console.log(inicio.format('YYYY-MM-DD hh:mm:ss')+" - "+fin.format('YYYY-MM-DD hh:mm:ss'));
    });*/
	
	/*Actualizar*/
	$('#slectCantonotact').select2({
		//var cursoID = $("#selectcurso").val();
		placeholder: 'Seleccione...',
		//minimumResultsForSearch:-1,					
		ajax: {
			url: BASE_URL+'Data_Personal/getCantonLD',
			type: "post",
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					searchTerm: params.term // search term
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		}
	});
	
	$(".clickTab a").click(function(){
		var tabAct=$(this).attr("data-id");
		if(tabAct=='tab1'){
			$('#btnActemp').css("display", "initial");
			$('#btnActdtfin').css("display", "none");
			$('#btnActdtGRH').css("display", "none");
		}
		if(tabAct=='tab2'){
			$('#btnActemp').css("display", "none");
			$('#btnActdtfin').css("display", "initial");
			$('#btnActdtGRH').css("display", "none");
		}
		if(tabAct=='tab3'){
			$('#btnActemp').css("display", "none");
			$('#btnActdtfin').css("display", "none");
			$('#btnActdtGRH').css("display", "initial");
		}
	});
	$("#btnActemp").click(function(){
		var formData = new FormData();    
		formData.append('postid', $("#txtidupd").val());
		formData.append('postFchaNac', $("#slectFchanacto").val());
		formData.append('postGenero', $('#slectGeneroupd :selected').val());
		formData.append('postTposangre', $('#slectTposangreupd :selected').val());
		formData.append('postEstcivil', $('#slectEstcivilupd :selected').val());
		formData.append('postEtnia', $('#slectEtnia :selected').val());
		formData.append('postEmail', $('#txtemailupd').val());
		formData.append('postTlfconv', $('#txttelfconv').val());
		formData.append('postTlfcelar', $('#txttelfcel').val());
		formData.append('postNacionalidad', $('#slectNacionalidad :selected').val());
		formData.append('postLgarDomi', $('#slectCantonotact :selected').val());
		formData.append('postNveledu', $('#slectNvelEdu :selected').val());
		formData.append('postTloobt', $('#txtTtloObt').val());
		
		formData.append('postDiscp', $('#slectDiscpact :selected').val());
		formData.append('postpcjeDiscp', $('#pcjDiscact').val());
		formData.append('postnmrCdis', $('#nmrCdisact').val());
				
		//$("#btnActemp").prop('disabled', true);								
		$.ajax({
			url: BASE_URL+'Data_Personal/actPostemp',
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
					}).then((rslt) => {
						$('#btnActemp').css("display", "none");
						$('#btnActdtGRH').css("display", "none");
						//$("#tab1").addClass("disabled");
						//$("#tab2").removeClass("disabled");
						//$('#tab2').trigger('click');
						$('#btnActdtfin').css("display", "initial");
					});
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					Table.ajax.reload(function(){
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
	
	$("#btnActdtfin").click(function(){
		var formData = new FormData();    
		formData.append('postid', $("#txtidupd").val());
		formData.append('postEntFin', $("#slectTpoBcn :selected").val());
		formData.append('postInsBnc', $("#txtInsBcn").val());
		formData.append('postTpoCnta', $('#slectTpoCnta :selected').val());
		formData.append('postInfSri', $('#slectInfSri :selected').val());
		formData.append('postNmCnta', $('#nmrCnta').val());
						
		$("#btnActemp").prop('disabled', true);								
		$.ajax({
			url: BASE_URL+'Data_Personal/actPostdtFin',
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
					}).then((rslt) => {
						$('#btnActemp').css("display", "initial");
						$('#btnActdtGRH').css("display", "none");
						$('#btnActdtfin').css("display", "none");
						//$('#tab1').trigger('click');
						//$('#mdaddEmp').modal().hide();
						//$('#btnActinffin').show();
					});
				}
			},xhr: function(){ 
				// get the native XmlHttpRequest object 
				var xhr = $.ajaxSettings.xhr() ; 
				// set the onload event handler 
				xhr.upload.onload = function(){ 
					console.log('DONE!');
					Table.ajax.reload(function(){
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
	
	$("#btnActdtGRH").click(function(){
		var slectCTGHR=$('#slectCtonGRH :selected').val();
		var slectPRRGHR=$('#slectPrrqGRH :selected').val();
		var RMU=$('#txtRmu').val();
		var Zna=$('#txtZna').val();
		var CdRcto=$('#txtCdRcto').val();
		var NmRcto=$('#txtNmRcto').val();
		var FcEnt=$("#slectfchaEnt").val();
			
		if(typeof(slectCTGHR)!="undefined" && typeof(slectPRRGHR)!="undefined" && RMU.length>0 && FcEnt.length>0){
			var fecha1 = moment($("#slectfchaEnt").val());
			var fecha2 = moment($("#slectfchaSal").val());
			if (fecha1.isBefore(fecha2)) {
				var formData = new FormData();    
				formData.append('postid', $("#txtidupd").val());
				formData.append('postCnt', $("#slectCtonGRH :selected").text());
				formData.append('postCntVal', $("#slectCtonGRH :selected").val());
				formData.append('postPrr', $('#slectPrrqGRH :selected').text());
				formData.append('postCrgo', $('#slectCargo :selected').text());
				formData.append('postCrgoVal', $('#slectCargo :selected').val());
				formData.append('postMdlidad', $('#slectMdl').val());
				formData.append('postRMU', $('#txtRmu').val());
				formData.append('postZna', $('#txtZna').val());
				formData.append('postCodrcto', $('#txtCdRcto').val());
				formData.append('postNmrcto', $('#txtNmRcto').val());
				formData.append('postFing', $("#slectfchaEnt").val());
				formData.append('postFsal', $("#slectfchaSal").val());
				formData.append('postCfCnto', $("#slectContrato :selected").val());
				formData.append('postObser', $("#txtObsv").val());
				formData.append('postDpto', $("#txtDpto").val());
				
								
				//$("#btnActemp").prop('disabled', true);								
				$.ajax({
					url: BASE_URL+'Data_Personal/actPostdtGHR',
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
							}).then((rslt) => {
								//$('#btnActemp').css("display", "initial");
								//$('#btnActdtGRH').css("display", "none");
								//$('#btnActdtfin').css("display", "none");
								//$('#tab1').trigger('click');
								//$('#mdaddEmp').modal().hide();
								//$('#btnActinffin').show();
								$('.close').trigger('click');
							});
						}
						if(dta.data.message=='errobs'){
							Swal.fire({
								title: 'Describa en el campo de observación porque no acepto el contrato!',
								icon: 'warning',
								allowOutsideClick: false,
								allowEscapeKey: false,
								showCancelButton: false,
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'Ok'
							}).then((rslt) => {
								$('#txtObsv').css("border-color", "#f00");
								$('#txtObsv').css("background-color", "rgba(247, 0, 0, 0.18)");
								//$('#btnActdtGRH').css("display", "none");
								//$('#btnActdtfin').css("display", "none");
								//$('#tab1').trigger('click');
								//$('#mdaddEmp').modal().hide();
								//$('#btnActinffin').show();
							});
						}
						if(dta.data.message=='contComp'){
							Swal.fire({
								title: 'Ocupo capacidad maxima permitida por cargo!',
								icon: 'warning',
								allowOutsideClick: false,
								allowEscapeKey: false,
								showCancelButton: false,
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'Ok'
							}).then((rslt) => {
								//$('#txtObsv').css("border-color", "#f00");
								//$('#txtObsv').css("background-color", "rgba(247, 0, 0, 0.18)");
								//$('#btnActdtGRH').css("display", "none");
								//$('#btnActdtfin').css("display", "none");
								//$('#tab1').trigger('click');
								//$('.close').trigger('click');
								//$('#btnActinffin').show();
							});
						}
						if(dta.data.message=='noasig'){
							Swal.fire({
								title: 'No se ha asignado el cargo',
								icon: 'warning',
								allowOutsideClick: false,
								allowEscapeKey: false,
								showCancelButton: false,
								confirmButtonColor: '#3085d6',
								confirmButtonText: 'Ok'
							}).then((rslt) => {
								//$('#txtObsv').css("border-color", "#f00");
								//$('#txtObsv').css("background-color", "rgba(247, 0, 0, 0.18)");
								//$('#btnActdtGRH').css("display", "none");
								//$('#btnActdtfin').css("display", "none");
								//$('#tab1').trigger('click');
								//$('.close').trigger('click');
								//$('#btnActinffin').show();
							});
						}
					},xhr: function(){ 
						// get the native XmlHttpRequest object 
						var xhr = $.ajaxSettings.xhr() ; 
						// set the onload event handler 
						xhr.upload.onload = function(){ 
							console.log('DONE!');
							Table.ajax.reload(function(){
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
			}else if (fecha1.isAfter(fecha2)) {
				Swal.fire({
					title: 'Fecha de entrada no puede ser posterior a la fecha de salida',
					icon: 'warning',
					allowOutsideClick: false,
					allowEscapeKey: false,
					showCancelButton: false,
					confirmButtonColor: '#3085d6',
					confirmButtonText: 'Ok'
				});
			}else {
				Swal.fire({
					title: 'Fecha de entrada y salida no pueden ser iguales',
					icon: 'warning',
					allowOutsideClick: false,
					allowEscapeKey: false,
					showCancelButton: false,
					confirmButtonColor: '#3085d6',
					confirmButtonText: 'Ok'
				});
			}
		}else{
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
	});
	
	$("#mdaddEmp").on("hidden.bs.modal", function () {
		$("#tab1").trigger('click');
		$("#btnActemp").css("display", "initial");
		$("#btnActdtGRH").css("display", "none");
		$("#btnActdtfin").css("display", "none");
		$('#txtObsv').css("border-color", "");
		$('#txtObsv').css("background-color", "");
		/*var selectElement = $('#slectDiscpact');

		// Step 2: Clear the options of the select element
		selectElement.empty();

		// Step 3: Fetch the updated data from your data source or API
		// ... Your code to fetch the updated data ...

		// Assume the fetched data is in the following format
		var newData = [
		  { id: "NO", name: 'Ninguna' },
		  { id: "Fisica motora", name: 'Fisica motora' },
		  { id: "Intelectual", name: 'Intelectual' },
		  { id: "Auditiva", name: 'Auditiva' },
		  { id: "Mental psicosocial", name: 'Mental psicosocial' },
		  { id: "Visual", name: 'Visual' },
		  { id: "Lenguaje", name: 'Lenguaje' }
		];
		// Step 4: Iterate through the fetched data and dynamically create option elements
		$.each(newData, function(index, item) {
		  var option = $('<option>').val(item.id).text(item.name);
		  selectElement.append(option);
		});*/
	});
	
	$('#btnaddCgo').click(function(){
		
		$("#modal-permiso").modal("show");
		/*Swal.fire({
			title: 'Agregar Cargo!',
			allowOutsideClick: false,
			allowEscapeKey: false,
			showCancelButton: true,
			input: 'text',
			confirmButtonColor: '#3085d6',
			confirmButtonText: '<i class="fa fa-floppy-o"></i> Guardar',
			inputValidator: nombre => {
				if (!nombre) {
					return "Campo vacio";
				} else {
					return undefined;
				}
			}
		}).then((result) => {
			if (result.value) {
			  //alert("Result: " +result.value);
				$.ajax({
					url: BASE_URL+'Data_Personal/addCgo',
					type: 'POST',
					data: {
						dataValue:result.value
					},
					success: function(data) {
						console.log(data);
					}
				});
			}else{
				
			}
		});*/
		/*Swal.fire({
			title: "Agregar Cargo!",
			allowOutsideClick: false,
			allowEscapeKey: false,
			//text: "Write something interesting:",
			input: 'text',
			showCancelButton: true        
		}).then((result) => {
			if (result.value) {
			  //alert("Result: " +result.value);
				$.ajax({
					url: BASE_URL+'Data_Personal/addCgo',
					type: 'POST',
					data: {
						dataValue:result.value
					},
					success: function(data) {
						console.log(data);
					}
				});
			}
		});*/
	});
		
	$('#mdNewEmp').on('shown.bs.modal', function() {
		//$(this).off('focusin.modal');
		$('#ui-datepicker-div').appendTo($('#mdNewEmp'));
		$(".inpEmpty").val("");
	});
			
	$('#mdaddEmp').on('shown.bs.modal', function() {
		//$(this).off('focusin.modal');
		$('#ui-datepicker-div').appendTo($('#mdaddEmp'));
	});
		
	/*$('#slectCargo').select2({
		//var cursoID = $("#selectcurso").val();
		placeholder: 'Seleccione...',
		//minimumResultsForSearch:-1,					
		ajax: {
			url: BASE_URL+'Data_Personal/getCgoMD',
			type: "post",
			dataType: 'json',
			delay: 250,
			data: function (params) {
				return {
					searchTerm: params.term // search term
				};
			},
			processResults: function (data) {
				return {
					results: data
				};
			},
			cache: true
		}
	});*/
	
	$('#slectfchaSal').on('change', function() {
		var fchaSal=$(this).val();
		var fchaEnt=$('#slectfchaEnt').val();
		if(fchaSal.length>0 && fchaEnt.length>0){
			var fecha1 = new Date(fchaEnt.substring(0,4),fchaEnt.substring(5,7)-1,fchaEnt.substring(8,10));
			var fecha2 = new Date(fchaSal.substring(0,4),fchaSal.substring(5,7)-1,fchaSal.substring(8,10));
			
			document.getElementById('fecha1').value =  fecha1;
			document.getElementById('fecha2').value =  fecha2;
			
			var diasDif = fecha2.getTime() - fecha1.getTime();
			var dias = Math.round(diasDif/(1000 * 60 * 60 * 24));
			
			document.getElementById('txtDiaContrato').value=dias+1;
		}
	});
	
	$("#addInfPersonal").click(function(){
		$("#mdNewEmp").modal("show");
		$("#imgb64").attr("src","https://images.pexels.com/photos/62307/air-bubbles-diving-underwater-blow-62307.jpeg?auto=compress&amp;cs=tinysrgb&amp;h=650&amp;w=940");
		$("#txtced").attr('disabled','disabled');
		$("#txtnom").attr('disabled','disabled');
		//$("#file").val(null);
	});
	
	var Tblempmst = $('#empTblmst').DataTable({
		'tabIndex': '',
		'responsive': false,
		'processing': true,
		'serverSide': true,
		'serverMethod': 'post',
		//'searching': false, // Remove default Search Control
		//'lengthChange': false,
		'ajax': {
		  'url':BASE_URL+'Data_Personal/empListempmstr'
		},
		'order': [[ 0, 'desc' ]],
		'columnDefs': [
		  { 'orderable': false, 'targets': 0 },//ocultar para columna 0
		  { 'orderable': false, 'targets': 1 },//ocultar para columna 1
		  { 'orderable': false, 'targets': 2 },//ocultar para columna 1
		  { 'orderable': false, 'targets': 3 },//ocultar para columna 1
		  { 'orderable': false, 'targets': 4 },//ocultar para columna 1
		  { 'orderable': false, 'targets': 5 },//ocultar para columna 1
		  { 'orderable': false, 'targets': 6 },//ocultar para columna 1
		  //`Asi para cada columna`...
		],
		'columns': [
		   { data: 'idtbl_empleado' },
		   { data: 'tbl_empleado_cedula' },
		   { data: 'tbl_empleado_apellnomb' },
		   { data: 'tbl_empleado_cantonstr' },
		   { data: 'tbl_empleado_cgo' },
		   { data: 'tbl_empleado_consejeria' },
		   { data: 'tbl_empleado_obsv' }
		],
		'createdRow': function( row, data, dataIndex ) {
		  $('td:eq(0)', row).html(
			'<div class="btn-group">'
			  +'<a type="button" tooltip="Editar" flow="down" id="btn_editarEmp" class="btn btn-warning btn-flat"><i class="fa fa-check-square-o" aria-hidden="true"></i></a>'
			  //+'<a type="button" id="btn_eliminarUsr" class="btn btn-danger btn-flat"><i class="fa fa-trash-o"></i></a>'
			  +'</div>'
		  );
		},
		/*'rowCallback': function( row, data, index ) {
			var ctratCnfirmar=data.tbl_empleado_confirmar;
			var ctratEstado=data.tbl_empleado_stadoconfir;
			var ctratModalidad=data.tbl_empleado_modalidad;
			console.log(ctratEstado);
			let newctratModalidad = (ctratModalidad !== null) ? reemplazarEspaciosPorGuiones(data.tbl_empleado_modalidad) : 'NA';
			if(newctratModalidad=='Sin_relación_de_dependencia' && ctratEstado==1 && ctratCnfirmar=='Si'){
				$(row).addClass('resaltar');
			}
		},*/
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
	
	var tbleditEmpmstr = function(tbody, table){
		$(tbody).on("click", "a#btn_editarEmp", function(){
			var data = table.row($(this).parents("tr")).data();
			var idtbEmpl = data.idtbl_empleado;
			//alert(idtbEmpl);
			var nroident = data.tbl_empleado_cedula;
			var nombres = data.tbl_empleado_apellnomb;
			var fchanac = data.tbl_empleado_fchanac;
			var genero = data.tbl_empleado_gnro;
			var tposangre = data.tbl_empleado_tpsangre;
			var estcivil = data.tbl_empleado_estcivil;
			var etnia = data.tbl_empleado_etnia;
			var email = data.tbl_empleado_email;
			var tlfnoConv = data.tbl_empleado_tlfnoConv;
			var tlfnoCelar = data.tbl_empleado_tlfnoCelar;
			var nacionalidad = data.tbl_empleado_nacionalidad;
			var lgardomicilio = data.tbl_empleado_lugardomicilio;
			var nvelEduc = data.tbl_empleado_nveledu;
			var titloObt = data.tbl_empleado_tloobt;
			var discdad = data.tbl_empleado_discapacidad;
			var pordisc = data.tbl_empleado_porcdisc;
			var numcndis = data.tbl_empleado_numcndis;
			var tpoIntfin = data.tbl_empleado_tpoFin;
			var insBnc = data.tbl_empleado_instbanc;
			var tpoCnta = data.tbl_empleado_tpocuenta;
			var infSri = data.tbl_empleado_infsri;
			var numCnta = data.tbl_empleado_numcuenta;
			console.log(insBnc);
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
			
			var etnianew='';
			if (({ Mestizo : 1, Mestiza : 1 })[etnia]) {
				etnianew='Mestizo (a)';
			}
			if (({ Montubio : 1, Montubia : 1 })[etnia]) {
				etnianew='Montubio (a)';
			}
			if (({ Afroecuatoriano : 1, Afroecuatoriana : 1 })[etnia]) {
				etnianew='Afroecuatoriano (a)';
			}
			if (({ 'Indigena' : 1 })[etnia]) {
				etnianew='Indigena';
			}
			if (({ Blanco : 1, Blanca : 1 })[etnia]) {
				etnianew='Blanco (a)';
			}
			if (({ Mulato : 1, Mulata : 1 })[etnia]) {
				etnianew='Mulato (a)';
			}
			if (({ 'Otro' : 1 })[etnia]) {
				etnianew='Otro';
			}
			
			var discdadnew='';
			var discdadvalnew='';
			if (({ 'NO' : 1 })[discdad]) {
				//discdadnew='Ninguna';
				discdadvalnew='NO';
			}else{
				//discdadnew=discdad;
				discdadvalnew=discdad;
			}
			
			var edad=calcularEdad(fchanac);
			
			if(discdad!='NO'){
				$("#pcjDiscp").css("display", "initial");
				$("#nmrCndis").css("display", "initial");
			}else{
				$("#pcjDiscp").css("display", "none");
				$("#nmrCndis").css("display", "none");
				var pordisc='NA';
				var numcndis='NA';
			}
			
			$("#txtidupd").val(idtbEmpl);
			$("#txtcedupd").val(nroident);
			$("#txtnomupd").val(nombres);
			$("#slectFchanacto").val(fchanac);
			$("#txtedadupd").val(edad);
			$('#slectGeneroupd').val(genero);
			$('#slectTposangreupd').val(tposangre);
			$('#slectEstcivilupd').val(estnew);
			$('#slectEtniaupd').val(etnianew);
			$('#txtemailupd').val(email);
			$('#txttelfconv').val(tlfnoConv);
			$('#txttelfcel').val(tlfnoCelar);
			$('#slectNacionalidad').val(nacionalidad);
			$("#slectCantonotact").append ('<option selected="selected" value="'+lgardomicilio+'">'+lgardomicilio+'</option>');
			$("#slectNvelEdu").append ('<option selected="selected" value="'+nvelEduc+'">'+nvelEduc+'</option>');
			$('#txtTtloObt').val(titloObt);
			
			$('#slectDiscpact').val(discdadvalnew);
			$("#pcjDiscact").val(pordisc);
			$("#nmrCdisact").val(numcndis);
			
			$('#slectTpoBcn').val(tpoIntfin);
			$("#txtInsBcn").val(insBnc);
			$("#slectTpoCnta").val(tpoCnta);
			$("#slectInfSri").val(infSri);
			$("#nmrCnta").val(numCnta);
						
			/*if(({ Pasaporte : 1 })[tpoDoc]){
				$("#txtcedupd").attr("readonly", false); 
			}else{
				$("#txtcedupd").attr("readonly", true); 
			}*/
			$('#slectCantonotact').select2('close');
			$("#mdaddEmp").modal("show");
			//$('#slectCantonotact').select2('open');
			$("#btn_grdPr").removeAttr('disabled');
		});
	}
	tbleditEmpmstr('#empTblmst', Tblempmst);
});