<!DOCTYPE html>
<%@page import="org.sid.entities.Personne"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<html>

<head>
         
        <!-- Standard Meta -->
        <meta charset="utf-8">
        <meta name="format-detection" content="telephone=no" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="css/data-table/bootstrap-editable.css">
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
        <link rel="stylesheet" href="css/meanmenu.min.css">

    </head>

    <body id="impx-body">
    	
		<!-- HEADER -->
		<%@ include file="../site/header.jsp" %>
		<c:if test="${sessionScope.objetConnecter == null }">
			<c:redirect url = "loginClient"/>
		</c:if>
		<!-- HEADER END -->
		<sql:query var="rshotel" dataSource="${db}">
			select r.id_reservation,h.raison_social,h.adresse ,r.date_debut,r.date_fin, DATEDIFF(r.date_fin,date_debut)+1 as 'jour', c.prix*(DATEDIFF(r.date_fin,date_debut)+1) as 'Frais' ,r.etat from hotel h,reservation r,chambre c ,personne p
			where c.id_hotel = h.id_hotel && c.id_chambre=r.id_chambre && p.id_personne = r.id_personne && p.id_personne = ${sessionScope.objetConnecter.id_personne }
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
		<!-- Static Table Start -->
        <div class="data-table-area mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline13-list">
                            <div class="sparkline13-hd">
                                <div class="main-sparkline13-hd">
                                    <h1 class="text-primary" style="color:#07d1ca!important">la liste de mes réservations</h1>
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
                                        <thead class="bg-primary text-dark" style="background-color : #07d1ca!important">
                                            <tr>
                                                <th data-field="id">ID</th>
                                                <th data-field="name" data-editable="false">Hôtel</th>
                                                <th data-field="email" data-editable="false">Adresse</th>
                                                <th data-field="dt" data-editable="false">Date de début</th>
                                                 <th data-field="phosqne" data-editable="false">Date de fin</th>
                                                 <th data-field="sd" data-editable="false">Durée</th>
                                                 <th data-field="qsd" data-editable="false">Frais</th>
                                                 <th data-field="aze" data-editable="false">Etat</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
												<c:forEach var="cls" items="${rshotel.rows}">
								                   	<tr>
		                                                <td>${cls.id_reservation}</td>
		                                                <td>${cls.raison_social }</td>
		                                                <td>${cls.adresse }</td>
		                                                <td>${cls.date_debut }</td>
		                                                <td>${cls.date_fin }</td>
		                                                <td>${cls.jour }</td>
		                                                <td><c:if test="${fn:contains(cls.etat, 'accepter')}" >${cls.Frais }</c:if></td>
		                                                <td>${cls.etat}</td>
		                                                <td>
		                                                	<c:if test="${fn:contains(cls.etat, 'en traitement')}" >
					                                            <a data-toggle="tooltip" title="Edit" href="modifierReservation?id_reservation=${cls.id_reservation}" class="pd-setting-ed btn btn-success">
					                                                Changer
					                                            </a> 
					                                            <a onclick="return confirm('vous êtes sûre?')" data-toggle="tooltip" title="Trash" href="supprimerReservation?id_reservation=${cls.id_reservation}" class="pd-setting-ed btn btn-danger">
					                                                Annuler 
					                                            </a> 
				                                            </c:if>
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