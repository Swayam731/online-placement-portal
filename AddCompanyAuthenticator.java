package model;

import db.DBConnector;
import dto.AddCompanyDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author swayam
 */
public class AddCompanyAuthenticator 
{
    public boolean isAdd(AddCompanyDTO a1)
    {
        String name = a1.getName();
        String email = a1.getEmail();
        String contact = a1.getContact();
        String website = a1.getWebsite();
        String city = a1.getCity();
        String state = a1.getState();
        String country= a1.getCountry();
        String address = a1.getAddress();
        String description = a1.getDescription();
        
        try
        {
            Statement st = DBConnector.getStatement();
            String query ="insert into companyDetails values('"+name+"', '"+email+"', '"+contact+"', '"+website+"', '"+city+"', '"+state+"', '"+country+"', '"+address+"', '"+description+"')";
            int i = st.executeUpdate(query);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        if (!name.equals("") && !email.equals("") && !contact.equals("") && !website.equals("") && !city.equals("") && !state.equals("") && !country.equals("") && !address.equals("") && !description.equals(""))
        {
            return true;
        }
        return false;
    }
}
