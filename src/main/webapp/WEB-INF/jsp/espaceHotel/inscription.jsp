<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Inscription Hôtel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1"> Crée vôtre compte Hôtel
						dans 5 min </span>
				</div>

				<form class="login100-form validate-form" method="POST"
					enctype="multipart/form-data" id="fileUploadForm">
					<input type="hidden" name="type" value="hotel">
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Adresse is required">
						<span class="label-input100">Raison sociale : </span> <input requierd
							class="input100" type="text" id="raison_social" name="raison_social"
							placeholder="Enter Vôtre Raison Sociale "> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Adresse is required">
						<span class="label-input100">Adresse</span> <input requierd
							class="input100" type="text" id="adresse" name="adresse"
							placeholder="Enter Vôtre Adresse"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Prenom is required">
						<span class="label-input100">Qui êtes-vous : </span> <textarea height="132px" requierd
							class="input100" type="text" id="description" name="description"
							placeholder="description"> </textarea><span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="date_creation is required">
						<span class="label-input100">Date de création : </span> <input requierd
							class="input100" type="date" id="date_creation"
							name="date_creation" placeholder="Enter date de création">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Cin is required">
						<span class="label-input100">Email : </span> <input requierd
							class="input100" type="text" id="email" name="email"
							placeholder="Enter Vote Email "> <span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">Password</span> <input requierd
							class="input100" type="password" id="password" name="password"
							placeholder="Enter password : "> <span
							class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Pays is required">
						<span class="label-input100">Pays</span> <input requierd
							class="input100" type="text" id="pays" name="pays"
							placeholder="Enter Pays"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Pays is required">
						<span class="label-input100">Ville</span> <input requierd
							class="input100" type="text" id="ville" name="ville"
							placeholder="Enter ville"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Telephone is required">
						<span class="label-input100">Telephone</span> <input requierd
							class="input100" type="number" id="telephone" name="telephone"
							placeholder="Enter Telephone"> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Email is required">
						<span class="label-input100">etoiles</span> <input requierd
							class="input100" type="number" id="etoiles" name="etoiles"
							placeholder="Enter le nombre  d'étoiles"> <span class="focus-input100"></span>
					</div>



					

					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Image is required">
						<span class="label-input100">Image</span> <input requierd
							class="input100" type="file" name="filename"
							placeholder="Enter Image"> <span class="focus-input100"></span>
					</div>


					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" id="btnSubmit">
							Inscription</button>
					</div>
					<div class="alert alert-success">File uploaded successfully</div>
					<div class="alert alert-danger">File is not uploaded. Error
						occurred</div>
				</form>
			</div>
		</div>
	</div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!-- ajouter par hamza -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<script>
$(document).ready(function () {
	$(".alert-success").hide();
	$(".alert-danger").hide();
	
    $("#btnSubmit").click(function () { 
    	var valider = true;
    	
    	$(":text, :file, :checkbox, select, textarea").each(function() {
    		   if($(this).val() === ""){
    			valider = false;
    			console.log("tous les champs sont obligatoire.");
    		   }
    		   
    	});
       if(valider){
    var form = $('#fileUploadForm')[0];
        var data = new FormData(form);     
        
        var jsonDataObj = {
        	"adresse": $("#adresse").val(),
        	"date_creation": $("#date_creation").val(),
        	"description": $("#description").val(),
        	"email": $("#email").val(),
        	"etoiles": $("#etoiles").val(),
            "password" : $("#password").val(),
            "pays": $("#pays").val(),
            "raison_social": $("#raison_social").val(),
        	"telephone": $("#telephone").val(),
            "ville": $("#ville").val()
        };
        console.log(jsonDataObj);
        data.append("jsondata", JSON.stringify(jsonDataObj));
        console.log(data);
        $("#btnSubmit").prop("disabled", true);
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/hoteles",
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
                window.location.replace("/loginHotel");                
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

</body>
</html>