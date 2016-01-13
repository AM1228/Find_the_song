<%-- 
    Author     : Papatzelos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%>
<%@ page errorPage="ShowError.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find The Song</title>
<style>
body {

background-image: url("wp1.jpg");
background-repeat: no-repeat;
color:white;
 font-family:arial; 
   font-size: 18pt; 
   text-align:center;
   position: absolute;
   width: 100%;
   height: 100%;
   top:0;
   left: 0;
}  


h1 {
   font-family:arial; 
   font-size: 18pt; 
   position: absolute;
   width: 100%;
   height: 100%;
   top:100px;
   left: 0;
}

form {
   font-family:arial; 
   font-size: 18pt; 
   position: absolute;
   width: 100%;
   height: 100%;
   top:250px;
   left: 0;
}


 
</style>
 </head>
    
    <body>
      <h1>Welcome to my web-app</h1>

     
       <form action="auth.jsp" method="post">
        First name: <input type="text" name="fname"><br>
        Last name: <input type="text" name="lname"><br>
        <input type="submit" value="Submit">
        </form>




    </body>
</html>
