<!DOCTYPE html>
<%@page import="org.sid.entities.Personne"%>
<html>

<head>
         
        <!-- Standard Meta -->
        <meta charset="utf-8">
        <meta name="format-detection" content="telephone=no" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="css/data-table/bootstrap-editable.css">
        <!-- Site Properties -->
        <title>Ajouter chambres</title>
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon-precomposed" href="images/apple-touch-icon.png">

        <!-- Google Fonts --> 
       	<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic" rel="stylesheet">
       	<link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i&amp;subset=latin-ext" rel="stylesheet">

        <!-- CSS -->
        <link rel="stylesheet" href="css/uikit.min.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/tiny-date-picker.min.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/media-query.css" />
        <link rel="stylesheet" href="css/meanmenu.min.css">

    </head>

    <body id="impx-body">
    	
		<!-- HEADER -->
		<%@ include file="../site/header.jsp" %>
		<c:if test="${sessionScope.hotel == null }">
			<c:redirect url = "loginHotel"/>
		</c:if>
		<!-- HEADER END -->
		
		
		<!-- PAGE HEADING -->
		<div class="impx-page-heading uk-position-relative room-detail">
			<div class="impx-overlay dark"></div>
			<div class="uk-container">
				<div class="uk-width-1-1">
					<div class="uk-flex uk-flex-left">
						<div class="uk-light uk-position-relative uk-text-left page-title">
							<h1 class="uk-margin-remove">Mes Chambres</h1><!-- page title -->
							<p class="impx-text-large uk-margin-remove">Côntrole vôtre chambres !</p><!-- page subtitle -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- PAGE HEADING END -->


		<!-- CONTENT -->
		<!-- ici la formulaire d'ajout -->
		<div class="container-fluid">
			<form class="well form-horizontal" id="fileUploadForm" method="POST"
					enctype="multipart/form-data" >
				<input type="hidden" name="id_hotel"  id="id_hotel"  value="${sessionScope.hotel.id_hotel }" />
				<input type="hidden" name="id_chambre" value="${param.id_chambre }" />
                      <fieldset>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Description :</label>
                            <div class="col-md-4 inputGroupContainer">
                               <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                               <input id="description" name="description" id="description" placeholder="Description"
                                class="form-control" required="true" value="" type="text" height="200">
                                </div>
                            </div>
                           
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Prix en  EURO : </label>
                            <div class="col-md-4 inputGroupContainer">
                               <div class="input-group">
                               	<span class="input-group-addon"><i class="glyphicon glyphicon-euro"></i></span>
                               	<input id="prix" name="prix" placeholder="Prix en  EURO" 
                               	class="form-control" required="true" value="" type="text"></div>
                            </div>
                         </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Promotion : </label>
                            <div class="col-md-4 inputGroupContainer">
                               <div class="input-group">
                               <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                               <input  name="promo" id="promo" placeholder="Promotion" class="form-control"
                                required="true" value="" type="text">
                                </div>
                            </div>
                         </div>
                         <div class="form-group">
                         	<label class="col-md-4 control-label"></label>
                            <div class="col-md-4 inputGroupContainer">
                               <div class="input-group">
                               <span class="input-group-addon">
                               <i class="custom-file-label" for="customFileLang">Choisir la première image</i></span>
                               <input type="file" class="custom-file-input" id="customFileLang" name="filename1" lang="pl-Pl">
                               </div>
                            </div>
                         </div>
                         <div class="form-group">
                         <label class="col-md-4 control-label"></label>
                            <div class="col-md-4 inputGroupContainer">
                               <div class="input-group">
                               <span class="input-group-addon">
                               <i class="custom-file-label" for="customFileLang">Choisir la deuxième image</i></span>
                               <input type="file" class="custom-file-input" id="customFileLang" name="filename2" lang="pl-Pl">
                               </div>
                            </div>
                         </div>
                         <div class="form-group">
                         	<label class="col-md-4 control-label"></label>
                            <div class="col-md-4 inputGroupContainer">
                               <div class="input-group">
                               <span class="input-group-addon">
                               <i class="custom-file-label" for="customFileLang">Choisir la troisième image</i></span>
                               <input type="file" class="custom-file-input" id="customFileLang" name="filename3" lang="pl-Pl">
                               </div>
                            </div>
                         </div>
                      </fieldset>
                      <div style="text-align:center"><input value="ajouter" id="btnSubmit" class="btn btn-success"/></div>
                      
                      <div class="alert alert-success">Chambre Bien Ajoutée</div>
					<div class="alert alert-danger">Problème reccontrer lors de l'ajout, contacter nous. ou réesséyer après</div>
                   </form>
		</div>
		<!-- CONTACT INFO END -->

		<!-- FOOTER -->
		<%@ include file="../site/footer.jsp" %>
		<!-- FOOTER END -->

    	<!-- Javascript -->
    	<script src="js/jquery.js"></script>
        <script src="js/uikit.min.js"></script>
        <script src="js/uikit-icons.min.js"></script>
        <script src="http://maps.google.com/maps/api/js?key=AIzaSyBGb3xrNtz335X4G2KfoOXb-XuIyHAzlVo"></script>
        <script src="js/jquery.gmap.min.js"></script>
        <script src="js/jquery.parallax.min.js"></script>
        <script src="js/tiny-date-picker.min.js"></script>
        <script src="js/date-config.js"></script>
        <script src="js/jquery.barrating.js"></script>
        <script src="js/rating-config.js"></script>
        <script src="js/template-config.js"></script>
        
        
        
        <script src="js/data-table/bootstrap-table.js"></script>
    <script src="js/data-table/tableExport.js"></script>
    <script src="js/data-table/data-table-active.js"></script>
    <script src="js/data-table/bootstrap-table-editable.js"></script>
    <script src="js/data-table/bootstrap-editable.js"></script>
    <script src="js/data-table/bootstrap-table-resizable.js"></script>
    <script src="js/data-table/colResizable-1.5.source.js"></script>
    <script src="js/data-table/bootstrap-table-export.js"></script>
    </body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script>
$(document).ready(function () {
	$(".alert-success").hide();
	$(".alert-danger").hide();
	
    $("#btnSubmit").click(function () { 
    	var valider = true;
    	
    	$("input[type=text]").each(function() {
    		   if($(this).val() === ""){
    			valider = false;
    			console.log("tous les champs sont obligatoire.");
    		   }
    		   
    	});
       if(valider){
    var form = $('#fileUploadForm')[0];
        var data = new FormData(form);     
        
        var jsonDataObj = {
        	"id_hotel": $("#id_hotel").val(),
        	"description": $("#description").val(),
        	"promotion": $("#promo").val(),
        	"prix": $("#prix").val()
        };
        console.log(jsonDataObj);
        data.append("jsondata", JSON.stringify(jsonDataObj));
        console.log(data);
        $("#btnSubmit").prop("disabled", true);
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/chambress",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 600000,
            success: function (data) {
              
                console.log("SUCCESS : ", data);
                $("#btnSubmit").prop("disabled", false);
                $(".alert-success").show();
                $(".alert-danger").hide();
                window.location.replace("/meschambres");                
            },
            error: function (e) {
            	 $(".alert-success").hide();
                 $(".alert-danger").show();
                console.log("ERROR : ", e);
                $("#btnSubmit").prop("disabled", false);
            }
        });
       }
    });
});
</script>
</html>