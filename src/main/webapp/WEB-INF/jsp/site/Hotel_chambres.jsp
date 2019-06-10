<!DOCTYPE html>
<html>
    
    

<head>
        
        <!-- Standard Meta -->
        <meta charset="utf-8">
        <meta name="format-detection" content="telephone=no" />
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Properties -->
        <title>Les chambres</title>
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
			select h.image,adresse,raison_social,description,etoiles from hotel h where h.id_hotel = ${param.id_hotel }
		</sql:query>
		<!-- PAGE HEADING -->
		<c:forEach var="hotel" items="${rshotel.rows}">
		<div class="impx-page-heading uk-position-relative rooms">
			<div class="impx-overlay dark"></div>
			<div class="uk-container">
				<div class="uk-width-1-1">
					<div class="uk-flex uk-flex-bottom">
						<div class="uk-light uk-position-relative uk-text-left page-title">
							<h1 class="uk-margin-remove">${hotel.raison_social}</h1><!-- page title -->
							<p class="impx-text-large uk-margin-remove">Naviguer &amp; et faîtes votre choix !</p><!-- page subtitle -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- PAGE HEADING END -->

		<!-- FEATURES -->
		<div class="uk-padding impx-padding-medium bg-color-gray pattern-1 uk-position-relative uk-position-z-index ">
			<div class="uk-container">
				<!-- features items -->
				<ul class="uk-child-width-1-4@xl uk-child-width-1-4@l uk-child-width-1-4@m uk-child-width-1-2@s" data-uk-grid >
					<li><!-- features item #1 -->
						<i class="fa fa-group fa-2x impx-text-aqua"></i>
						<h5 class="uk-margin-small">Meilleur rapport qualité-prix pour la famille</h5>
					</li><!-- features item #1 end -->
					<li><!-- features item #2 -->
						<i class="fa fa-image fa-2x impx-text-aqua"></i>
						<h5 class="uk-margin-small">Beau panorama</h5>
					</li><!-- features item #2 end -->
					<li><!-- features item #3 -->
						<i class="fa fa-star-o fa-2x impx-text-aqua"></i>
						<h5 class="uk-margin-small">Meilleurs services et installations</h5>
					</li><!-- features item #3 end -->
					<li><!-- features item #4 -->
						<i class="fa fa-smile-o fa-2x impx-text-aqua"></i>
						<h5 class="uk-margin-small">Profiter de votre temps</h5>
					</li><!-- features item #4 end -->
				</ul>
				<!-- features items end -->
			</div>
		</div>
		<!-- FEATURES END -->

		<!-- CONTENT -->
		<div class="uk-padding  uk-padding-remove-horizontal">
			<div class="uk-container">
			
				<!-- ROOMS LIST -->
				<div class="uk-position-relative uk-visible-toggle uk-margin-small-top">
			        <ul class="uk-child-width-1-2@xl uk-child-width-1-2@l uk-child-width-1-2@m uk-child-width-1-1@s data-uk-grid uk-grid-match uk-margin-large-bottom"  data-uk-grid>
			           	<sql:query var="rs" dataSource="${db}">
						select  c.id_chambre,i.image,raison_social,c.description,c.prix from chambre c,hotel h, image_chambre i where c.id_hotel = h.id_hotel && i.id_chambre = c.id_chambre
						&& h.id_hotel = ${param.id_hotel }
						</sql:query>
						<c:forEach var="columnName" items="${rs.rows}">
			           
			            <li><!-- room item #1 -->
			            	
			            	<div class="impx-room-item medium uk-box-shadow-large">
			            		<div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s" data-uk-grid>
			            			<div class="uk-card-media-left uk-cover-container uk-position-relative">
			            				<canvas width="290" height="180"></canvas>
								        <img src="${ columnName.image}" alt="" data-uk-cover>
								        <div class="impx-overlay light overlay-squared padding-xwide"></div>
								    </div>
							        <div class="uk-card-body uk-position-relative impx-padding-medium">
							        	<div class="uk-card-header uk-padding-remove-horizontal">
							                <h4 class="uk-card-title uk-margin-remove-bottom">${ columnName.raison_social}</h4>
							                <p class="uk-text-meta uk-margin-remove-top">${ columnName.adresse} pour nuit</p>
									    </div>
							        	<span class="uk-card-badge uk-label bg-color-aqua">${ columnName.prix} pour nuit</span>
							            <ul class="uk-list room-fac">
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span>${ columnName.description}</li>
										</ul>

										 <div class="uk-card-footer uk-padding-remove-horizontal uk-padding-remove-bottom">
									        <a href="room-detail?id_chambre=${columnName.id_chambre }" class="uk-button uk-button-text impx-text-aqua">Voir détail &raquo;</a>
									    </div>
							        </div>
								</div>
							</div>
						</li><!-- room item #1 end -->
						</c:forEach>
			        </ul>
			        <!-- rooms items end -->
		        </div>

		      
			</div>
		</div>						
		<!-- CONTENT END -->
		
		<!-- BOOKING FORM -->
		<div class="uk-padding bg-color-aqua pattern-1">
			<div class="uk-container">

				<div class="uk-flex uk-flex-center" data-uk-grid>
					<div class="uk-width-1-1">
						<div class="impx-hp-booking-form hp2 no-margin">
							<h6 class="uk-heading-line uk-text-center impx-text-white uk-text-uppercase"><span>Réserver maintenant</span></h6>
							
					<form
						class="uk-child-width-1-6@xl uk-child-width-1-6@l uk-child-width-1-6@m uk-child-width-1-3@s uk-grid-medium"
						data-uk-grid
						action="chercher"
						>
						<div class="uk-form-controls">
							<div class="uk-inline">
								<label class="uk-form-label  impx-text-white">Raison social</label>  <input
									class="uk-input booking-email uk-border-rounded uk-width-1-1"
									type="text" name="raison_social" placeholder="entrer le nom">
							</div>
						</div>
						<div class="uk-form-controls">
							<div class="uk-inline">
								<label class="uk-form-label  impx-text-white">Pays</label>  <input
									class="uk-input booking-email uk-border-rounded uk-width-1-1"
									type="text" name="pays" placeholder="entrer le pays">
							</div>
						</div>
						<div class="uk-form-controls">
							<div class="uk-inline">
								<label class="uk-form-label  impx-text-white">Ville</label>  <input
									class="uk-input booking-email uk-border-rounded uk-width-1-1"
									type="text" name="ville" placeholder="entrer la ville">
							</div>
						</div>
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
						<div class="uk-form-controls uk-position-relative">
							<label class="uk-form-label impx-text-white"
								for="form-guest-select">Nombre d'étoile</label> <span
								class="uk-form-icon select-icon" data-uk-icon="icon: users"></span>
							<select class="uk-select uk-border-rounded"
								id="form-guest-select" name="nombre_etoile">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
							</select>
						</div>
						
						<div>
							<label class="uk-form-label empty-label">&nbsp;</label>
							<button class="uk-button uk-width-1-1">Chercher !</button>
						</div>
					</form>
				
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- BOOKING FORM END -->

		<!-- FOOTER -->
		<%@ include file="footer.jsp" %>
		
		<!-- FOOTER END -->

    	<!-- Javascript -->
    	<script src="js/jquery.js"></script>
        <script src="js/uikit.min.js"></script>
        <script src="js/uikit-icons.min.js"></script>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyBGb3xrNtz335X4G2KfoOXb-XuIyHAzlVo"></script>
        <script src="js/jquery.gmap.min.js"></script>
        <script src="js/tiny-date-picker.min.js"></script>
        <script src="js/jquery.parallax.min.js"></script>
        <script src="js/date-config.js"></script>
        <script src="js/template-config.js"></script>
        <style >
			.impx-page-heading.rooms{
				background-image: url('${hotel.image}');	
				background-size: cover;
			}
		</style>
        </c:forEach>
        
    </body>

<!--  changer l'image de l'hôtel -->


</html>
