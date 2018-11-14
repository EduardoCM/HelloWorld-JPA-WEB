<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>

	<ul class="nav nav-pills">
		<li role="presentation" class="active"><a href="index.jsp">Home</a></li>
		<li role="presentation"><a href="profile">Profile</a></li>
		<li role="presentation"><a href="messages">Messages</a></li>
	</ul>

	<div class="container">
	<h2>Employees</h2>
	
<form action="customer" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Nombre</label>
    <input type="text" name="nombre" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingresa tu Nombre">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Apellido</label>
    <input type="text" name="apellido" class="form-control" id="exampleInputPassword1" placeholder="Ingresa tu Apellido">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <button type="submit" class="btn btn-primary">Guardar</button>
  
  <br/>
  <br/>
</form>
	
	
	<form action="customer" method="get" id="searchCustomerForm" role="form">
	
	 
	 <button type="submit" class="btn btn-info">
	   <span class="glyphicon glyphicon-search" /> Buscar
	 </button>
	
	
	<table class="table table-striped">
	
	<thead>
	  <tr>
	    <td>#</td>
	    <td>Name</td>
	    <td>Last name</td>
	    <td>Email</td>
	  </tr>
	</thead>
	
	<c:forEach var="customer" items="${customers}">
	 <tr>
	   <td>${customer.customerId}</td>
	   <td>${customer.firstName}</td>
	   <td>${customer.lastName}</td>
	   <td>${customer.email}</td>	   
	   <td>
	      <a href="customer?action=edit&customerId=<c:out value="${customer.customerId}"/>"> 
	        <span class="glyphicon glyphicon-pencil"></span>
	      </a>
	   </td>
	   
	   <td>
	   
	      <a href="customer?action=delete&customerId=<c:out value="${customer.customerId}" />">
	         <span class="glyphicon glyphicon-trash"></span>
	      </a>
	   
	   <!--  
	      <a href="customer?action=delete?action=delete&customerId=<c:out value="${customer.customerId}"/>">
	      </a>
	   -->
	   </td>
	   
	 </tr>
	
	</c:forEach>
	
	</table>
	</form>
	</div>
	<!-- 
<a href="customer">Customer list </a>
 -->
</body>
</html>