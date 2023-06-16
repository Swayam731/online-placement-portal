package controller;

import dto.AddStudentDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AddStudentAuthenticator;

/**
 *
 * @author swayam
 */
public class AddStudentChecker extends HttpServlet 
{
    
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("addstudent.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String enrollment= request.getParameter("enrollment");
        String branch = request.getParameter("branch"); 
        String fname= request.getParameter("fname");
        String lname = request.getParameter("lname");
        String fathername =request.getParameter("fathername");
        String mothername = request.getParameter("mothername");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String tenthpercent = request.getParameter("tenthpercent");
        String tenthyop = request.getParameter("tenthyop");
        String twelthpercent = request.getParameter("twelthpercent");
        String twelthyop = request.getParameter("twelthyop");
        String cgpa = request.getParameter("cgpa");
        String gradyop = request.getParameter("gradyop");
        String back = request.getParameter("back");  
        
        AddStudentDTO a1 = new  AddStudentDTO();
        
        a1.setEnrollment(enrollment);
        a1.setBranch(branch);
        a1.setFname(fname);
        a1.setLname(lname);
        a1.setFathername(fathername);
        a1.setMothername(mothername);
        a1.setGender(gender);
        a1.setDob(dob);
        a1.setContact(contact);
        a1.setEmail(email);
        a1.setAddress(address);
        a1.setTenthpercent(tenthpercent);
        a1.setTenthyop(tenthyop);
        a1.setTwelthpercent(twelthpercent);
        a1.setTwelthyop(twelthyop);
        a1.setCgpa(cgpa);
        a1.setGradyop(gradyop);
        a1.setBack(back);
       
        AddStudentAuthenticator asa = new AddStudentAuthenticator();
       boolean add = asa.isAdd(a1);
       if(add)
       {
           response.sendRedirect("addstudent.jsp");
       }
       else
       {
            response.sendRedirect("addstudnet.jsp");
       }
    }

}
