<%@page import="com.motobigbike.Customer"%>
<%@page import="com.motobigbike.CustomerProfile"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	<h1>Welcome to Web</h1>
	<%
		Customer customer = new Customer();
		CustomerProfile customerProfile = customer.getCustomerProfileById("1");
		out.print("Output=" + customerProfile.jsonOutput);
	%>
</body>
</html>