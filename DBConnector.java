package db;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author swayam
 */

public class DBConnector 
{
   static Connection con = null;
   static Statement st = null;
   
   static
   {
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           System.out.println("driver Loaded...");
           
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement","root","root");
           System.out.println("connected");
           
           st= con.createStatement();
       }
       catch(ClassNotFoundException e)
       {
           System.out.println(e);
       }
       catch(SQLException e)
       {
           System.out.println(e);
       }
   }
   public static Connection getConnection()
   {
       return con;
   }
   public static Statement getStatement()
   {
       return st;
   }
}
