package com.example.model;

/**
 *
 * @author Papatzelos
 */

import static java.lang.System.out;
import java.util.*;
import java.util.Random;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.SQLException;


   public class Ftsong {
   public static ResultSet rs;
   public static Statement stmt;
   public static Connection con;
   public static String track;
   public static String singer;
   public static int points=0;
   public static Connection conu;
    
  
   
   public  String db() throws SQLException {
  
  
   String url = "jdbc:mysql://localhost:3306/test1";

    Random randomGenerator = new Random();
    String str;
    int randomInt = randomGenerator.nextInt(8);
    out.print( randomInt);
    String query="SELECT * FROM testsongs WHERE number = ";
    str=String.valueOf(randomInt);
    query=query.concat(str);
      //out.println(query);
      
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, "root", "kalimera"); 
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            
          
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Ftsong.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Error condition!!!");
        }
        	
        while(rs.next()){
        track=rs.getString("number");
        singer=rs.getString("name");
        //con.close();
        return (track);

        }


    return (" ");
    }
    
    
     
    
    
    
   public List getTypes(String type) throws SQLException{
    
    
     List types = new ArrayList();
     if(new String(type).equals(singer)){
     types.add("You are right!!!");
     types.add("<audio src=\"win.mp3\" autoplay></audio> ");
     //points++;
    // types.add("Your current points is:"+points);
     //types.add(points);
     
    
     }else {      
       types.add("Sorry you did wrong..");
       types.add("<audio src=\"lose.mp3\" autoplay></audio> ");
       //points--;
       // types.add("Your current points is:"+points); 
        //types.add(points);
      
     
     }
  
     return(types);
   }
   
   
}