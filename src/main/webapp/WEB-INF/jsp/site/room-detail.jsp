<!DOCTYPE html>
<html>

<head>
        
        <!-- Standard Meta -->
        <meta charset="utf-8">
        <meta name="format-detection" content="telephone=no" />
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Properties -->
        <title>Reservation Hôtel</title>
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

    </head>

    <body id="impx-body">
    	
		<!-- HEADER -->
		<%@ include file="header.jsp" %>
		<!-- HEADER END -->
		<sql:query var="rshotel" dataSource="${db}">
				select c.id_chambre,i.image,raison_social,c.description,
				c.prix from chambre c,hotel h, image_chambre i 
				where c.id_hotel = h.id_hotel && i.id_chambre = c.id_chambre
				&& c.id_chambre = ${param.id_chambre }
		</sql:query>
		
		<!-- PAGE HEADING -->
		<div class="impx-page-heading uk-position-relative room-detail">
			<div class="impx-overlay dark"></div>
			<div class="uk-container">
				<div class="uk-width-1-1">
					<div class="uk-flex uk-flex-left">
						<div class="uk-light uk-position-relative uk-text-left page-title">
							<h1 class="uk-margin-remove">Chambre Détail</h1><!-- page title -->
							<p class="impx-text-large uk-margin-remove">Naviguer &amp; et faîtes votre choix !</p><!-- page subtitle -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- PAGE HEADING END -->


		<!-- CONTENT -->
		<div class="uk-padding vert uk-padding-remove-horizontal">
			<div class="uk-container">
				<div data-uk-grid>

					<div class="uk-width-1-1 uk-margin-medium-top">
						<!-- slider -->
						<div class="impx-room-slider">
							<div class="uk-position-relative" data-uk-slideshow="animation: fade">
							    <ul class="uk-slideshow-items">
							    	<c:forEach var="columnName" items="${rshotel.rows}">
							        <li>
							            <img src="${columnName.image }" alt="" data-uk-cover>
							            <div class="impx-overlay"></div>
							        </li>
							        </c:forEach>
							    </ul>
							    <!-- slider thumb nav -->
							    <div class="uk-position-center-left uk-position-medium">
							        <ul class="uk-thumbnav uk-thumbnav-vertical">
							        <c:set var="i" value="0" />
							        <c:forEach var="columnName" items="${rshotel.rows}">
							            <li data-uk-slideshow-item="${i }"><a href="#"><img src="${columnName.image }" width="120" alt=""></a></li>
							            <c:set var="i" value="${i+1 }" />
							         </c:forEach>
							         </ul>
							    </div>
							    <!-- slider thumb nav end -->
							</div>
						</div>
						<!-- slider end -->
					
						
					</div>

			</div>
		</div>	
	</div>					
		<!-- CONTENT END -->        
        <div class="uk-padding bg-color-aqua pattern-1">
			<div class="uk-container">

				<div class="uk-flex uk-flex-center" data-uk-grid>
					<div class="uk-width-1-1">
						<div class="impx-hp-booking-form hp2 no-margin">
							<h6 class="uk-heading-line uk-text-center impx-text-white uk-text-uppercase"><span>Réserver maintenant</span></h6>
						
					<form
						class="uk-child-width-1-6@xl uk-child-width-1-6@l uk-child-width-1-6@m uk-child-width-1-3@s uk-grid-medium"
						data-uk-grid
						action="reserver"
						text-align="center"
						>
						<input type="hidden" name="id_chambre" value="${param.id_chambre }" />
						
						<div class="uk-form-controls">
							<div class="uk-inline">
								<label class="uk-form-label impx-text-white">Date de début</label> <span
									class="uk-form-icon" data-uk-icon="icon: calendar"></span> <input
									class="uk-input booking-arrival uk-border-rounded" name="date_debut" type="text"
									placeholder="m/dd/yyyy">
							</div>
						</div>
						<div class="uk-form-controls">
							<div class="uk-inline">
								<label class="uk-form-label impx-text-white">Date de fin</label> <span
									class="uk-form-icon" data-uk-icon="icon: calendar"></span> <input
									name="date_fin" class="uk-input booking-departure uk-border-rounded"
									type="text" placeholder="m/dd/yyyy">
							</div>
						</div>
						<div>
							<label class="uk-form-label empty-label">&nbsp;</label>
							<button class="uk-button uk-width-1-1">Réserver</button>
						</div>
					</form>
				
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- CONTACT INFO END -->

		<!-- FOOTER -->
		<%@ include file="footer.jsp" %>
		<!-- FOOTER END -->

    	<!-- Javascript -->
    	<script src="js/jquery.js"></script>
        <script src="js/uikit.min.js"></script>
        <script src="js/uikit-icons.min.js"></script>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyBGb3xrNtz335X4G2KfoOXb-XuIyHAzlVo"></script>
        <script src="js/jquery.gmap.min.js"></script>
        <script src="js/jquery.parallax.min.js"></script>
        <script src="js/tiny-date-picker.min.js"></script>
        <script src="js/date-config.js"></script>
        <script src="js/jquery.barrating.js"></script>
        <script src="js/rating-config.js"></script>
        <script src="js/template-config.js"></script>
    </body>


</html>