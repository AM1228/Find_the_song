<%-- 
    Author     : Papatzelos
--%>
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.sql.SQLException" %>
<%@ page errorPage="ShowError.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total Scores</title>
<style>
        h1 {
   font-family:arial; 
   font-size: 18pt;
   color:white;
   text-align: center;
   position:  static;
   width: 100%;
   height: 100%;
   top:100px;
   left: 50%;
}
  </style>
    </head>

    <body background="wp1.jpg">
           
        
        <h1>THE END!</h1>
        <h1>Thanks for playing.</h1>
        
        <%
         Connection con2;
         try { Class.forName("com.mysql.jdbc.Driver");
         String url = "jdbc:mysql://localhost:3306/test1";
    con2= DriverManager.getConnection(url, "root", "kalimera");
            String sQuery = "insert into users(name, pts) values (?, ?)";
            PreparedStatement prep = con2.prepareStatement(sQuery);
            
            
          prep.setString(1,(String)session.getAttribute( "theName" ));
          prep.setInt(2,(int)session.getAttribute( "points"));
         
          prep.executeUpdate();
    } catch (ClassNotFoundException ex) {
      throw new RuntimeException("Error condition!!!");  
        }
        
        
       %> 
       <h1>
       TOTAL SCORE:
       <%=(int)session.getAttribute( "points")%>
      </h1>
       
        <%session.setAttribute( "times", 0 );%>
        
            <h1>
<a href="main.jsp" style="color: white">Click here to Play Again</a>
</h1>
    </body>
</html>
