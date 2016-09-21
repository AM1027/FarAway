<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <title>SEARCH DB</title>
    </head>
    <body>
	

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/faraway"
     user="root"  password="admin"/>

<sql:query dataSource="${snapshot}" var="result">
            SELECT * FROM faraway.houses WHERE location=? AND size>=? AND date_from<=? AND date_to>=?;
			<sql:param value="${param.location}" />
			<sql:param value="${param.size}" />
			<sql:param value="${param.datefrom}" />
			<sql:param value="${param.dateto}" />
        </sql:query>
 
<table border="1" width="100%">
<tr>
   <th>Owner</th>
   <th>Location</th>
   <th>Size</th>
   <th>Date From</th>
   <th>Date To</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.owner}"/></td>
   <td><c:out value="${row.location}"/></td>
   <td><c:out value="${row.size}"/></td>
   <td><c:out value="${row.date_from}"/></td>
   <td><c:out value="${row.date_to}"/></td>
</tr>
</c:forEach>
</table>
 </body>
</html>