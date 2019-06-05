<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <!-- Standard Meta -->
        <meta charset="utf-8">
        <meta name="format-detection" content="telephone=no" />
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Properties -->
        <title>Sativa - Hotel &amp; Resort HTML Template</title>
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
<body>
<!-- HEADER -->
		<header id="impx-header">
			<div>
				<div class="impx-menu-wrapper style2" data-uk-sticky="top: .impx-slide-container; animation: uk-animation-slide-top">

					<!-- Mobile Nav Start -->
					<div id="mobile-nav" data-uk-offcanvas="mode: push; overlay: true">
				        <div class="uk-offcanvas-bar">

				            <ul class="uk-nav uk-nav-default">
				               <li><a href="#">Accuei</a></li>
				                <li class="uk-parent">
						        	<a href="rooms1.html" class="uk-navbar-nav-subtitle">Chambres</a>
						        	<ul class="uk-nav-sub">
				                		<li><a href="Chambre1.html">Chambre Style 1</a></li>
				                		<li><a href="Chambre2.html">Chambre Style 2</a></li>
				                		<li><a href="Chambre3.html">Chambre Style 3</a></li>
				                		<li><a href="room-detail.html">Room Detail 1</a></li>
				                		<li><a href="room-detail2.html">Room Detail 2</a></li>
				                	</ul>
				                </li>
				                
				                       <li class="uk-parent">
						        	<a href="rooms1.html" class="uk-navbar-nav-subtitle">Hotels</a>
						        	<ul class="uk-nav-sub">
				                		<li><a href="Chambre1.html">Chambre Style 1</a></li>
				                		<li><a href="Chambre2.html">Chambre Style 2</a></li>
				                		<li><a href="Chambre3.html">Chambre Style 3</a></li>
				                		<li><a href="room-detail.html">Room Detail 1</a></li>
				                		<li><a href="room-detail2.html">Room Detail 2</a></li>
				                	</ul>
				                </li>
				 
				                <li><a href="contact.html">Contact</a></li>
				            </ul>

				        </div>
				    </div>
				    <a href="#mobile-nav" class="uk-hidden@xl uk-hidden@l uk-hidden@m mobile-nav" data-uk-toggle="target: #mobile-nav"><i class="fa fa-bars"></i>Menu</a>
		            <!-- Mobile Nav End -->

		            <!-- Top Header -->
					<div class="impx-top-header style2">
						<div class="uk-container uk-container-expand">
							
							<div class="uk-grid">
								<!-- header phone -->
								<div class="uk-width-1-2@xl uk-width-1-2@l uk-width-1-2@m uk-width-1-1@s">
									<div class="impx-top-phone">
										<p><i class="fa fa-phone"></i> Phone : +62 123456789</p>  
									</div>
								</div><!-- header phone end-->
								<!-- header social media -->
								<div class="uk-width-1-2@xl uk-width-1-2@l uk-width-1-2@m uk-width-1-1@s">
									<div class="impx-top-social">
										<ul>
											<li><a href="#"><i class="fa fa-facebook-f"></i>Facebook</a></li>
											<li><a href="#"><i class="fa fa-instagram"></i>Instagram</a></li>
											<li><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
										</ul>
									</div>
								</div><!-- header social media end -->
							</div>

						</div>
					</div>
					<!-- Top Header End -->


					<div class="uk-container uk-container-expand">
						<div data-uk-grid>

							<!-- Header Logo -->
							<div class="uk-width-auto">
								<div class="impx-logo">
									<a href="index.html"><img src="images/logo.png" class="" alt="Logo"></a>
								</div>
							</div>
							<!-- Header Logo End-->

							<!-- Header Navigation -->
							<div class="uk-width-expand uk-position-relative">								
								<nav class="uk-navbar-container uk-navbar-transparent uk-visible@s uk-visible@m" data-uk-navbar>
									<div class="uk-navbar-right impx-navbar-right">
	        							<ul class="uk-navbar-nav impx-nav style2">
											<!-- Navigation Items -->
									       <li><a href="#">Accuei</a></li>
									    	<li>
									        	<a href="rooms1.html" class="uk-navbar-nav-subtitle"><div>Chambres<div class="uk-navbar-subtitle">Les meilleurs suites</div></div></a>
												<div class="uk-navbar-dropdown uk-navbar-dropdown-width-4 impx-megamenu" data-uk-drop="boundary: .impx-navbar-right; boundary-align: true; pos: bottom-justify;">
								                    <div class="uk-navbar-dropdown-grid uk-child-width-1-4" data-uk-grid>
								                        <div>
								                            <ul class="uk-nav uk-navbar-dropdown-nav">
								                                <li class="uk-nav-header uk-text-bold"> Style 1</li>
								                                <li>
								                                	<a href="rooms1.html"><img src="images/rooms/room-menu-1.jpg" alt=""></a>
								                                	<p class="uk-margin-small-bottom uk-margin-small-top impx-hidden-m">Classique</p>
								                                	<a class="uk-button uk-button-default uk-button-small impx-button impx-button-outline aqua small small-border" href="rooms1.html">Visiter la chambre !</a>
								                                </li>
								                            </ul>
								                        </div>
								                        <div>
								                            <ul class="uk-nav uk-navbar-dropdown-nav">
								                                <li class="uk-nav-header uk-text-bold">Style 2</li>
								                                <li>
								                                	<a href="rooms2.html"><img src="images/rooms/room-menu-2.jpg" alt=""></a>
								                                	<p class="uk-margin-small-bottom uk-margin-small-top impx-hidden-m">Moderne</p>
								                                	<a class="uk-button uk-button-default uk-button-small impx-button impx-button-outline aqua small small-border" href="rooms2.html">Visiter la chambre !</a>
								                                </li>
								                            </ul>
								                        </div>
								                        <div>
								                            <ul class="uk-nav uk-navbar-dropdown-nav">
								                                <li class="uk-nav-header uk-text-bold">Style 3</li>
								                                <li>
								                                	<a href="rooms3.html"><img src="images/rooms/room-menu-3.jpg" alt=""></a>
								                                	<p class="uk-margin-small-bottom uk-margin-small-top impx-hidden-m">Miste</p>
								                                	<a class="uk-button uk-button-default uk-button-small impx-button impx-button-outline aqua small small-border" href="rooms3.html">Visiter la chambre !</a>
								                                </li>
								                            </ul>
								                        </div>
								                        <div>
								                        	<div>
								                            	<ul class="uk-nav uk-navbar-dropdown-nav">	
								                            		<li class="uk-nav-header uk-margin-small-bottom uk-text-bold">Les chambres les plus confortables de monde</li>
								                            		<li>
							                            				<div class="uk-grid-small" data-uk-grid>
							                            					<div class="uk-width-auto">
								                            					<i class="fa fa-check-square-o fa-05x circle impx-text-aqua border-aqua uk-margin-remove uk-visible@m"></i>
								                            				</div>
								                            				<div class="uk-width-expand">
								                            					<p class="uk-margin-remove uk-visible@s impx-hidden-m">Avec un prix raisonable !</p>
								                            					
								                            				</div>	
							                            				</div>
							                            			
								                            				
								                            		</li>
								                            	</ul>
								                            </div>
								                        </div>
								                    </div>
								                </div>
									        </li>
									        
									        <li>
									        	<a href="rooms1.html" class="uk-navbar-nav-subtitle"><div>Hotels<div class="uk-navbar-subtitle">Les meilleurs suites</div></div></a>
												<div class="uk-navbar-dropdown uk-navbar-dropdown-width-4 impx-megamenu" data-uk-drop="boundary: .impx-navbar-right; boundary-align: true; pos: bottom-justify;">
								                    <div class="uk-navbar-dropdown-grid uk-child-width-1-4" data-uk-grid>
								                        <div>
								                            <ul class="uk-nav uk-navbar-dropdown-nav">
								                                <li class="uk-nav-header uk-text-bold"> Style Hotel 1</li>
								                                <li>
								                                	<a href="rooms1.html"><img src="images/rooms/room-menu-1.jpg" alt=""></a>
								                                	<p class="uk-margin-small-bottom uk-margin-small-top impx-hidden-m">Classique</p>
								                                	<a class="uk-button uk-button-default uk-button-small impx-button impx-button-outline aqua small small-border" href="rooms1.html">Visiter la chambre !</a>
								                                </li>
								                            </ul>
								                        </div>
								                        <div>
								                            <ul class="uk-nav uk-navbar-dropdown-nav">
								                                <li class="uk-nav-header uk-text-bold">Style Hotel 2</li>
								                                <li>
								                                	<a href="rooms2.html"><img src="images/rooms/room-menu-2.jpg" alt=""></a>
								                                	<p class="uk-margin-small-bottom uk-margin-small-top impx-hidden-m">Moderne</p>
								                                	<a class="uk-button uk-button-default uk-button-small impx-button impx-button-outline aqua small small-border" href="rooms2.html">Visiter la chambre !</a>
								                                </li>
								                            </ul>
								                        </div>
								                        <div>
								                            <ul class="uk-nav uk-navbar-dropdown-nav">
								                                <li class="uk-nav-header uk-text-bold">Style Hotel 3</li>
								                                <li>
								                                	<a href="rooms3.html"><img src="images/rooms/room-menu-3.jpg" alt=""></a>
								                                	<p class="uk-margin-small-bottom uk-margin-small-top impx-hidden-m">Miste</p>
								                                	<a class="uk-button uk-button-default uk-button-small impx-button impx-button-outline aqua small small-border" href="rooms3.html">Visiter la chambre !</a>
								                                </li>
								                            </ul>
								                        </div>
								                        <div>
								                        	<div>
								                            	<ul class="uk-nav uk-navbar-dropdown-nav">	
								                            		<li class="uk-nav-header uk-margin-small-bottom uk-text-bold">Les chambres les plus confortables de monde</li>
								                            		<li>
							                            				<div class="uk-grid-small" data-uk-grid>
							                            					<div class="uk-width-auto">
								                            					<i class="fa fa-check-square-o fa-05x circle impx-text-aqua border-aqua uk-margin-remove uk-visible@m"></i>
								                            				</div>
								                            				<div class="uk-width-expand">
								                            					<p class="uk-margin-remove uk-visible@s impx-hidden-m">Avec un prix raisonable !</p>
								                            					
								                            				</div>	
							                            				</div>
							                            			
								                            				
								                            		</li>
								                            	</ul>
								                            </div>
								                        </div>
								                    </div>
								                </div>
									        </li>
									        
									        <li><a href=""><div><div class="uk-navbar-subtitle"></div></div></a></li>
											<li><a href=""><div><div class="uk-navbar-subtitle"></div></div></a></li>
											<li><a href="" class="uk-navbar-nav-subtitle"><div><div class="uk-navbar-subtitle"></div></div></a></li>
											<li class="uk-parent">
								    			<a href="#" class="uk-navbar-nav-subtitle"><div><div class="uk-navbar-subtitle"></div></div></a>
									    		<div class="uk-navbar-dropdown">
	                								<ul class="uk-nav uk-navbar-dropdown-nav">
														<li><a href="about.html"></a></li>
														<li><a href="testimonial.html"></a></li>
														<li><a href="blog.html"></a></li>
														<li><a href="single-post.html"></a></li>
														<li><a href="gallery.html"></a></li>
														<li><a href="element.html"></a></li>
													</ul>
												</div>
									    	</li>
									        <li><a href="contact.html" class="uk-navbar-nav-subtitle"><div>Contact<div class="uk-navbar-subtitle">Get in Touch</div></div></a></li>
									    </ul>
									    <!-- Navigation Items End -->
									</div>
								</nav>
							</div>
							<!-- Header Navigation End -->

							<!-- Promo Ribbon -->
						
							<!-- Promo Ribbon End -->

						</div>
					</div>
				</div>
			</div>

		</header>
		<!-- HEADER END -->

		<!-- SLIDESHOW -->
		<div class="uk-container-expand">
			<div class="impx-slide-container style1">
				<div class="impx-slideshow-fw">

					<div data-uk-slideshow="autoplay: true; autoplay-interval: 6000; animation: fade; finite: false; min-height: 319; max-height: 980;">
						<div class="uk-position-relative uk-visible-toggle uk-light">

						    <ul class="uk-slideshow-items">
	
						    		<li><!-- Slideshow Item #1 -->
						    		<div class="uk-position-cover uk-animation-kenburns uk-animation-reverse uk-transform-origin-bottom-center">
								    	<img src="images/slideshow/slide-2.jpg" alt="" data-uk-cover="height:319px">
								    	<div class="uk-overlay-primary uk-position-cover impx-overlay dark"></div>
									</div>
									<div class="uk-container uk-position-relative uk-height-1-1">
										<div class="uk-position-left uk-flex uk-flex-middle">
											<div class="impx-slide-fw-caption">
												<div class="impx-slide-fw-caption-outline uk-transition-slide-left"></div>
									    		<h1 class="uk-margin-remove impx-text-shadow uk-transition-slide-top uk-text-left">Sativa Hotel &amp; Resort</h1>
									    		<p class="impx-text-large impx-text-aqua uk-margin-remove impx-text-shadow uk-transition-slide-bottom uk-text-right uk-text-uppercase">Responsive HTML Template</p>
								    		</div>
								    	</div>
							    	</div>
						    	</li><!-- Slideshow Item #1 End -->
						    </ul>

						    <!-- Slideshow Nav -->
						    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" data-uk-slidenav-previous data-uk-slideshow-item="previous"></a>
		        			<a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" data-uk-slidenav-next data-uk-slideshow-item="next"></a>
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

			

					<!-- Services List -->
					<div class="uk-width-expand impx-services-list uk-margin-bottom impx-margin-bottom-small">
					
						<div class="uk-child-width-1-4@xl uk-child-width-1-4@l uk-child-width-1-4@m uk-child-width-1-2@s uk-grid-medium" data-uk-grid>
					
							 <div><!-- Services Item #2 -->
						        <div class="">
						        	<div class="">
						                <img src="" alt="">
						            </div>
						            <div class="">
						            	<div class=""></div>
						            	<p></p>
						            	<a href="#" class=""></a>
						            </div>
						        </div>
				</div><!-- Services Item #2 End -->
					 <div><!-- Services Item #2 -->
						        <div class="uk-card uk-card-default uk-box-shadow-hover-xlarge impx-service-card">
						        	<div class="uk-card-media-top">
						                <img src="images/client.png" alt="">
						            </div>
						            <div class="uk-card-body uk-card-small uk-text-center">
						            	<div class="uk-card-badge uk-label uk-label-danger bg-color-aqua">Espace Hotel</div>
						            	<p></p>
						            	<a href="#" class="uk-button uk-button-default uk-button-small impx-button gold impx-button-outline outline-gold button-wide impx-button-rounded small-border">Visiter Votre Espace</a>
						            </div>
						        </div>
				</div><!-- Services Item #2 End -->
						 <div><!-- Services Item #2 -->
						        <div class="uk-card uk-card-default uk-box-shadow-hover-xlarge impx-service-card">
						        	<div class="uk-card-media-top">
						                <img src="images/hotel.png" alt="">
						            </div>
						            <div class="uk-card-body uk-card-small uk-text-center">
						            	<div class="uk-card-badge uk-label uk-label-danger bg-color-aqua">Espace Client</div>
						            	<p></p>
						            	<a href="#" class="uk-button uk-button-default uk-button-small impx-button gold impx-button-outline outline-gold button-wide impx-button-rounded small-border">Visiter Votre Espace</a>
						            </div>
						        </div>
				</div><!-- Services Item #2 End -->
				
				
						    
						    
						</div>
					</div>
					<!-- Services List End -->
				
				
				
				<!-- Booking Form -->
				<div class="uk-margin-medium-bottom uk-margin-medium-top">
					<div class="impx-hp-booking-form impx-margin-top-small">
						<h6 class="uk-heading-line uk-text-center uk-margin-small-bottom impx-text-white"><span>Booking Form</span></h6>
						<form class="uk-child-width-1-6@xl uk-child-width-1-6@l uk-child-width-1-6@m uk-child-width-1-3@s uk-grid-medium" data-uk-grid>
							<div class="uk-form-controls">
							    <div class="uk-inline">
							    	<label class="uk-form-label  impx-text-white">Email</label>
							    	<span class="uk-form-icon" data-uk-icon="icon: mail"></span>
							        <input class="uk-input booking-email uk-border-rounded uk-width-1-1" type="text" placeholder="your e-mail">
							    </div>
						    </div>
						    <div class="uk-form-controls">
							    <div class="uk-inline">
							    	<label class="uk-form-label impx-text-white">Arrival</label>
							    	<span class="uk-form-icon" data-uk-icon="icon: calendar"></span>
							        <input class="uk-input booking-arrival uk-border-rounded" type="text" placeholder="m/dd/yyyy">
							    </div>
							</div>
						    <div class="uk-form-controls">
							    <div class="uk-inline">
							    	<label class="uk-form-label impx-text-white">Departure</label>
							    	<span class="uk-form-icon" data-uk-icon="icon: calendar"></span>
							        <input class="uk-input booking-departure uk-border-rounded" type="text" placeholder="m/dd/yyyy">
							    </div>
						    </div>
						    <div class="uk-form-controls uk-position-relative">
						    	<label class="uk-form-label impx-text-white" for="form-guest-select">Guest</label>
						    	<span class="uk-form-icon select-icon" data-uk-icon="icon: users"></span>
					            <select class="uk-select uk-border-rounded" id="form-guest-select">
					                <option value="">Please select...</option>
					                <option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
					            </select>
						    </div>
						   	<div class="uk-form-controls uk-position-relative">
						    	<label class="uk-form-label impx-text-white" for="form-rooms-select">Rooms</label>
						    	<span class="uk-form-icon select-icon" data-uk-icon="icon: album"></span>
					            <select class="uk-select uk-border-rounded" id="form-rooms-select">
					                <option value="">Please select...</option>
					                <option value="room_1">Single</option>
									<option value="room_2">Double</option>
									<option value="room_3">Primier</option>
									<option value="room_4">Deluxe</option>
					            </select>
						    </div>
						    <div>
						    	<label class="uk-form-label empty-label" >&nbsp;</label>
						        <button class="uk-button uk-width-1-1">Book Now!</button>
						    </div>
						</form>
					</div>
				</div>
				<!-- Booking Form End -->

		

			</div>
		</div>
		<!-- SERVICES LIST & BOOKING FORM END -->
		<br/>
		<br/>
				<!-- PRICING PLANS -->
		<div class="uk-padding uk-padding-remove-horizontal impx-section-pricing">
			<div class="uk-container">
				<div class="uk-flex uk-flex-center uk-margin-medium-bottom impx-margin-bottom-small">
					<!-- Pricing Intro -->
					<div class="uk-width-2-3@xl uk-width-2-3@l uk-width-2-3@m uk-width-1-1@s uk-text-center hp-offer-intro">
						<h2 class="uk-margin-small-bottom">Les meilleurs Hotels</h2>
						<p class="impx-text-large uk-margin-remove-top uk-margin-small-bottom">Eiuro, inquit adridens, iniquum, hac quidem de re Conferam tecum, Hanc quoque iucunditatem, si vis, <span class="uk-label uk-label-danger uk-text-bold bg-color-gold">$299 for 3 Nights</span> transfer in animum; Sed quanta sit alias?</p>
					</div>
					<!-- Pricing Intro End -->
				</div>

				<div class="uk-flex uk-flex-center uk-margin-bottom">
					<div class="uk-width-5-6@xl uk-width-5-6@l uk-width-5-6@m uk-width-1-1@s impx-pricing-list" data-uk-grid>

						<ul class="uk-child-width-1-3@xl uk-child-width-1-3@l uk-child-width-1-3@m uk-child-width-1-3@s uk-grid-collapse impx-promo-pricing-list" data-uk-grid>
							<li class="uk-position-relative"><!-- Pricing Item #1-->
								<div class="impx-promo-pricing uk-box-shadow-large uk-light">
									<div class="uk-position-relative">
										<img src="images/pricing-img-1.jpg" alt="">
										<div class="impx-overlay light"></div>
									</div>
									<div class="uk-position-relative uk-padding bg-color-gold">
							            <h4 class="uk-heading-line uk-margin-small-bottom"><span>Silver</span></h4>
							            <span class="uk-label uk-label-success impx-text-gold uk-text-bold">$299 for 3 Nights</span>
										<ul class="uk-list">
											<li><i class="fa fa-bed"></i> Quae qui non vident, nihil</li>
											<li><i class="fa fa-coffee"></i> praeclare inter se cohaerere</li>
											<li><i class="fa fa-group"></i> Tenesne igitur, inquam</li>
										</ul>
										<a href="#" class="uk-button impx-button small impx-button-outline small-border">View Detail <i class="fa fa-arrow-right"></i></a>
							        </div>
						        </div>
							</li><!-- Pricing Item #1 End -->
							<li class="uk-position-relative uk-position-z-index"><!-- Pricing Item #2 -->
								<div class="impx-promo-pricing uk-box-shadow-xlarge uk-light featured">
									<div class="uk-position-relative">
									<img src="images/pricing-img-2.jpg" alt="">
										<div class="impx-overlay light"></div>
									</div>
									<div class="uk-position-relative uk-padding bg-color-aqua">
							            <h3 class="uk-heading-line uk-margin-small-bottom"><span>Gold</span></h3>
							            <span class="uk-label uk-label-success impx-text-aqua uk-text-bold">$399 for 3 Nights</span>
										<ul class="uk-list uk-list-large">
											<li><i class="fa fa-bed"></i> Quae qui non vident, nihil</li>
											<li><i class="fa fa-coffee"></i> praeclare inter se cohaerere</li>
											<li><i class="fa fa-group"></i> Tenesne igitur, inquam</li>
										</ul>
										<a href="#" class="uk-button impx-button small impx-button-outline small-border">View Detail <i class="fa fa-arrow-right"></i></a>
							        </div>
						        </div>
							</li><!-- Pricing Item #2 End -->
							
							<li class="uk-position-relative"><!-- Pricing Item #3 -->
								<div class="impx-promo-pricing uk-box-shadow-large uk-light">
									<div class="uk-position-relative">
										<img src="images/pricing-img-4.jpg" alt="">
										<div class="impx-overlay light"></div>
									</div>
									<div class="uk-position-relative uk-padding bg-color-gold">
							            <h4 class="uk-heading-line uk-margin-small-bottom"><span>Diamond</span></h4>
							            <span class="uk-label uk-label-success impx-text-gold uk-text-bold">$499 for 3 Nights</span>
										<ul class="uk-list">
											<li><i class="fa fa-bed"></i> Quae qui non vident, nihil</li>
											<li><i class="fa fa-coffee"></i> praeclare inter se cohaerere</li>
											<li><i class="fa fa-group"></i> Tenesne igitur, inquam</li>
										</ul>
										<a href="#" class="uk-button impx-button small impx-button-outline small-border">View Detail <i class="fa fa-arrow-right"></i></a>
							        </div>
						        </div>
							</li><!-- Pricing Item #3 End -->
						</ul>
						<br/>
						<br/>
									<ul class="uk-child-width-1-3@xl uk-child-width-1-3@l uk-child-width-1-3@m uk-child-width-1-3@s uk-grid-collapse impx-promo-pricing-list" data-uk-grid>
							<li class="uk-position-relative"><!-- Pricing Item #1-->
								<div class="impx-promo-pricing uk-box-shadow-large uk-light">
									<div class="uk-position-relative">
										<img src="images/pricing-img-1.jpg" alt="">
										<div class="impx-overlay light"></div>
									</div>
									<div class="uk-position-relative uk-padding bg-color-gold">
							            <h4 class="uk-heading-line uk-margin-small-bottom"><span>Silver</span></h4>
							            <span class="uk-label uk-label-success impx-text-gold uk-text-bold">$299 for 3 Nights</span>
										<ul class="uk-list">
											<li><i class="fa fa-bed"></i> Quae qui non vident, nihil</li>
											<li><i class="fa fa-coffee"></i> praeclare inter se cohaerere</li>
											<li><i class="fa fa-group"></i> Tenesne igitur, inquam</li>
										</ul>
										<a href="#" class="uk-button impx-button small impx-button-outline small-border">View Detail <i class="fa fa-arrow-right"></i></a>
							        </div>
						        </div>
							</li><!-- Pricing Item #1 End -->
							<li class="uk-position-relative uk-position-z-index"><!-- Pricing Item #2 -->
								<div class="impx-promo-pricing uk-box-shadow-xlarge uk-light featured">
									<div class="uk-position-relative">
									<img src="images/pricing-img-2.jpg" alt="">
										<div class="impx-overlay light"></div>
									</div>
									<div class="uk-position-relative uk-padding bg-color-aqua">
							            <h3 class="uk-heading-line uk-margin-small-bottom"><span>Gold</span></h3>
							            <span class="uk-label uk-label-success impx-text-aqua uk-text-bold">$399 for 3 Nights</span>
										<ul class="uk-list uk-list-large">
											<li><i class="fa fa-bed"></i> Quae qui non vident, nihil</li>
											<li><i class="fa fa-coffee"></i> praeclare inter se cohaerere</li>
											<li><i class="fa fa-group"></i> Tenesne igitur, inquam</li>
										</ul>
										<a href="#" class="uk-button impx-button small impx-button-outline small-border">View Detail <i class="fa fa-arrow-right"></i></a>
							        </div>
						        </div>
							</li><!-- Pricing Item #2 End -->
							
							<li class="uk-position-relative"><!-- Pricing Item #3 -->
								<div class="impx-promo-pricing uk-box-shadow-large uk-light">
									<div class="uk-position-relative">
										<img src="images/pricing-img-4.jpg" alt="">
										<div class="impx-overlay light"></div>
									</div>
									<div class="uk-position-relative uk-padding bg-color-gold">
							            <h4 class="uk-heading-line uk-margin-small-bottom"><span>Diamond</span></h4>
							            <span class="uk-label uk-label-success impx-text-gold uk-text-bold">$499 for 3 Nights</span>
										<ul class="uk-list">
											<li><i class="fa fa-bed"></i> Quae qui non vident, nihil</li>
											<li><i class="fa fa-coffee"></i> praeclare inter se cohaerere</li>
											<li><i class="fa fa-group"></i> Tenesne igitur, inquam</li>
										</ul>
										<a href="#" class="uk-button impx-button small impx-button-outline small-border">View Detail <i class="fa fa-arrow-right"></i></a>
							        </div>
						        </div>
							</li><!-- Pricing Item #3 End -->
						</ul>

					</div>
				</div>
			</div>
		</div>
		<!-- PRICING PLANS END -->
		<br/>
		<br/>
				<div class="uk-padding-large uk-padding-remove-horizontal uk-position-relative bg-img3 impx-features">
			<div class="uk-container">

				<div class="uk-width-3-4@xl uk-width-3-4@l uk-width-1-1@m uk-width-1-1@s uk-margin-medium-top uk-position-relative uk-height-1-1 impx-features-content" data-uk-grid>

					<!-- Intro Text -->
					<div class="impx-intro uk-text-left">
						<h2 class="uk-margin-remove-bottom uk-margin-small-top">Qui Sommes Nous?</h2>
						<p class="uk-margin-remove uk-text-uppercase">You can additional subtitle Here.</p>
					</div>
					<!-- Intro Text End -->
					<ul class="uk-child-width-1-3@xl uk-child-width-1-3@l uk-child-width-1-3@m uk-child-width-1-2@s impx-features-hl uk-grid-medium uk-grid-match uk-margin-top impx-margin-top-small" data-uk-grid>
						<li><!-- Reason Item #1 -->
					        <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color1 impx-feature-item uk-position-relative">
					        	<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Best Value for Family</h6>
								<p class="uk-margin-remove  impx-text-lighter">Cur igitur, cum de re conveniat, melius nos veriusque quam Stoici mallem aut expetendam.</p>
								<span data-uk-icon="icon: users; ratio: 8" class="feature-icon"></span>
					        </div>
						</li><!-- Reason Item #1 End -->
						<li><!-- Reason Item #2 -->
							 <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color2 impx-feature-item uk-position-relative">
								<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Services Priority</h6>
								<p class="uk-margin-remove impx-text-lighter">Cur igitur, cum de re conveniat, melius nos veriusque quam Stoici mallem aut expetendam.</p>
								<span data-uk-icon="icon: bell; ratio: 8" class="feature-icon"></span>
							</div>
						</li><!-- Reason Item #2 End -->
						<li><!-- Reason Item #3 -->
							<div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color3 impx-feature-item uk-position-relative">
								<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Best Facilities</h6>
								<p class="uk-margin-remove impx-text-lighter">Cur igitur, cum de re conveniat, melius nos veriusque quam Stoici mallem aut expetendam.</p>
								<span data-uk-icon="icon: star; ratio: 8" class="feature-icon"></span>
							</div>
						</li><!-- Reason Item #3 End -->
						<li><!-- Reason Item #4 -->
							 <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color4 impx-feature-item uk-position-relative">
								<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Satisfation Guarantee</h6>
								<p class="uk-margin-remove impx-text-lighter">Cur igitur, cum de re conveniat, melius nos veriusque quam Stoici mallem aut expetendam.</p>
								<span data-uk-icon="icon: heart; ratio: 8" class="feature-icon"></span>
							</div>
						</li><!-- Reason Item #4 End -->
						<li><!-- Reason Item #5 -->
							 <div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color5 impx-feature-item uk-position-relative">
								<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Beatiful Panorama</h6>
								<p class="uk-margin-remove impx-text-lighter">Cur igitur, cum de re conveniat, melius nos veriusque quam Stoici mallem aut expetendam.</p>
								<span data-uk-icon="icon: image; ratio: 8" class="feature-icon"></span>
							</div>
						</li><!-- Reason Item #5 End -->
						<li><!-- Reason Item #6 -->
							<div class="uk-card uk-card-default uk-card-body uk-box-shadow-medium color6 impx-feature-item uk-position-relative">
								<h6 class="uk-margin-remove-top uk-margin-bottom impx-text-white">Enjoy Your Time</h6>
								<p class="uk-margin-remove impx-text-lighter">Cur igitur, cum de re conveniat, melius nos veriusque quam Stoici mallem aut expetendam.</p>
								<span data-uk-icon="icon: happy; ratio: 8" class="feature-icon"></span>
							</div>
						</li><!-- Reason Item #6 End -->
					</ul>

				</div>

			</div>
		</div>
		<br>
		<br>
			<div class="uk-flex uk-flex-center uk-margin-medium-bottom impx-margin-bottom-small">
					<!-- Pricing Intro -->
					<div class="uk-width-2-3@xl uk-width-2-3@l uk-width-2-3@m uk-width-1-1@s uk-text-center hp-offer-intro">
						<h2 class="uk-margin-small-bottom">Les Meilleurs Chambres</h2>
						<p class="impx-text-large uk-margin-remove-top uk-margin-small-bottom">Eiuro, inquit adridens, iniquum, hac quidem de re Conferam tecum, Hanc quoque iucunditatem, si vis, <span class="uk-label uk-label-danger uk-text-bold bg-color-gold">$299 for 3 Nights</span> transfer in animum; Sed quanta sit alias?</p>
					</div>
					<!-- Pricing Intro End -->
				</div>
				<br/>
				<br/>
		<!-- ROOMS LIST -->
		<div class="uk-position-relative impx-section-rooms bg1 uk-position-relative uk-background-fixed uk-background-center-center uk-height-1-1">
			<div class="impx-overlay"></div>

			<div class="uk-container">
		    	<div class="uk-position-relative uk-visible-toggle">
			        <ul class="uk-child-width-1-2@xl uk-child-width-1-2@l uk-child-width-1-2@m uk-child-width-1-1@s uk-grid-collapse uk-box-shadow-large uk-grid-match impx-rooms-grid"  data-uk-grid>
			        	<li><!-- Room Item #1 -->
			            	<div class="impx-room-item medium">
			            		<div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s" data-uk-grid>
			            			<div class="uk-card-media-left uk-cover-container uk-position-relative">
			            				<canvas width="290" height="180"></canvas>
								        <img src="images/rooms/room-square-1.jpg" alt="" data-uk-cover>
								        <div class="impx-overlay light overlay-squared padding-xwide"></div>
								    </div>
							        <div class="uk-card-body uk-position-relative impx-padding-medium">
							        	<div class="uk-card-header uk-padding-remove-horizontal">
							                <h4 class="uk-card-title uk-margin-remove-bottom">Single Room</h4>
							                <p class="uk-text-meta uk-margin-remove-top">Subtitle Goes Here</p>
									    </div>
							        	<span class="uk-card-badge uk-label bg-color-aqua">from $50/night</span>
							            <ul class="uk-list room-fac">
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Beatus in maximarum timore</li>
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Oculis Compensabatur</li>
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Dolorisnos veriusque nihil</li>
										</ul>
										 <div class="uk-card-footer uk-padding-remove-horizontal uk-padding-remove-bottom">
									        <a href="room-detail.html" class="uk-button uk-button-text impx-text-aqua">Read more &raquo;</a>
									    </div>
							        </div>
								</div>
							</div>
						</li><!-- Room Item #1 End -->
						<li><!-- Room Item #2 -->
							<div class="impx-room-item medium">
								<div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s" data-uk-grid>
								    <div class="uk-card-media-left uk-cover-container uk-position-relative">
								    	<canvas width="290" height="180"></canvas>
								        <img src="images/rooms/room-square-5.jpg" alt="" data-uk-cover>
								        <div class="impx-overlay light overlay-squared padding-xwide"></div>
								    </div>
							        <div class="uk-card-body uk-position-relative impx-padding-medium">
							        	<div class="uk-card-header uk-padding-remove-horizontal">
							                <h4 class="uk-card-title uk-margin-remove-bottom">Double Room</h4>
							                <p class="uk-text-meta uk-margin-remove-top">Subtitle Goes Here</p>
									    </div>
							        	<span class="uk-card-badge uk-label bg-color-aqua">from $80/night</span>
							            <ul class="uk-list room-fac">
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Beatus in maximarum timore</li>
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Oculis Compensabatur</li>
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Dolorisnos veriusque nihil</li>
										</ul>
										<div class="uk-card-footer uk-padding-remove-horizontal uk-padding-remove-bottom">
									        <a href="room-detail.html" class="uk-button uk-button-text impx-text-aqua">Read more &raquo;</a>
									    </div>
							        </div>
								</div>
							</div>
						</li><!-- Room Item #2 End -->
						<li><!-- Room Item #3 -->
							<div class="impx-room-item medium">
								<div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s" data-uk-grid>
								    <div class="uk-card-body uk-position-relative impx-padding-medium">
							        	<div class="uk-card-header uk-padding-remove-horizontal">
							                <h4 class="uk-card-title uk-margin-remove-bottom">Premiere Room</h4>
							                <p class="uk-text-meta uk-margin-remove-top">Subtitle Goes Here</p>
									    </div>
							        	<span class="uk-card-badge uk-label bg-color-aqua">from $100/night</span>
							            <ul class="uk-list room-fac">
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Beatus in maximarum timore</li>
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Oculis Compensabatur</li>
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Dolorisnos veriusque nihil</li>
										</ul>
										<div class="uk-card-footer uk-padding-remove-horizontal uk-padding-remove-bottom">
									        <a href="room-detail.html" class="uk-button uk-button-text impx-text-aqua">Read more &raquo;</a>
									    </div>
							        </div>
							        <div class="uk-card-media-right uk-cover-container uk-position-relative">
							        	<canvas width="290" height="180"></canvas>
								        <img src="images/rooms/room-square-3.jpg" alt="" data-uk-cover>
								        <div class="impx-overlay light overlay-squared padding-xwide"></div>
								    </div>
								</div>
							</div>
						</li><!-- Room Item #3 End -->
						<li><!-- Room Item #4 -->
							<div class="impx-room-item medium">
								<div class="uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s" data-uk-grid>
									<div class="uk-card-body uk-position-relative impx-padding-medium">
							        	<div class="uk-card-header uk-padding-remove-horizontal">
							                <h4 class="uk-card-title uk-margin-remove-bottom">Deluxe Room</h4>
							                <p class="uk-text-meta uk-margin-remove-top">Subtitle Goes Here</p>
									    </div>
							        	<span class="uk-card-badge uk-label bg-color-aqua">from $150/night</span>
							            <ul class="uk-list room-fac">
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Beatus in maximarum timore</li>
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Oculis Compensabatur</li>
											<li><span class="impx-text-aqua" data-uk-icon="icon: check; ratio: 1;"></span> Dolorisnos veriusque nihil</li>
										</ul>
										<div class="uk-card-footer uk-padding-remove-horizontal uk-padding-remove-bottom">
									        <a href="room-detail.html" class="uk-button uk-button-text impx-text-aqua">Read more &raquo;</a>
									    </div>
							        </div>
								    <div class="uk-card-media-right uk-cover-container uk-position-relative">
								    	<canvas width="290" height="180"></canvas>
								        <img src="images/rooms/room-square-4.jpg" alt="" data-uk-cover>
								        <div class="impx-overlay light overlay-squared padding-xwide"></div>
								    </div>
								</div>
							</div>
						</li><!-- Room Item #4 End -->
			        </ul>
		        </div>
			</div>

		</div>
		<!-- ROOMS LIST END -->

		<!-- WHY CHOOSE US? -->
						
		<!-- WHY CHOOSE US? END -->
			


<br/>
<br/>
<br/>
<br/>	

		<!-- CONTACT SECTION -->
		<div class="impx-contact">
			<div id="impx-gmap"></div>

			<div class="impx-overlay aqua-darkest  uk-padding uk-padding-remove-bottom uk-padding-remove-horizontal">
				<div class="uk-container">

					<div class="uk-width-2-3@xl uk-width-2-3@l uk-width-2-3@m uk-width-1-1@s uk-margin-medium-bottom">
						<!-- Location -->
						<h4 class="impx-text-white">Our Location</h4>
						<p class="impx-text-large impx-text-light">Oculorum, inquit Plato, est in nobis sensus acerrimus, quibus sapientiam non cernimus non semper inquam At enim sequor utilitatem praetermissum in Stoicis?</p>
						<!-- Location End -->
					</div>

					<div data-uk-grid class="uk-padding-remove-bottom"><!-- Address -->
						<div class="uk-light uk-width-1-2@xl uk-width-1-2@l uk-width-1-2@m uk-width-1-1@s">
							<h5 class="uk-heading-line uk-margin-remove-bottom impx-text-white"><span>Address</span></h5>
							<p class="impx-text-large uk-margin-top impx-text-light">Jln. Raya Kemerderkaan RI No. 17<br/>Indonesia Raya</p>
						</div><!-- Address End-->
						<div class="uk-light uk-width-1-4@xl uk-width-1-4@l uk-width-1-4@m uk-width-1-1@s"><!-- Phone -->
							<h5 class="uk-heading-line uk-margin-bottom impx-text-white"><span>Phone</span></h5>
							<p class="impx-text-large uk-margin-remove impx-text-light">+62 123456789<br/>+62 987456123</p>
						</div><!-- Phone End -->
						<div class="uk-light uk-width-1-4@xl uk-width-1-4@l uk-width-1-4@m uk-width-1-1@s"><!-- Email -->
							<h5 class="uk-heading-line uk-margin-bottom  impx-text-white"><span>Email</span></h5>
							<a href="mailt:#" class="impx-text-large impx-text-light">cs@sativa-html.com</a><br/>
							<a href="mailt:#" class="impx-text-large impx-text-light">info@sativa-html.com</a>
						</div><!-- Email End -->
					</div>

				</div>
			</div>
		</div>
		<!-- CONTACT SECTION END -->

		<!-- FOOTER -->
		<footer id="impx-footer" class="uk-padding uk-padding-remove-bottom uk-padding-remove-horizontal">
			<div class="uk-container">
				<div class="uk-flex uk-flex-center data-uk-grid">
					<div class="uk-width-1-2@xl uk-width-1-2@l uk-width-2-3@m">
						<div class="impx-footer-logo uk-align-center uk-text-center">
							<!-- Footer Logo -->
							<img src="images/logo.png" alt="" class="">
							<!-- Footer Note -->
							<p class="uk-margin-bottom">Erit enim mecum, si tecum erit. Re mihi non aeque satisfacit, et quidem locis dissimile homini. Intrandum est igitur in rerum naturam et penitus quid ea postulet.</p>							
							<!-- Site Copyright -->
							<p class="impx-copyright"><a href="https://www.templatespoint.net" target="_blank">Templates Point</a></p>
						</div>
					</div>
				</div>
			</div>
			<!-- Scroll to Top -->
			<a href="#top" class="to-top fa fa-long-arrow-up" data-uk-scroll></a>
			<!-- Scroll to Top End -->
		</footer>
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
        <script src="js/template-config.js"></script>
</body>
</html>