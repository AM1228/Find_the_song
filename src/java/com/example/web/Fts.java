
/**
 *
 * @author Papatzelos
 */
package com.example.web;
import static java.lang.System.out;
import com.example.model.Ftsong;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.WebServlet;

@WebServlet(name = "Ftsong", urlPatterns = {"/Ftsong.do"})

public class Fts extends HttpServlet  {

  @Override
  public void doPost( HttpServletRequest request,
                      HttpServletResponse response)
                      throws IOException, ServletException {
    
      
      
    

      try {
                 
            Cookie cookie = null;
	  Cookie[] cookies = null;
      // Get an array of Cookies associated with this domain
      cookies = request.getCookies();
      if( cookies != null ){
          request.setAttribute("cookiemsg", "Hello again,you are the user with cookie value:");
         //out.println("Found Cookies Name and Value");
         for (int i = 0; i < cookies.length; i++){
            cookie = cookies[0];
            //out.print("Name : " + cookie.getName( ) + ",  ");
            //out.print("Value: " + cookie.getValue( )+" ");
            request.setAttribute("cookie", cookie.getValue( ));
            //response.addCookie(cookie);
         }
      }else{
          out.println(
            "No cookies founds");
      }
      
      
      
 
          String c = request.getParameter("type");
         
          

          Ftsong ce = new Ftsong();
          List result = ce.getTypes(c);
          
         
        
      
          request.setAttribute("styles", result);
          
          RequestDispatcher view = request.getRequestDispatcher("result.jsp");
          
          view.forward(request, response);
      } catch (SQLException ex) {
          Logger.getLogger(Fts.class.getName()).log(Level.SEVERE, null, ex);
      }
  }
   
}