<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
<style>
         body{
        background-image:url('backgroung2.jpg');
        background-repeat: no-repeat;
        background-attachment:fixed;
        background-size:100% 100%;
        }        
</style>
</head>
<body>
<h1 style="color:red;">Welcome to our fastest flight booking site FlyAway</h1>
<form action="search.jsp" method="post">
<table border="2" align ="left"  color="pink" >
<tr><td>Travel Date </td><td><input type="date" id="traveldate" name="traveldate"
placeholder="dd/mm/yyyy"></td></tr> 
</br><tr><td><label for="source">Source</label></td><td>
<input list="source" id="date" name="source" />
<datalist id="source">
<option value="Hyderabad">
<option value="Delhi">
<option value="Kolkata">
<option value="Mumbai">
<option value="Bangalore">
</datalist></td></tr>
</br> </br><tr><td> <label for="destination">Destination </label></td><td>
<input list="destination" id="date" name="destination" />
<datalist id="destination">
<option value="Hyderabad">
<option value="Delhi">
<option value="Kolkata">
<option value="Mumbai">
<option value="Bangalore">
</datalist></td></tr>
</br>
</br><tr><td><input type="submit" value="show available flights"></td><td></br>

</form>
<form action="login.jsp" method="post">
<tr><td><input type="submit" value="Admin Login"></td><td>
</form>

</body>
</html>	
