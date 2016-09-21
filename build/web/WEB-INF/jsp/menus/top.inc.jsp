<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a href="/FarAway/home.jsp"><header class="brand">FarAway</header></a>

            <nav class="nav-collapse">
                <ul class="nav">
                    <li class="active"><a href="/FarAway/home.jsp">Home</a></li> 

                    <%  String username = null;
                        Cookie[] cookies = request.getCookies();
                        
                        if (cookies != null) {
                            for (Cookie cookie : cookies) {
                                System.out.println("cookies??? "+cookie.getName());
                                if (cookie.getName().equals("user")) {
                                    username = cookie.getValue();  
                                }
                            }
                        }
                        System.out.println("Cookie username: "+username);

                        if ((username == null) || (username.equals(""))) {                            
                            System.out.println("No user, header");
                            response.sendRedirect("/");
                        } else {
                            out.print("<li><a href='/FarAway/host.jsp'>Host</a></li>");
                            out.print("<li><a href='/FarAway/about.jsp'>About</a></li>");
                            out.print("<li><a href='/FarAway/contact.jsp'>Contact</a></li>");
                            out.print("<li><a href='/FarAway/home.jsp' ><strong>" + username + "</strong></a></li>");
                            out.print("<li>"
                                    + "<a id='logout' href='do.Logout'>Logout</a>"
                                    + "</li>");
                        }

                    %>
                </ul>
            </nav>
            <script type="text/javascript">

//             redirect to main site
                if (location.pathname === "/FarAway/do.Connect") {
                    console.log(window.location.href);
                    window.location.href = "/FarAway/home.jsp";
                }

//                if ($('#profile').html() === "") {
//                    $("#logo").attr('href', 'login.jsp');
//                }

            </script>


        </div>
    </div>
</div>