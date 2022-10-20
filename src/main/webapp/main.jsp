<%
	String s_name=request.getParameter("name");
      String s_source=request.getParameter("source");
      String s_destination=request.getParameter("destination");
      
      session.setAttribute("SES_NAME",s_name);
       session.setAttribute("SES_SOURCE",s_source);
     session.setAttribute("SES_DEST",s_destination);
 %>
<html>
   <head>
      <title>Using GET and POST Method to Read Form Data</title>
   </head>
   
   <body style="background-color:powderblue;">
      <center>
      <h1>your seat has confirmed with below details.Please make payment</h1>
		
      
      <ul>
      <li><p><b>name</b>
            <%= request.getParameter("name")%>
         </p></li>
         <li><p><b>source</b>
            <%= request.getParameter("source")%>
         </p></li>
         <li><p><b>destination</b>
            <%= request.getParameter("destination")%>
         </p></li>
         <li><p><b>Travel date</b>
            <%= request.getParameter("travel date")%>
         </p></li>
      </ul>
      <form action="payment.html" method="post">
      
      
      <input type="submit" value="make payment">
   </body>
</html>