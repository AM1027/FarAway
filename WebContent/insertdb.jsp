<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <title>INSERT DB</title>
    </head>
    <body>
	

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/faraway"
     user="root"  password="admin"/>

<sql:update dataSource="${snapshot}" var="result">

		INSERT INTO faraway.houses (owner, location, size, date_from, date_to) VALUES (?, ?, ?, ?, ?)
				<sql:param value="${param.owner}" />
				<sql:param value="${param.location}" />
				<sql:param value="${param.size}" />
				<sql:param value="${param.datefrom}" />
				<sql:param value="${param.dateto}" />
</sql:update>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from faraway.houses;
</sql:query>
 
 </body>
</html>