<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/reservation" user="root" password=""/>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Modifiction Personne</title>
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
	<c:if test="${sessionScope.objetConnecter == null }">
			<c:redirect url = "loginClient"/>
		</c:if>
		
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">Modifier Vôtre Profile </span>
				</div>

				<form class="login100-form validate-form" method="POST"
					enctype="multipart/form-data" id="fileUploadForm">
					<div>
						<img src="${ sessionScope.objetConnecter.image}" class="img-responsive img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
					</div>
					<input type="hidden" name="type" value="client">
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Nom is required">
						<span class="label-input100">Nom</span> <input requierd
							class="input100" type="text" id="nom" name="nom" value="${sessionScope.objetConnecter.nom }"
							placeholder="Enter Nom"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Prenom is required">
						<span class="label-input100">Prenom</span> <input requierd value="${sessionScope.objetConnecter.prenom }"
							class="input100" type="text" id="prenom" name="prenom"
							placeholder="Enter Prenom"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="date_naissance is required">
						<span class="label-input100">Naissance</span> <input requierd
							class="input100" type="date" id="date_naissance"
							name="date_naissance" placeholder="Enter date de naissance" type="date" 
							value="<fmt:formatDate pattern = 'yyyy-MM-dd' value = '${sessionScope.objetConnecter.date_naissance }' />"
							>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Cin is required">
						<span class="label-input100">Cin</span> <input requierd 
							class="input100" type="text" id="cin" name="cin" value="${sessionScope.objetConnecter.cin}"
							placeholder="Enter Cin"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Pays is required">
						<span class="label-input100">Pays</span> <input requierd value="${sessionScope.objetConnecter.pays }"
							class="input100" type="text" id="pays" name="pays"
							placeholder="Enter Pays"> <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Telephone is required">
						<span class="label-input100">Telephone</span> <input requierd value="${sessionScope.objetConnecter.telephone }"
							class="input100" type="number" id="telephone" name="telephone"
							placeholder="Enter Telephone"> <span
							class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Email is required">
						<span class="label-input100">Email</span> <input requierd
							class="input100" type="email" id="email" name="email" value="${sessionScope.objetConnecter.email}"
							placeholder="Enter Email"> <span class="focus-input100"></span>
					</div>



					

					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Image is required">
						<span class="label-input100">Image</span> <input 
							class="input100" type="file" name="filename"
							placeholder="Enter Image"> <span class="focus-input100"></span>
					</div>


					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" id="btnSubmit">
							Modifier</button>
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
    	
    	$(":text, :checkbox, select, textarea").each(function() {
    		   if($(this).val() === ""){
    			valider = false;
    			console.log("tous les champs sont obligatoire.");
    		   }
    		   
    	});
       if(valider){
    var form = $('#fileUploadForm')[0];
        var data = new FormData(form);     
        var jsonDataObj = {
        	"id_personne" : ${sessionScope.objetConnecter.id_personne},
        	"nom": $("#nom").val(),
        	"prenom": $("#prenom").val(),
        	"date_naissance": $("#date_naissance").val(),
        	"cin": $("#cin").val(),
        	"pays": $("#pays").val(),
        	"telephone": $("#telephone").val(),
        	"email": $("#email").val(),
            "mdp" : "${sessionScope.objetConnecter.mdp}",
            "image":"${sessionScope.objetConnecter.image}",
            "type": "client",
            "etat": "${sessionScope.objetConnecter.etat}"
        };
        console.log(jsonDataObj);
        data.append("jsondata", JSON.stringify(jsonDataObj));
        console.log(data);
        $("#btnSubmit").prop("disabled", true);
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/mpersonnes",
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
                window.location.replace("index");                
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