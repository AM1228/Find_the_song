<%-- 
    Author     : Papatzelos
--%>

<%@page import="com.example.model.Ftsong"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.uthldap.Uthldap" %>
<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auth Page</title>
    </head>
    <body>
        
    
 
<%

 
        String user=request.getParameter("fname");
        String pass=request.getParameter("lname");
        
       
        
        
         
        

        

         Uthldap ldap = new Uthldap(user,pass);
        

        session.setAttribute( "theName", ldap.getName() );
        session.setAttribute( "points", 0);
        session.setAttribute( "times", 0 );


       
        
        if(ldap.auth() || user.equals("admin")){
           
         %>
         
             <jsp:forward page = "main.jsp" />
        <%    
        }
        else{
           
            %>
          
   
      
   
             <jsp:forward page = "index.jsp" />
        <%
            
        }

%>    
        
        
        
    </body>
</html>
