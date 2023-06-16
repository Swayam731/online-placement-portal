package model;

import db.DBConnector;
import dto.AddJobDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author swayam
 */
public class AddJobAuthenticator 
{
    public boolean isAdd(AddJobDTO ajdto)
    {
        String jobtitle = ajdto.getJobTitle();
        String selectcompany = ajdto.getSelectcompany();
        String jobtype = ajdto.getJobtype();
        String skillsrequired = ajdto.getSkillsrequired();
        String city = ajdto.getCity();
        String jobdescription = ajdto.getJobdescription();
        
        try
        {
            Statement st = DBConnector.getStatement();
            String query ="insert into jobDetails values('"+jobtitle+"', '"+selectcompany+"', '"+jobtype+"', '"+skillsrequired+"', '"+city+"', '"+jobdescription+"')";
            int i = st.executeUpdate(query);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if (!jobtitle.equals("") && !selectcompany.equals("") && !jobtype.equals("") && !skillsrequired.equals("") && !city.equals("") && !jobdescription.equals(""))
        {
            return true;
        }
        return false;
    }
}
