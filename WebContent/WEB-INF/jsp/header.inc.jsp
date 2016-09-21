<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<title>FarAway</title>
		<meta name="description" content="FWelcome on arAway" />
		<meta name="keywords" content="FarAway" />
		<meta name="author" content="Lemonia Panagiotou" />
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.css" />
		<link rel="stylesheet" href="css/bootstrap-dialog.min.css">
		<link rel="stylesheet" href="css/main.css" />
		<link rel="stylesheet" id="google_fonts-css" href="//fonts.googleapis.com/css?family=Megrim|Raleway|Open+Sans:400,400italic,700,700italic" type="text/css" media="all">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	</head>
	<body class="flex-center-wrapper">
		<img alt="" src="static/img/vacation.jpg"/>
		<jsp:include page="/WEB-INF/jsp/menus/top.inc.jsp"></jsp:include>
			<div class="container">
				<hgroup>

				<% if (request.getAttribute("pageHeading") != null) { %>
				<h1 class="hero-unit">${pageHeading}</h1>
				<% }%>

			</hgroup>   
