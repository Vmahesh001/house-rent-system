package com.spym.bean;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "save_house", urlPatterns = {"/saverecords"})
@MultipartConfig

public class save_house extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            String Name=request.getParameter("name");
            String Phone=request.getParameter("phonenumber");
            String Location=request.getParameter("location");
            String Rent=request.getParameter("rent");
            int Rent1=Integer.parseInt(Rent);
            String Housedetails=request.getParameter("housedetails");
            String Bhk=request.getParameter("bhk");
            int Bhk1=Integer.parseInt(Bhk);
            Part Image =  request.getPart("image");
            
           
            // Connect to Oracle
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
            con.setAutoCommit(false);

            PreparedStatement ps = con.prepareStatement("insert into house(name,phonenumber,location,rent,housedetails,bhk,image) values (?,?,?,?,?,?,?)");
            ps.setString(1, Name);
    		ps.setString(2,Phone);
    		ps.setString(3, Location);
    		ps.setInt(4, Rent1);
    		ps.setString(5, Housedetails);
    		ps.setInt(6,Bhk1);
            
            
            
            // size must be converted to int otherwise it results in error
            ps.setBinaryStream(7, Image.getInputStream(), (int) Image.getSize());
            int status=ps.executeUpdate();
            con.commit();
            con.close();
            //out.println("Added Player Successfully. <p> <a href='listplayers'>List Players </a>");
            if(status>0) {
            	//out.println("Records added successfully \n  ");
            	response.sendRedirect("ownerhome.html");
            }
            else {
            	out.println("error");
            }
        } 
        catch(Exception ex) {
            System.out.println(ex.getMessage());
        }
        finally {            
            out.close();
        }
    }
}