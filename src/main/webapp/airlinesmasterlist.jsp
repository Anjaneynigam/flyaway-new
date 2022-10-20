<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
    <title>simplilearn</title>
</head>
<body style="background-color:powderblue;">
    < sql:setDataSource 
    var="database"
    driver="com.mysql.cj.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/airline?allowPublicKeyRetrieval=true&useSSL=false"
     user="root"
     password="Anjaney@1234"
      />
     
<sql:query var="rs" dataSource ="${database}"  >
    SELECT * FROM airlines;
</sql:query>    
<table border="2" width="100%">
    <tr>
        
        <td>code</td>
        <td>name</td>
        
    </tr>
    
    <c:forEach var="user" items="${rs.rows}">
        <tr>
            <td> <c:out value="${user.code}"/> </td>
            <td> <c:out value="${user.name}"/> </td>
            
        </tr>
    </c:forEach>
</table>
</body>
</html>
