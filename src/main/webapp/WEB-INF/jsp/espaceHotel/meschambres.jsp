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
        <title>Mes chambres</title>
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
		<sql:query var="rshotel" dataSource="${db}">
			select * from chambre where id_hotel = ${sessionScope.hotel.id_hotel }
		</sql:query>
		
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
		<!-- Static Table Start -->
        <div class="data-table-area mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline13-list">
                            <div class="sparkline13-hd">
                                <div class="main-sparkline13-hd">
                                    <h1 class="text-primary" style="color:#07d1ca!important">la liste de tes chambres</h1>
                                    <div class="add-product" style="text-align:right">
		                                <a href="AjouterChambre" class="btn btn-primary">Nouvelle chambre</a>
		                            </div>
                                </div>
                            </div>
                            <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">
                                    <div id="toolbar">
                                        <select class="form-control dt-tb">
											<option value="">Export Basic</option>
											<option value="all">Export All</option>
											<option value="selected">Export Selected</option>
										</select>
                                    </div>
                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                        data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead class="bg-primary text-dark" style="background-color : #07d1ca!important;color:white !important;">
                                            <tr>
                                                <th data-field="id">ID</th>
                                                <th data-field="name" data-editable="false">Description</th>
                                                <th data-field="email" data-editable="false">Prix</th>
                                                <th data-field="dt" data-editable="false">Promotion</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
												<c:forEach var="cls" items="${rshotel.rows}">
								                   	<tr>
		                                                <td>${cls.id_chambre}</td>
		                                                <td>${cls.description }</td>
		                                                <td>${cls.prix }</td>
		                                                <td>${cls.promotion }</td>
		                                                <td>
				                                            <a data-toggle="tooltip" title="Edit" href="ModifierChambre?id_chambre=${cls.id_chambre}" class="pd-setting-ed btn btn-success">
				                                                modifier
				                                            </a>
				                                            <a onclick="return confirm('vous êtes sûre?')" data-toggle="tooltip" title="Trash" href="supprimerChambre?id_chambre=${cls.id_chambre}" class="pd-setting-ed btn btn-danger">
				                                                supprimer 
				                                            </a>
				                                        </td>
		                                            </tr>
								                 </c:forEach>                                                                                  
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Static Table End -->		
		<!-- CONTACT INFO END -->

		<!-- FOOTER -->
		<%@ include file="../site/footer.jsp" %>
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

</html>