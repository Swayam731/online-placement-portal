package model;

import db.DBConnector;
import dto.AddStudentDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author swayam
 */
public class AddStudentAuthenticator
{
    public boolean isAdd(AddStudentDTO a1)
    {
        String enrollment = a1.getEnrollment();
        String branch =  a1.getBranch();
        String fname = a1.getFname();
        String lname = a1.getLname();
        String fathername = a1.getFathername();
        String mothername = a1.getMothername();
        String gender = a1.getGender();
        String dob = a1.getDob();
        String contact = a1.getContact();
        String email = a1.getEmail();
        String address = a1.getAddress();
        String tenthpercent = a1.getTenthpercent();
        String tenthyop = a1.getTenthyop();
        String twelthpercent = a1.getTwelthpercent();
        String twelthyop = a1.getTwelthyop();
        String cgpa = a1.getCgpa();
        String gradyop = a1.getGradyop();
        String back = a1.getBack(); 
        
        System.out.println(enrollment);
        System.out.println(dob);
        try
        {
            Statement st = DBConnector.getStatement();
            String query ="insert into studentinfo values('"+enrollment+"', '"+branch+"', '"+fname+"', '"+lname+"', '"+fathername+"', '"+mothername+"', '"+gender+"', '"+dob+"', '"+contact+"', '"+email+"', '"+address+"', '"+tenthpercent+"', '"+tenthyop+"', '"+twelthpercent+"', '"+twelthyop+"', '"+cgpa+"', '"+gradyop+"', '"+back+"')";
            int i = st.executeUpdate(query);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        if (!enrollment.equals("") && !branch.equals("") && !fname.equals("") && !lname.equals("") && !fathername.equals("") && !mothername.equals("") && !gender.equals("") && !dob.equals("") && !contact.equals("") && !email.equals("") && !address.equals("") && !tenthpercent.equals("") && !tenthyop.equals("") && !twelthpercent.equals("") && !twelthyop.equals("") && !cgpa.equals("") && !gradyop.equals("") && !back.equals(""))
        {
            return true;
        }
        return false;
    }
}
