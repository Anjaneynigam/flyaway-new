<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
    <title>simplilearn</title>
</head>
<body>
    < sql:setDataSource 
    var="database"
    driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/airline?allowPublicKeyRetrieval=true&useSSL=false"
     user="root"
     password="Anjaney@1234"
      />
      <c:set var = "NAME" value = "INDG1"/>
 
      <sql:update dataSource = "${database}" var = "rs">
         DELETE FROM flights WHERE NAME = ?
         <sql:param value = "${NAME}" />
      </sql:update>
   
<sql:query var="rs" dataSource ="${database}"  >
    SELECT * FROM flights;
</sql:query>    
<table border="2" width="50%">
    <tr>
        
        <td>NAME</td>
        <td>AIRLINE</td>
        <td>WAY</td>
        <td>PRICE</td>
        <td>source</td>
        <td>destination</td>
    </tr>
    
    <c:forEach var="user" items="${rs.rows}">
        <tr>
            <td> <c:out value="${user.name}"/> </td>
            <td> <c:out value="${user.airline}"/> </td>
            <td> <c:out value="${user.way}"/> </td>
            <td> <c:out value="${user.price}"/> </td>
            <td> <c:out value="${user.source}"/> </td>
            <td> <c:out value="${user.destination}"/> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
