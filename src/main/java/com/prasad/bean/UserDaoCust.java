package com.prasad.bean;
import com.spym.bean.User1;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;

public class UserDaoCust {

	public static Connection getConnection()
	{
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
			System.out.println("connected");
		}
		catch(Exception e) {System.out.println(e);
		System.out.println("connection not created");}
		return con;
	}
	public static int save( UserCust u) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into user_login(name,gender,email,password,address,mbl) values (?,?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2,u.getGender());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getPassword());
			ps.setString(5, u.getAddress());
			ps.setString(6, u.getMbl());
			status=ps.executeUpdate();
		}
		catch(Exception e) { System.out.print(e);}
		return status;
	}
	public static boolean validate_cust(UserCust u)
	{
		boolean status=false;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from user_login where email=? and password=?");
			ps.setString(1,u.getEmail());
			ps.setString(2,u.getPassword());
			ResultSet rs=ps.executeQuery();  
			status=rs.next(); 
	            System.out.println("Success");
		}
		catch(Exception e){}  
		  
		return status;  
		
	}
	public static List<User1> getAllRecords(){  
	    List<User1> list=new ArrayList<User1>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from house");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            User1 u=new User1();  
	            u.setId(rs.getInt("id"));
	            u.setName(rs.getString("name"));
	            u.setPhonenumber(rs.getString("phonenumber"));
	            u.setLocation(rs.getString("location"));
	            u.setRent(rs.getInt("rent")); 
	            u.setHousedetails(rs.getString("housedetails"));
	            u.setBhk(rs.getInt("bhk"));    
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	public static User1 getRecordByLoc(String location){  
	    User1 u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from house where location=?");  
	        ps.setString(1,location);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User1();  
//	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setPhonenumber(rs.getString("phonenumber"));
	            u.setLocation(rs.getString("location"));
	            u.setRent(rs.getInt("rent"));  
	            u.setHousedetails(rs.getString("housedetails"));   
	            u.setBhk(rs.getInt("bhk"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
	public static User1 getRecordByName(String name){  
	    User1 u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from house where name=?");  
	        ps.setString(1,name);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User1();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setPhonenumber(rs.getString("phonenumber"));
	            u.setLocation(rs.getString("location"));
	            u.setRent(rs.getInt("rent"));  
	            u.setHousedetails(rs.getString("housedetails"));   
	            u.setBhk(rs.getInt("bhk"));  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	}
	
}
