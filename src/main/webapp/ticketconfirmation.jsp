<%@ page import="java.util.Random" %>
<html>
   <head>
      <title>ticket confirmation message</title>
   </head>
   
   <body style="background-color:powderblue;">
      <center>
      <h1 style="color:red;">Congratulations!Your ticket booked successfully.</h1>
      <%Random rand = new Random();int randomnumber = rand.nextInt(900000) + 100000;%>
        PNR No.:<input type="text" name="pnr number" value="<%=randomnumber%>"/><br/>
        <ul>
     
      <li><p><b>name</b>
            <%= session.getAttribute("SES_NAME")%>
         </p></li>
         <li><p><b>source</b>
            <%= session.getAttribute("SES_SOURCE")%>
         </p></li>
         <li><p><b>destination</b>
            <%= session.getAttribute("SES_DEST")%>
         </p></li>
         
      </ul>
      
   </body>
</html>