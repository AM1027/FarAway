<%
    String title = "Log in error";
    request.setAttribute("pageTitle", title);
    request.setAttribute("pageHeading", title);
%>
<jsp:include page="/WEB-INF/jsp/header.inc.jsp"></jsp:include>

    <div class="center">
        <div class="panel panel-danger">
            <div class="panel-heading" style="color:white;">
                <h3 class="panel-title">Authentication Error</h3>
            </div>
            <div class="panel-body" style="color:white;">
                <p>Authentication has failed please try again...<p>
                <center><a class="btn btn-default" value="submit" style="margin-top: 2em;" href="login.jsp">Return</a></center>
            </div>
        </div>
    </div>
<jsp:include page="/WEB-INF/jsp/footer.inc.jsp"></jsp:include>
