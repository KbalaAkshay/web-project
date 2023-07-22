<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login back end</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/webproject"
	user="root"
	password=""/>

	
<sql:update var="rs" dataSource="${db}">
	insert into account (fname, lname, mobno,email,passw) values (?,?,?,?,?)
	<sql:param value="${param.fname}"/>
        <sql:param value="${param.lname}"/>
        <sql:param value="${param.mob}"/>
	<sql:param value="${param.email}"/>
	<sql:param value="${param.pass}"/>
</sql:update>	

<c:redirect url="http://localhost:8080/WebApplication1/index.html" />



</body>
</html>
