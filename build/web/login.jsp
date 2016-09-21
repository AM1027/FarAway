<%-- 
    Document   : index
    Created on : 23 Δεκ 2015, 8:24:18 μμ
    Author     : RG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<link href="css/index.css" rel="stylesheet" type="text/css"/>--> 
        <link href="css/login.css" rel="stylesheet" type="text/css"/> 
        <link rel='icon' href='images/favicon.png' type='image/x-icon' >
        <link href="css/hover.css" rel="stylesheet" media="all">
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>  
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>      
        <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.js" type="text/javascript" ></script>
        <meta name="description" content="FWelcome on arAway" />
        <meta name="keywords" content="FarAway" />
        <meta name="author" content="Lemonia Panagiotou" />
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="css/bootstrap-responsive.css" />
        <link rel="stylesheet" href="css/bootstrap-dialog.min.css">
        <link rel="stylesheet" href="css/main.css" />
        <link rel="stylesheet" id="google_fonts-css" href="//fonts.googleapis.com/css?family=Megrim|Raleway|Open+Sans:400,400italic,700,700italic" type="text/css" media="all">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <title>Welcome to FarAway</title>
    </head>
    <body >    
        <%
            request.setAttribute("pageHeading", "Welcome to FarAway");
        %>
        
        <body class="flex-center-wrapper">
            <img alt="" src="static/img/vacation.jpg"/>
            <div class="navbar navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a href="/FarAway/"><header class="brand">FarAway</header></a>
                        <nav class="nav-collapse">
                            <ul class="nav">
                                <li class="active"><a href="/FarAway/">Home</a></li>  
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="container">
            <hgroup>

                <% if (request.getAttribute("pageHeading") != null) { %>
                <h1 class="hero-unit">${pageHeading}</h1>
                <% }%>

            </hgroup>  

            <div id="mainPane">
                <%
                    Cookie loginCookie = null;
                    Cookie[] cookies = request.getCookies();
                    if (cookies != null) {
                        for (Cookie cookie : cookies) {
                            if (cookie.getName().equals("user")) {
                                loginCookie = cookie;
                                break;
                            }
                        }
                    }
                    if (loginCookie != null) {
                        loginCookie.setMaxAge(0);
//                        response.addCookie(loginCookie);
                    }
                    System.out.println("Logging out");
                %>

                <div class="form-container">
                    <center ><h2 style=" color: white;">Welcome to FarAway!</h2></center>

                    <center><a href="" class="hvr-float-shadow" style="margin:0em 1em 1em 1em;"><img  src="images/favicon2.png"  alt="ImageSpot" width="100px" ></a></center>
                    <form action="do.Connect"  method="POST">
                        <div class="form-group">                        
                            <label for="username">Username*</label>
                            <input name="username" type="text" class="form-control" id="username" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="password">Password*</label>
                            <input name="password" type="password" class="form-control" id="password" placeholder="Password">
                        </div>                
                        <center><button type="submit" class="btn btn-primary">Login</button></center>
                    </form>

                </div>

            </div>
            <span style="margin-left: 1%; color: white;">*Please apply your University of Thessaly academic credentials to login.</span></br>
            <jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>

