package model;

import db.DBConnector;
import dto.ApplyJobDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author swayam
 */
public class ApplyJobAuthenticator 
{
    public boolean isApply(ApplyJobDTO ajdto)
    {
        String name = ajdto.getName();
        String enrollment = ajdto.getEnrollment();
        String email = ajdto.getEmail();
        String contact = ajdto.getContact();
        String skills = ajdto.getSkills();
        String tenthper = ajdto.getTenth();
        String twelthper = ajdto.getTwelth();
        String back = ajdto.getBack();
        
        try
        {
            Statement st = DBConnector.getStatement();
            String query ="insert into candidate values('"+name+"', '"+enrollment+"', '"+email+"', '"+contact+"' ,'"+skills+"', '"+tenthper+"', '"+twelthper+"', '"+back+"')";
            int i = st.executeUpdate(query);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        if (!name.equals("") && !enrollment.equals("") && !skills.equals("") && !skills.equals("") && !email.equals("") &&  !tenthper.equals("")  && !twelthper.equals("")  && !back.equals(""))
        {
            return true;
        }
        return false;
    }
    
}
