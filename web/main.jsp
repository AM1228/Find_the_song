<%--
    Author     : Papatzelos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.example.model.Ftsong"%>
<%@ page errorPage="ShowError.jsp" %>

 
<!DOCTYPE html>
<html>
<title>Find The Song</title>
<style>
body {
background-image: url("wp1.jpg");
background-repeat: no-repeat;
background-position: calc;
}
.large { 
  font-family:arial; 
  font-size: 4pt; 
  text-align:center;
   position: absolute;
    width: 100%;
    height: 100%;
    top:250px;
    left: 0;
}  
.notlarge { 
  font-family:arial; 
  font-size: 8pt; 
  text-align:center;
   position: absolute;
    width: 100%;
    height: 100%;
    top:350px;
    left: 0;
} 

h1 {color:white;}
h3 {color: white;font-family:white;}

h2 {font-size: 4pt; position: absolute;left:95%;}
      
</style>
<body>
    <h3> 
 Hello, <%= session.getAttribute( "theName" ) %>

    </h3> 
 
<%
    
Ftsong database = new Ftsong();
String number = database.db();
%>

  <h2>  
 <button type="button" onclick="window.location.href='index.jsp'">Exit</button>  
</h2>

<audio id="player" src="<%=number%>"  autoplay ></audio>
<div class="large"> 
    
  <button onclick="document.getElementById('player').play()">Play</button> 
  <button onclick="document.getElementById('player').pause()">Pause</button> 
  <button onclick="document.getElementById('player').volume += 0.1">Vol+ </button> 
  <button onclick="document.getElementById('player').volume -= 0.1">Vol- </button> 
  <button onclick="document.getElementById('player').currentTime = 0;">Restart </button>
</div>


    
  <h1 align="center">Find The Song</h1>
<div class="notlarge">   
  <form method="POST" action="Ftsong.do">
   <h1> What's the song?</h1>
    <select name="type"  size="1">
      <option value="War Pigs">War Pigs</option>
      <option value="Paranoid">Paranoid</option>
      <option value="Fear of the dark">Fear of the dark</option>
      <option value="Holy diver">Holy diver</option>
      <option value="The trooper">The trooper</option>
      <option value="Kashmir">Kashmir</option>
      <option value="Stairway To Heaven">Stairway To Heaven</option>
      <option value="Fade to Black">Fade to Black</option>
    </select>
    
    <br><br>
    <center>
        <%
        int times=(int)session.getAttribute( "times" );
        times++;
        session.setAttribute( "times", times );
        if(times>=10){
            times=0;
             %>
        <jsp:forward page = "Scors.jsp" />
      <%   }%>
        <h1><% out.print("No "+times+" question"); %></h1>
      <input type="Submit"  >
    </center>
   </form>
</div>
</body>
</html>
