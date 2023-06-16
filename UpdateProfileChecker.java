package controller;

import dto.UpdateProfileDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UpdateProfileAuthenticator;

/**
 *
 * @author swayam
 */
public class UpdateProfileChecker extends HttpServlet 
{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("updateprofile.jsp");
    }
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String enrollment = request.getParameter("enrollment");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String fathername = request.getParameter("fathername");
        String mothername = request.getParameter("mothername");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String contact = request.getParameter("contact");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        
        UpdateProfileDTO updto = new UpdateProfileDTO();
        
        updto.setEnrollment(enrollment);
        updto.setUsername(username);
        updto.setPassword(password);
        updto.setFirstname(firstname);
        updto.setLastname(lastname);
        updto.setFathername(fathername);
        updto.setMothername(mothername);
        updto.setGender(gender);
        updto.setDob(dob);
        updto.setContact(contact);
        updto.setEmail(email);
        updto.setAddress(address);
        
        UpdateProfileAuthenticator upa = new UpdateProfileAuthenticator();
        
       upa.isUpdate(updto);
       response.sendRedirect("updateprofile.jsp");
        
        
    }

}
