package model;

import db.DBConnector;
import dto.UpdateProfileDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author swayam
 */
public class UpdateProfileAuthenticator 
{
    public void isUpdate(UpdateProfileDTO updto)
    {
       String enrollment = updto.getEnrollment();
       String username =  updto.getUsername();
       String password = updto.getPassword();
       String firstname = updto.getFirstname();
       String lastname = updto.getLastname();
       String fathername = updto.getFathername();
       String mothername = updto.getMothername();
       String gender = updto.getGender();
       String dob = updto.getDob();
       String contact = updto.getContact();
       String email = updto.getEmail();
       String address = updto.getAddress();
       
        int i;
       try
       {
           Statement st = DBConnector.getStatement();
           String query = "UPDATE studentinfo SET username='"+username+"',password='"+password+"',first_name= '"+firstname+"',last_name= '"+lastname+"',father_name= '"+fathername+"',mother_name= '"+mothername+"', gender= '"+gender+"', date_of_birth='"+dob+"',contact='"+contact+"',email='"+email+"',address='"+address+"'  WHERE enrollment_number='"+enrollment+"' ";
           i = st.executeUpdate(query);
           System.out.println(query);
       }
       catch(SQLException e)
       {
           System.out.println(e);
       }
    }
}
