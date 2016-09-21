<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<%
	String title = "Become a Host";
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
		<form id="form" action="insertdb.jsp" name="hosting" method="POST">
			<label for="owner" class="">Owner Name</label>
			<input type="text" name="owner" id="owner" value="" />
			<label for="location" class="">Location</label>
			<input type="text" name="location" id="location" value="" />
			<label for="size" class="">Guests</label>
			<input type="number" name="size" id="size" placeholder="1" value=""  min="1"/>
			<label for="datefrom" class="">Date From</label>
			<input type="date" name="datefrom" id="datefrom" value="" placeholder="yyyy-mm-dd" />
			<label for="dateto" class="">Date To</label>
			<input type="date" name="dateto" id="dateto" value="" placeholder="yyyy-mm-dd" />
			<br /><br />
			<button class="btn btn-default" type="button" value="Submit" name="Submit" id="submit">Submit</button>
		</form>
	</div>

<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>