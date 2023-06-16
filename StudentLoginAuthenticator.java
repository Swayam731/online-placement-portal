package model;

import db.DBConnector;
import dto.LoginDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author swayam
 */
public class StudentLoginAuthenticator 
{
    public boolean studentLogin(LoginDTO ldto)
    {
        String username = ldto.getUsername();
        String password = ldto.getPassword();
        String tablePassword="";
        
        try
        {
            Statement st = DBConnector.getStatement();
            String query = "select password from studentinfo where username = '"+username+"' ";
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next()) 
                
            {
                tablePassword = rs.getString(1);
                
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if(username!=null && password!=null && !username.trim().equals("") && password.equals(tablePassword))
        {
            return true;
        }
        return false;
    }
}
