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

	<div class="container">
	<h2>Update id <c:out value="${idCustomer}"></c:out> </h2>
	
<form action="update" method="post">
  
  <div class="form-group">
    <label for="exampleInputEmail1">Id</label>
    <input type="text" value="${customer.customerId}" name="customerId" class="form-control"  aria-describedby="emailHelp" placeholder="Ingresa tu Nombre">
  </div>
  
  <div class="form-group">
    <label for="exampleInputEmail1">Nombre</label>
    <input type="text" value="${customer.firstName}" name="nombre" class="form-control"  placeholder="Ingresa tu Nombre">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Apellido</label>
    <input type="text" value="${customer.lastName}" name="apellido" class="form-control" placeholder="Ingresa tu Apellido">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <input type="email" value="${customer.email}" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <button type="submit" class="btn btn-primary">Guardar</button>
  
  <br/>
  <br/>
</form>
	
	
</body>
</html>