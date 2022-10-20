<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        <form action="placesmasterlist.jsp" method="post">
			<h2>
				<input type="submit" value="PlacesList">
			</h2>
		</form>
		<form action="airlinesmasterlist.jsp" method="post">
			<h2>
				<input type="submit" value="Airlines List">
			</h2>
		</form>
		<form action="flightsmasterlist.jsp" method="post">
			<h2>
				<input type="submit" value="FlightsList">
			</h2>
		</form>
		<form action="deletflights.jsp" method="post">
			<h2>
				<input type="submit" value="Delet flight list">
			</h2>
		</form>
		<form action="insertflights.jsp" method="post">
			<h2>
				<input type="submit" value="Updateflightlist">
			</h2>
		</form>
		<form action="changepassword.jsp" method="post">
			<h2>
				<input type="submit" value="Change Password">
			</h2>
		</form>
</body>
</html>
