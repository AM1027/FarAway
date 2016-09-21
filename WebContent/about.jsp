<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String title = "About Us";
request.setAttribute("pageTitle", title);
request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>
<%  String username = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("user")) {
                username = cookie.getValue();
                out.println("<h4 id='canary'>" + username + "</h4>");
            }
        }
    }
%>
<script>
    //redirect to login 
    var username = "<%out.print(username);%>";
    console.log(username);
    if (username === "null") {
        console.log("redirecting to login");
        console.log(window.location.href);
        window.location.href = "/FarAway/login.jsp";
    }
</script>


<div class="center">
  


</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>