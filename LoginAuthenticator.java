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
public class LoginAuthenticator 
{
    public boolean isLogin(LoginDTO ldto)
    {
       String username = ldto.getUsername();
       String password = ldto.getPassword();
       
        System.out.println(username);
        System.out.println(password);
        if(username!=null && password!=null && !username.trim().equals("") && !password.trim().equals("") &&  username.equalsIgnoreCase("swayam") && password.equals("123"))
        {
            return true;
        }
        return false;
    }
    
}