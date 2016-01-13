<%-- 
    Author     : Papatzelos
--%>

<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page errorPage="ShowError.jsp" %>

<html>
<body>
    <style>
body {
background-image: url("wp1.jpg");
background-repeat: no-repeat;
background-position:calc;
}

h1 {
    color:white;
    font-size: 20pt;
    text-align:center; 
    width: 100%;
    height: 100%;
    top:450px;
    left: 0;
}

h2 {
    color:white;
    font-size: 20pt;
    text-align:center; 
    width: 100%;
    height: 100%;
    top:450px;
    left: 0;
}
h3 {
    color:white;
    font-size: 15pt;
    text-align: left; 
    width: 100%;
    height: 100%;
    top:450px;
    left: 0;
}
</style>
<h1 align="center">The Agent says:</h1>
<p>
    
<%--
<%
  List styles = (List) request.getAttribute("styles");
  Iterator it = styles.iterator();

    %> 
  --%> 
<h3>  <%=request.getAttribute("cookiemsg")%></h3>
<h3>  <%=request.getAttribute("cookie")%></h3>
  
  
  <h1><%  List sk = (List) request.getAttribute("styles");
  
  out.print(sk.get(0)); %>
  </h1>

  <h1><% out.print(sk.get(1)); %></h1>
  <h1>
      <%
       int pts=(int)session.getAttribute( "points");
       
      if(new String("You are right!!!").equals(sk.get(0))){
          pts++;
      
       session.setAttribute( "points",pts);
      }else{
           pts--;
     
     session.setAttribute( "points",pts);
      }
  session.setAttribute("points",pts); 
  %>
  
  </h1>
   
  <h1>
  Your current points is:<%=pts%>
  </h1>
  


<br/>
<br/>
<br/>
<center >
    <h1>
<a href="main.jsp" style="color: white">Click here to Continue</a>
</h1>
</center>


</html>
