
<header id="impx-header">
	<div>
		<div class="impx-menu-wrapper style2"
			data-uk-sticky="top: .impx-slide-container; animation: uk-animation-slide-top">

			<!-- Mobile Nav Start -->
			<div id="mobile-nav" data-uk-offcanvas="mode: push; overlay: true">
				<div class="uk-offcanvas-bar">

					<ul class="uk-nav uk-nav-default">
						<li class="uk-parent uk-active"><a href="index.html">Home</a>
							<ul class="uk-nav-sub">
								<li><a href="index.html">Homepage 1</a></li>
								<li><a href="index2.html">Homepage 2</a></li>
								<li><a href="index3.html">Homepage 3</a></li>
							</ul></li>
						<li class="uk-parent"><a href="rooms1.html"
							class="uk-navbar-nav-subtitle">Rooms</a>
							<ul class="uk-nav-sub">
								<li><a href="rooms1.html">Rooms Style 1</a></li>
								<li><a href="rooms2.html">Rooms Style 2</a></li>
								<li><a href="rooms3.html">Rooms Style 3</a></li>
								<li><a href="room-detail.html">Room Detail 1</a></li>
								<li><a href="room-detail2.html">Room Detail 2</a></li>
							</ul></li>
						<li><a href="restaurant.html">Restaurant</a></li>
						<li><a href="spa.html">Spa</a></li>
						<li><a href="activities.html">Activities</a></li>
						<li class="uk-parent"><a href="#">Pages</a>
							<ul class="uk-nav-sub">
								<li><a href="about.html">About Us</a></li>
								<li><a href="testimonial.html">Testimonial</a></li>
								<li><a href="blog.html">Blog</a></li>
								<li><a href="single-post.html">Single Post</a></li>
								<li><a href="gallery.html">Gallery</a></li>
								<li><a href="element.html">Element</a></li>
							</ul></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>

				</div>
			</div>
			<a href="#mobile-nav"
				class="uk-hidden@xl uk-hidden@l uk-hidden@m mobile-nav"
				data-uk-toggle="target: #mobile-nav"><i class="fa fa-bars"></i>Menu</a>
			<!-- Mobile Nav End -->

			<!-- Top Header -->
			<div class="impx-top-header style2">
				<div class="uk-container uk-container-expand">

					<div class="uk-grid">
						<!-- header phone -->
						<div
							class="uk-width-1-2@xl uk-width-1-2@l uk-width-1-2@m uk-width-1-1@s">
							<div class="impx-top-phone">
								<p>
									<i class="fa fa-phone"></i> Phone : +62 123456789
								</p>
							</div>
						</div>
						<!-- header phone end-->
						<!-- header social media -->
						<div
							class="uk-width-1-2@xl uk-width-1-2@l uk-width-1-2@m uk-width-1-1@s">
							<div class="impx-top-social">
								<ul>
									<li><a href="#"><i class="fa fa-facebook-f"></i>Facebook</a></li>
									<li><a href="#"><i class="fa fa-instagram"></i>Instagram</a></li>
									<li><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
								</ul>
							</div>
						</div>
						<!-- header social media end -->
					</div>

				</div>
			</div>
			<!-- Top Header End -->


			<div class="uk-container uk-container-expand">
				<div data-uk-grid>

					<!-- Header Logo -->
					<div class="uk-width-auto">
						<div class="impx-logo">
							<a href="index.html"><img src="images/logo.png" class=""
								alt="Logo"></a>
						</div>
					</div>
					<!-- Header Logo End-->

					<!-- Header Navigation -->
					<div class="uk-width-expand uk-position-relative">
						<nav
							class="uk-navbar-container uk-navbar-transparent uk-visible@s uk-visible@m"
							data-uk-navbar>
							<div class="uk-navbar-right impx-navbar-right">
								<ul class="uk-navbar-nav impx-nav style2">
									<!-- Navigation Items -->
									<li>
										<a href="index">
											<div>
												Accueil
											</div>
										</a>
									</li>
									<li><a href="rooms1.html" class="uk-navbar-nav-subtitle"><div>
												Les chambres
												<div class="uk-navbar-subtitle">Notre meuilleur Suites</div>
											</div></a>
										<div
											class="uk-navbar-dropdown uk-navbar-dropdown-width-4 impx-megamenu"
											data-uk-drop="boundary: .impx-navbar-right; boundary-align: true; pos: bottom-justify;">
											<div class="uk-navbar-dropdown-grid uk-child-width-1-4"
												data-uk-grid>
											
												<sql:query var="rs" dataSource="${db}">
												select i.image,raison_social,c.description from chambre c,hotel h, image_chambre i where c.id_hotel = h.id_hotel && i.id_chambre = c.id_chambre LIMIT 4
												</sql:query>
												<c:forEach var="columnName" items="${rs.rows}">
													<div>
														<ul class="uk-nav uk-navbar-dropdown-nav">
															<li class="uk-nav-header uk-text-bold">${columnName.raison_social}</li>
															<li><a href="rooms1.html"><img
																	src="${columnName.image}" alt=""></a>
																<p
																	class="uk-margin-small-bottom uk-margin-small-top impx-hidden-m">${columnName.description}</p> <a
																class="uk-button uk-button-default uk-button-small impx-button impx-button-outline aqua small small-border"
																href="rooms1.html">Visit Page</a></li>
														</ul>
													</div>
												</c:forEach>												
											</div>
										</div></li>
									<li><a href="restaurant.html"><div>
												Restaurant
												<div class="uk-navbar-subtitle">In-house Restaurant</div>
											</div></a></li>
									<li><a href="spa.html"><div>
												Spa
												<div class="uk-navbar-subtitle">Our Spa Service</div>
											</div></a></li>
									<li><a href="activities.html"
										class="uk-navbar-nav-subtitle"><div>
												Activities
												<div class="uk-navbar-subtitle">Our Facilities</div>
											</div></a></li>
									<li class="uk-parent"><a href="#"
										class="uk-navbar-nav-subtitle"><div>
												Pages
												<div class="uk-navbar-subtitle">the Other Pages</div>
											</div></a>
										<div class="uk-navbar-dropdown">
											<ul class="uk-nav uk-navbar-dropdown-nav">
												<li><a href="about.html">About Us</a></li>
												<li><a href="testimonial.html">Testimonial</a></li>
												<li><a href="blog.html">Blog</a></li>
												<li><a href="single-post.html">Single Post</a></li>
												<li><a href="gallery.html">Gallery</a></li>
												<li><a href="element.html">Element</a></li>
											</ul>
										</div></li>
									<li><a href="contact.html" class="uk-navbar-nav-subtitle"><div>
												Contact
												<div class="uk-navbar-subtitle">Get in Touch</div>
											</div></a></li>
									<c:if test="${sessionScope.personne != null }">
										<!-- menu d'authentification ajouter par hamza -->
										<li class="nav-item dropdown"><a
											class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false"> <img
												src="${sessionScope.personne.image }"
												style="display: block; border-radius: 200px; box-sizing: border-box; background-color: #DDD; border: 1px solid #31a9a9;"
												width="70" height="70">
										</a> <!-- Here's the magic. Add the .animate and .slide-in classes to your .dropdown-menu and you're all set! -->
											<div
												class="dropdown-menu dropdown-menu-right animate slideIn"
												aria-labelledby="navbarDropdown">
												<a class="dropdown-item" href="#">My Profile</a> <a
													class="dropdown-item" href="#">My reservations</a>
												<div class="dropdown-divider"
													style="border: 1px solid #31a9a9"></div>
												<a class="dropdown-item" href="#">Log Out</a>
											</div></li>
									</c:if>
								</ul>
								<!-- Navigation Items End -->
							</div>
						</nav>
					</div>
					<!-- Header Navigation End -->

					<!-- Promo Ribbon -->
					<div class="uk-width-auto uk-position-relative">
						<div class="ribbon">
							<i><span><s></s>30% <span>Off!</span><s></s></span></i>
						</div>
					</div>
					<!-- Promo Ribbon End -->

				</div>
			</div>
		</div>
	</div>

</header>