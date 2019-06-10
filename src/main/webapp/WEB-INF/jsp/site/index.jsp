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
<link rel="apple-touch-icon-precomposed"
	href="images/apple-touch-icon.png">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i&amp;subset=latin-ext"
	rel="stylesheet">

<!-- CSS -->
<link rel="stylesheet" href="css/uikit.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/tiny-date-picker.min.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/media-query.css" />

</head>

<body class="impx-body" id="top">

	<!-- HEADER -->
	<%@ include file="header.jsp" %>
	<!-- HEADER END -->

	<!-- SLIDESHOW -->
	<div class="uk-container-expand">
		<div class="impx-slide-container style1">
			<div class="impx-slideshow-fw">

				<div
					data-uk-slideshow="autoplay: true; autoplay-interval: 6000; animation: fade; finite: false; min-height: 319; max-height: 980;">
					<div class="uk-position-relative uk-visible-toggle uk-light">

						<ul class="uk-slideshow-items">
							<li>
								<!-- Slideshow Item #1 -->
								<div
									class="uk-position-cover uk-animation-kenburns uk-animation-reverse uk-transform-origin-bottom-center">
									<img src="images/slideshow/s1.jpg" alt=""
										data-uk-cover="height:319px">
									<div
										class="uk-overlay-primary uk-position-cover impx-overlay dark"></div>
								</div>
								<div class="uk-container uk-position-relative uk-height-1-1">
									<div class="uk-position-left uk-flex uk-flex-middle">
										<div class="impx-slide-fw-caption">
											<div
												class="impx-slide-fw-caption-outline uk-transition-slide-left"></div>
											<h1
												class="uk-margin-remove impx-text-shadow uk-transition-slide-top uk-text-left"> Bienvenue, vous êtes chez vous ! </h1>
											<p
												class="impx-text-large impx-text-aqua uk-margin-remove impx-text-shadow uk-transition-slide-bottom uk-text-right uk-text-uppercase">Les Me</p>
										</div>
									</div>
								</div>
							</li>
							<!-- Slideshow Item #1 End -->
							<li>
								<!-- Slideshow Item #2 -->
								<div
									class="uk-position-cover uk-animation-kenburns uk-animation-reverse uk-transform-origin-center-right">
									<img src="images/slideshow/full-slide-2.jpg" alt=""
										data-uk-cover>
									<div
										class="uk-overlay-primary uk-position-cover impx-overlay dark"></div>
								</div>
								<div class="uk-container uk-position-relative uk-height-1-1">
									<div class="uk-position-right uk-flex uk-flex-middle">
										<div class="impx-slide-fw-caption right">
											<div
												class="impx-slide-fw-caption-outline right bottom uk-transition-slide-left"></div>
											<h1
												class="uk-margin-remove impx-text-shadow uk-transition-slide-top uk-text-right">L'hôtel idéal au meilleur prix </h1>
											<p
												class="uk-text-large impx-text-aqua uk-margin-remove impx-text-shadow uk-transition-slide-bottom uk-text-right uk-text-uppercase">Enjoy
												la meilleure vue</p>
										</div>
									</div>
								</div>
							</li>
							<!-- Slideshow Item #2 End -->
							<li>
								<!-- Slideshow Item #3 -->
								<div
									class="uk-position-cover uk-animation-kenburns uk-animation-reverse uk-transform-origin-center-left">
									<img src="images/slideshow/full-slide-3.jpg" alt=""
										data-uk-cover>
									<div
										class="uk-overlay-primary uk-position-cover impx-overlay dark"></div>
								</div>
								<div class="uk-container uk-position-relative uk-height-1-1">
									<div class="uk-position-left uk-flex uk-flex-middle">
										<div class="impx-slide-fw-caption text-right">
											<div
												class="impx-slide-fw-caption-outline uk-transition-slide-top"></div>
											<h1
												class="impx-text-white uk-margin-remove impx-text-shadow uk-transition-scale-down">Hôtels ibis, on ne peut pas rêver mieux</h1>
											<p
												class="uk-text-large impx-text-gold uk-margin-remove impx-text-shadow uk-transition-scale-up uk-text-right uk-text-uppercase">Choisir le meilleur</p>
										</div>
									</div>
								</div>
							</li>
							<!-- Slideshow Item #3 End -->
							<li>
								<!-- Slideshow Item #4 -->
								<div
									class="uk-position-cover uk-animation-kenburns uk-animation-reverse uk-transform-origin-bottom-right">
									<img src="images/slideshow/full-slide-4.jpg" alt=""
										data-uk-cover>
									<div
										class="uk-overlay-primary uk-position-cover impx-overlay dark"></div>
								</div>
								<div class="uk-container uk-position-relative uk-height-1-1">
									<div class="uk-position-center uk-flex uk-flex-middle">
										<div class="impx-slide-fw-caption bottom">
											<div
												class="impx-slide-fw-caption-outline center bottom uk-transition-slide-left"></div>
											<h1
												class="uk-margin-remove impx-text-shadow uk-transition-slide-top uk-text-center">L'essentiel pour une bonne nuit</h1>
											<p
												class="uk-text-large impx-text-aqua uk-margin-remove impx-text-shadow uk-transition-slide-bottom uk-text-center uk-text-uppercase">On a tous ce que vous voulez!</p>
										</div>
									</div>
								</div>
							</li>
							<!-- Slideshow Item #4 End -->
							<li>
								<!-- Slideshow Item #5 -->
								<div
									class="uk-position-cover uk-animation-kenburns uk-animation-reverse uk-transform-origin-top-center">
									<img src="images/slideshow/full-slide-5.jpg" alt=""
										data-uk-cover>
									<div
										class="uk-overlay-primary uk-position-cover impx-overlay dark"></div>
								</div>
								<div class="uk-container uk-position-relative uk-height-1-1">
									<div class="uk-position-left uk-flex uk-flex-middle">
										<div class="impx-slide-fw-caption">
											<div
												class="impx-slide-fw-caption-outline uk-transition-slide-fade"></div>
											<h1
												class="impx-text-white uk-margin-remove impx-text-shadow uk-transition-slide-bottom">Des hôtels comme on les aime ! </h1>
											<p
												class="uk-text-large impx-text-aqua uk-margin-remove impx-text-shadow uk-transition-slide-top uk-text-right uk-text-uppercase">Vos rêves sont nos objectifs</p>
										</div>
									</div>
								</div>
							</li>
							<!-- Slideshow Item #5 End -->
						</ul>

						<!-- Slideshow Nav -->
						<a
							class="uk-position-center-left uk-position-small uk-hidden-hover"
							href="#" data-uk-slidenav-previous
							data-uk-slideshow-item="previous"></a> <a
							class="uk-position-center-right uk-position-small uk-hidden-hover"
							href="#" data-uk-slidenav-next data-uk-slideshow-item="next"></a>
						<!-- Slideshow Nav End -->

					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- SLIDESHOW END -->

	<!-- SERVICES LIST & BOOKING FORM -->
	<div class="impx-content impx-services style2 bg-color-aqua pattern-1">
		<div class="uk-container">
			<c:if test="${sessionScope.objetConnecter == null && sessionScope.hotel == null }">
			<div class="uk-margin-medium-bottom impx-margin-bottom-small"
				data-uk-grid>
				
				<!-- Services List -->
				<div
					class="uk-width-expand impx-services-list uk-margin-bottom impx-margin-bottom-small">
					<h6
						class="uk-heading-line uk-text-center uk-light uk-margin-bottom impx-text-white">
						<span>Se Connecter</span>
					</h6>
					
						<div
						class="uk-child-width-1-2@xl uk-child-width-1-2@l uk-child-width-1-2@m uk-child-width-1-2@s uk-grid-medium"
						data-uk-grid>
						<div>
							<!-- Services Item #1 -->
							<div
								class="uk-card uk-card-default uk-box-shadow-hover-xlarge impx-service-card uk-padding-bottom">
								<div class="uk-card-media-top">
									<img src="images/espace-client.jpg" alt="" >
								</div>
								<div class="uk-card-body uk-card-small uk-text-center">
									<div
										class="uk-card-badge uk-label uk-label-danger bg-color-aqua">Espace Client</div>
									<p>Cet espace vous permet de s'authentifier de profiter d'une expérience inoubliable, on vous offrant des centains d'hôtels</p>
									<a href="/loginClient"
										class="uk-button uk-button-default uk-button-small impx-button gold impx-button-outline 
										outline-gold button-wide impx-button-rounded small-border">Se Connecter &raquo;</a>
								</div>
							</div>
						</div>
						<!-- Services Item #1 End -->
						<div>
							<!-- Services Item #2 -->
							<div
								class="uk-card uk-card-default uk-box-shadow-hover-xlarge impx-service-card">
								<div class="uk-card-media-top">
									<img src="images/espace-hotel.jpg" alt="">
								</div>
								<div class="uk-card-body uk-card-small uk-text-center">
									<div
										class="uk-card-badge uk-label uk-label-danger bg-color-aqua">Espace Hôtel</div>
								<p>Cet espace vous permet de s'authentifier de proposer vos chambre, hôtels 
								pour profiter de cette plateforme qui contient des centains de clients</p>

									<a href="loginHotel"
										class="uk-button uk-button-default uk-button-small impx-button gold
										 impx-button-outline outline-gold button-wide impx-button-rounded
										  small-border">Se Connecter &raquo;</a>
								</div>
							</div>
						</div>
						<!-- Services Item #2 End -->
					
					</div>
				</div>
				<!-- Services List End -->				
			</div>
			</c:if>

			<!-- Booking Form -->
			<div class="uk-margin-medium-bottom uk-margin-medium-top">
				<div class="impx-hp-booking-form impx-margin-top-small">
					<h6
						class="uk-heading-line uk-text-center uk-margin-small-bottom impx-text-white">
						<span>Réserver maintenant </span>
					</h6>
					
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
			<!-- Booking Form End -->

			<!-- Intro Text -->
			<div
				class="uk-flex uk-flex-center uk-position-relative uk-position-z-index"
				data-uk-grid>
				<div
					class="uk-width-2-3@xl uk-width-2-3@l uk-width-1-1@m uk-width-1-1@s">
					<div
						class="impx-intro uk-text-center uk-light uk-margin-remove-bottom">
						<h2 class="uk-margin-remove-vertical uk-margin-remove-bottom">Choisir les meilleurs meilleurs chambres et hôtels</h2>
						<p
							class="impx-text-large uk-margin-remove-bottom uk-margin-small-top">Trouver chez nous tous ce que vous cherchez.</p>
					</div>
				</div>
			</div>
			<!-- Intro Text End -->

		</div>
	</div>
	<!-- SERVICES LIST & BOOKING FORM END -->

	<!-- ROOMS LIST -->
	<div
		class="uk-position-relative impx-section-rooms bg1 uk-position-relative uk-background-fixed uk-background-center-center uk-height-1-1">
		<div class="impx-overlay"></div>

		<div class="uk-container">
			<div class="uk-position-relative uk-visible-toggle">
				<ul
					class="uk-child-width-1-2@xl uk-child-width-1-2@l uk-child-width-1-2@m uk-child-width-1-1@s uk-grid-collapse uk-box-shadow-large uk-grid-match impx-rooms-grid"
					data-uk-grid>
					<li>
						<!-- Room Item #1 -->
						<div class="impx-room-item medium">
							<div
								class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s"
								data-uk-grid>
								<div
									class="uk-card-media-left uk-cover-container uk-position-relative">
									<canvas width="290" height="180"></canvas>
									<img src="images/rooms/room-square-1.jpg" alt="" data-uk-cover>
									<div class="impx-overlay light overlay-squared padding-xwide"></div>
								</div>
								<div
									class="uk-card-body uk-position-relative impx-padding-medium">
									<div class="uk-card-header uk-padding-remove-horizontal">
										<h4 class="uk-card-title uk-margin-remove-bottom">Chambre simple</h4>
										<p class="uk-text-meta uk-margin-remove-top">une chambre simple</p>
									</div>
									<span class="uk-card-badge uk-label bg-color-aqua">à partir de
										$50/nuit</span>
									<ul class="uk-list room-fac">
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> chambre de luxe</li>
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> calme</li>
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> pour 3 personnes</li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<!-- Room Item #1 End -->
					<li>
						<!-- Room Item #2 -->
						<div class="impx-room-item medium">
							<div
								class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s"
								data-uk-grid>
								<div
									class="uk-card-media-left uk-cover-container uk-position-relative">
									<canvas width="290" height="180"></canvas>
									<img src="images/rooms/room-square-5.jpg" alt="" data-uk-cover>
									<div class="impx-overlay light overlay-squared padding-xwide"></div>
								</div>
								<div
									class="uk-card-body uk-position-relative impx-padding-medium">
									<div class="uk-card-header uk-padding-remove-horizontal">
										<h4 class="uk-card-title uk-margin-remove-bottom">Chambre double</h4>
																			</div>
									<span class="uk-card-badge uk-label bg-color-aqua">à partir de
										$50/nuit</span>
									<ul class="uk-list room-fac">
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> chambre de luxe</li>
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> douce</li>
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> pour 5 personnes</li>
									</ul>
								</div>
							</div>
						</div>
					</li>
					<!-- Room Item #2 End -->
					<li>
						<!-- Room Item #3 -->
						<div class="impx-room-item medium">
							<div
								class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s"
								data-uk-grid>
								<div
									class="uk-card-body uk-position-relative impx-padding-medium">
									<div class="uk-card-header uk-padding-remove-horizontal">
										<h4 class="uk-card-title uk-margin-remove-bottom">Premiere chambre</h4>
										
									</div>
									<span class="uk-card-badge uk-label bg-color-aqua">à partir de
										$100/nuit</span>
									<ul class="uk-list room-fac">
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> chambre de luxe</li>
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> grande</li>
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> pour 7 personnes</li>
									</ul>
								</div>
								<div
									class="uk-card-media-right uk-cover-container uk-position-relative">
									<canvas width="290" height="180"></canvas>
									<img src="images/rooms/room-square-3.jpg" alt="" data-uk-cover>
									<div class="impx-overlay light overlay-squared padding-xwide"></div>
								</div>
							</div>
						</div>
					</li>
					<!-- Room Item #3 End -->
					<li>
						<!-- Room Item #4 -->
						<div class="impx-room-item medium">
							<div
								class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s"
								data-uk-grid>
								<div
									class="uk-card-body uk-position-relative impx-padding-medium">
									<div class="uk-card-header uk-padding-remove-horizontal">
										<h4 class="uk-card-title uk-margin-remove-bottom">Deluxe
											chambre</h4>
										
									</div>
									<span class="uk-card-badge uk-label bg-color-aqua">à partir de
										$50/nuit</span>
									<ul class="uk-list room-fac">
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> chambre de luxe et grand</li>
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> calme et douce</li>
										<li><span class="impx-text-aqua"
											data-uk-icon="icon: check; ratio: 1;"></span> pour 10 personnes</li>
									</ul>
								</div>
								<div
									class="uk-card-media-right uk-cover-container uk-position-relative">
									<canvas width="290" height="180"></canvas>
									<img src="images/rooms/room-square-4.jpg" alt="" data-uk-cover>
									<div class="impx-overlay light overlay-squared padding-xwide"></div>
								</div>
							</div>
						</div>
					</li>
					<!-- Room Item #4 End -->
				</ul>
			</div>
		</div>

	</div>
	<!-- ROOMS LIST END -->

	<!-- WHY CHOOSE US? -->
	<div
		class="uk-padding-large uk-padding-remove-horizontal uk-position-relative bg-img3 impx-features">
		<div class="uk-container">

			<div
				class="uk-width-3-4@xl uk-width-3-4@l uk-width-1-1@m uk-width-1-1@s uk-margin-medium-top uk-position-relative uk-height-1-1 impx-features-content"
				data-uk-grid>

				<!-- Intro Text -->
				<div class="impx-intro uk-text-left" id="sommeNous">
					<h2 class="uk-margin-remove-bottom uk-margin-small-top">Pourquoi nous?</h2>
					<p class="uk-margin-remove uk-text-uppercase">Notre site hôtelier est l'un des plus important d'Europe. Que ce soit des hôtels en France appartenant à une enseigne ou des établissements indépendants.</div>
				<!-- Intro Text End -->
				<ul
					class="uk-child-width-1-3@xl uk-child-width-1-3@l uk-child-width-1-3@m uk-child-width-1-2@s impx-features-hl uk-grid-medium uk-grid-match uk-margin-top impx-margin-top-small"
					data-uk-grid>
					<li>
						<!-- Reason Item #1 -->
						<div
							class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color1 impx-feature-item uk-position-relative">
							<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Meilleur rapport qualité-prix pour la famille</h6>
							<p class="uk-margin-remove  impx-text-lighter">Pourquoi, alors, quand tout est convenable, il vaut mieux pour nous et plus vraiment, ou devrais-je préféré à désirer que les stoïciens.</p>
							<span data-uk-icon="icon: users; ratio: 8" class="feature-icon"></span>
						</div>
					</li>
					<!-- Reason Item #1 End -->
					<li>
						<!-- Reason Item #2 -->
						<div
							class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color2 impx-feature-item uk-position-relative">
							<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Priorité de services</h6>
							<p class="uk-margin-remove impx-text-lighter">Pourquoi, alors, quand tout est convenable, il vaut mieux pour nous et plus vraiment, ou devrais-je préféré à désirer que les stoïciens.</p>
							</p>
							<span data-uk-icon="icon: bell; ratio: 8" class="feature-icon"></span>
						</div>
					</li>
					<!-- Reason Item #2 End -->
					<li>
						<!-- Reason Item #3 -->
						<div
							class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color3 impx-feature-item uk-position-relative">
							<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Meilleurs équipements
</h6>
							<p class="uk-margin-remove impx-text-lighter">Pourquoi, alors, quand tout est convenable, il vaut mieux pour nous et plus vraiment, ou devrais-je préféré à désirer que les stoïciens.</p>
							</p>
							<span data-uk-icon="icon: star; ratio: 8" class="feature-icon"></span>
						</div>
					</li>
					<!-- Reason Item #3 End -->
					<li>
						<!-- Reason Item #4 -->
						<div
							class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color4 impx-feature-item uk-position-relative">
							<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Garantie de satisfaction</h6>
							<p class="uk-margin-remove impx-text-lighter">Pourquoi, alors, quand tout est convenable, il vaut mieux pour nous et plus vraiment, ou devrais-je préféré à désirer que les stoïciens.</p>
								de re conveniat, melius nos veriusque quam Stoici mallem aut
								expetendam.</p>
							<span data-uk-icon="icon: heart; ratio: 8" class="feature-icon"></span>
						</div>
					</li>
					<!-- Reason Item #4 End -->
					<li>
						<!-- Reason Item #5 -->
						<div
							class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color5 impx-feature-item uk-position-relative">
							<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Beau panorama</h6>
							<p class="uk-margin-remove impx-text-lighter">Pourquoi, alors, quand tout est convenable, il vaut mieux pour nous et plus vraiment, ou devrais-je préféré à désirer que les stoïciens.</p>
							</p>
							<span data-uk-icon="icon: image; ratio: 8" class="feature-icon"></span>
						</div>
					</li>
					<!-- Reason Item #5 End -->
					<li>
						<!-- Reason Item #6 -->
						<div
							class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color6 impx-feature-item uk-position-relative">
							<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Profiter de votre temps</h6>
							<p class="uk-margin-remove impx-text-lighter">Pourquoi, alors, quand tout est convenable, il vaut mieux pour nous et plus vraiment, ou devrais-je préféré à désirer que les stoïciens.</p>
							</p>
							<span data-uk-icon="icon: happy; ratio: 8" class="feature-icon"></span>
						</div>
					</li>
					<!-- Reason Item #6 End -->
				</ul>

			</div>

		</div>
	</div>
	<!-- WHY CHOOSE US? END -->

	<!-- PRICING PLANS -->
	<div
		class="uk-padding uk-padding-remove-horizontal impx-section-pricing">
		<div class="uk-container" id="offre">
			<div
				class="uk-flex uk-flex-center uk-margin-medium-bottom impx-margin-bottom-small">
				<!-- Pricing Intro -->
				<div
					class="uk-width-2-3@xl uk-width-2-3@l uk-width-2-3@m uk-width-1-1@s uk-text-center hp-offer-intro">
					<h2 class="uk-margin-small-bottom">Nos offres spéciaux</h2>
					<p
						class="impx-text-large uk-margin-remove-top uk-margin-small-bottom">
						Vous trouverez chez nous les meuilleurs offres du monde, vous pouvez Passer une nuit à partir de <span
							class="uk-label uk-label-danger uk-text-bold bg-color-gold">299 Euro
							</span>.
					</p>
				</div>
				<!-- Pricing Intro End -->
			</div>
			
			<div class="uk-flex uk-flex-center uk-margin-bottom">
				<div
					class="uk-width-5-6@xl uk-width-5-6@l uk-width-5-6@m uk-width-1-1@s impx-pricing-list"
					data-uk-grid>
					
					<sql:query var="rs" dataSource="${db}">
						select c.id_chambre,i.image,raison_social,c.description,c.prix from chambre c,hotel h, image_chambre i where c.id_hotel = h.id_hotel && i.id_chambre = c.id_chambre LIMIT 4
						</sql:query>
					<c:set var="i" value="0" />							
					<ul
						class="uk-child-width-1-3@xl uk-child-width-1-3@l uk-child-width-1-3@m uk-child-width-1-3@s uk-grid-collapse impx-promo-pricing-list"
						data-uk-grid>
						<c:forEach var="columnName" items="${rs.rows}">
							<c:set var="i" value="${i+1 }" />	
							<c:if test="${i ==1 }" >
							<li class="uk-position-relative">
								<!-- Pricing Item #1-->
								<div class="impx-promo-pricing uk-box-shadow-large uk-light">
									<div class="uk-position-relative">
										<img style="width:230" src="${ columnName.image}" alt="">
										<div class="impx-overlay light"></div>
									</div>
									<div class="uk-position-relative uk-padding bg-color-gold">
										<h4 class="uk-heading-line uk-margin-small-bottom">
											<span>${ columnName.raison_social}</span>
										</h4>
										<span
											class="uk-label uk-label-success impx-text-gold uk-text-bold">${ columnName.prix} pour nuit</span>
										<ul class="uk-list">
											<li><i class="fa fa-bed"></i>${ columnName.description}</li>
										</ul>
										<a href="room-detail?id_chambre=${columnName.id_chambre }"
											class="uk-button impx-button small impx-button-outline small-border">Voir détail
											 <i class="fa fa-arrow-right"></i>
										</a>
									</div>
								</div>
							</li>
							</c:if>
							
							<!-- Pricing Item #1 End -->
							<c:if  test="${i == 2 }" >
								<li class="uk-position-relative uk-position-z-index">
							<!-- Pricing Item #2 -->
							<div
								class="impx-promo-pricing uk-box-shadow-xlarge uk-light featured">
								<div class="uk-position-relative">
									<img src="${ columnName.image}" alt="">
									<div class="impx-overlay light"></div>
								</div>
								<div class="uk-position-relative uk-padding bg-color-aqua">
									<h3 class="uk-heading-line uk-margin-small-bottom">
										<span>${ columnName.raison_social}</span>
									</h3>
									<span
										class="uk-label uk-label-success impx-text-aqua uk-text-bold">${ columnName.prix} pour nuit</span>
									<ul class="uk-list uk-list-large">
										<li><i class="fa fa-bed"></i>${ columnName.description}</li>
									</ul>
									<a href="room-detail?id_chambre=${columnName.id_chambre }"
											class="uk-button impx-button small impx-button-outline small-border">Voir détail
											 <i class="fa fa-arrow-right"></i></a>
								</div>
							</div>
						</li> 
								
							</c:if>
							<c:if test="${i == 3 }" >
						<li class="uk-position-relative">
								<!-- Pricing Item #1-->
								<div class="impx-promo-pricing uk-box-shadow-large uk-light">
									<div class="uk-position-relative">
										<img style="width:230" src="${ columnName.image}" alt="">
										<div class="impx-overlay light"></div>
									</div>
									<div class="uk-position-relative uk-padding bg-color-gold">
										<h4 class="uk-heading-line uk-margin-small-bottom">
											<span>${ columnName.raison_social}</span>
										</h4>
										<span
											class="uk-label uk-label-success impx-text-gold uk-text-bold">${ columnName.prix} pour nuit</span>
										<ul class="uk-list">
											<li><i class="fa fa-bed"></i>${ columnName.description}</li>
										</ul>
										<a href="room-detail?id_chambre=${columnName.id_chambre }"
											class="uk-button impx-button small impx-button-outline small-border">Voir détail
											 <i class="fa fa-arrow-right"></i>
										</a>
									</div>
								</div>
							</li>
							</c:if>
						</c:forEach>
						
					</ul>

				</div>
			</div>
		</div>
	</div>
	<!-- PRICING PLANS END -->

	<!-- TESTIMONIALS CAROUSEL -->
	
	<!-- TESTIMONIALS CAROUSEL END -->

	<!-- CONTACT SECTION -->
	<div class="impx-contact">
		<div id="impx-gmap"></div>

		<div
			class="impx-overlay aqua-darkest  uk-padding uk-padding-remove-bottom uk-padding-remove-horizontal">
			<div class="uk-container">

				<div
					class="uk-width-2-3@xl uk-width-2-3@l uk-width-2-3@m uk-width-1-1@s uk-margin-medium-bottom">
					<!-- Location -->
					<h4 class="impx-text-white">Our Location</h4>
					<p class="impx-text-large impx-text-light">Oculorum, inquit
						Plato, est in nobis sensus acerrimus, quibus sapientiam non
						cernimus non semper inquam At enim sequor utilitatem praetermissum
						in Stoicis?</p>
					<!-- Location End -->
				</div>

				<div data-uk-grid class="uk-padding-remove-bottom">
					<!-- Address -->
					<div
						class="uk-light uk-width-1-2@xl uk-width-1-2@l uk-width-1-2@m uk-width-1-1@s">
						<h5
							class="uk-heading-line uk-margin-remove-bottom impx-text-white">
							<span>Address</span>
						</h5>
						<p class="impx-text-large uk-margin-top impx-text-light">
							Jln. Raya Kemerderkaan RI No. 17<br />Indonesia Raya
						</p>
					</div>
					<!-- Address End-->
					<div
						class="uk-light uk-width-1-4@xl uk-width-1-4@l uk-width-1-4@m uk-width-1-1@s">
						<!-- Phone -->
						<h5 class="uk-heading-line uk-margin-bottom impx-text-white">
							<span>Phone</span>
						</h5>
						<p class="impx-text-large uk-margin-remove impx-text-light">
							+62 123456789<br />+62 987456123
						</p>
					</div>
					<!-- Phone End -->
					<div
						class="uk-light uk-width-1-4@xl uk-width-1-4@l uk-width-1-4@m uk-width-1-1@s">
						<!-- Email -->
						<h5 class="uk-heading-line uk-margin-bottom  impx-text-white">
							<span>Email</span>
						</h5>
						<a href="mailt:#" class="impx-text-large impx-text-light">cs@sativa-html.com</a><br />
						<a href="mailt:#" class="impx-text-large impx-text-light">info@sativa-html.com</a>
					</div>
					<!-- Email End -->
				</div>

			</div>
		</div>
	</div>
	<!-- CONTACT SECTION END -->

	<!-- FOOTER -->
		<%@ include file="footer.jsp" %>
	<!-- FOOTER END -->
	
	<!-- Javascript -->
	<script src="js/jquery.js"></script>
	<script src="js/uikit.min.js"></script>
	<script src="js/uikit-icons.min.js"></script>
	<script type="text/javascript"
		src="http://maps.google.com/maps/api/js?key=AIzaSyBGb3xrNtz335X4G2KfoOXb-XuIyHAzlVo"></script>
	<script src="js/jquery.gmap.min.js"></script>
	<script src="js/jquery.parallax.min.js"></script>
	<script src="js/tiny-date-picker.min.js"></script>
	<script src="js/date-config.js"></script>
	<script src="js/template-config.js"></script>
</body>

</html>