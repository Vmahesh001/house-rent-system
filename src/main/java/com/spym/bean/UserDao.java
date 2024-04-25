package com.spym.bean;
import java.sql.*;
import java.util.List;
import java.util.ArrayList;
import com.spym.bean.User;
import com.spym.bean.User1;
import com.spym.bean.UserAdmin;
public class UserDao{
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
	public static int save( User u) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into owners(name,phonenumber,gender,email,password,address) values (?,?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2,u.getPhonenumber());
			ps.setString(3, u.getGender());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getPassword());
			ps.setString(6, u.getAddress());
			status=ps.executeUpdate();
		}
		catch(Exception e) { System.out.print(e);}
		return status;
	}// the function save will save the owner details.
public static boolean validate(User u)
{
	boolean status=false;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from owners where email=? and password=?");
		ps.setString(1,u.getEmail());
		ps.setString(2,u.getPassword());
		ResultSet rs=ps.executeQuery();  
		status=rs.next(); 
            System.out.println("Success");
	}
	catch(Exception e){}  
	  
	return status;  
	
}// this function will validate the owner details by using email and password of owners it implements the login. 
public static int save1( User1 u) {
	int status=0;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into house(name,phonenumber,location,rent,housedetails,bhk) values (?,?,?,?,?,?)");
		ps.setString(1, u.getName());
		ps.setString(2,u.getPhonenumber());
		ps.setString(3, u.getLocation());
		ps.setInt(4, u.getRent());
		ps.setString(5, u.getHousedetails());
		ps.setInt(6, u.getBhk());
		status=ps.executeUpdate();
	}
	catch(Exception e) { System.out.print(e);}
	return status;
}
public static boolean validate_admin(UserAdmin p)
{
	boolean status=false;
	try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from admin where email=? and password=?");
		ps.setString(1,p.getEmail());
		ps.setString(2,p.getPassword());
		ResultSet rs=ps.executeQuery();  
		status=rs.next(); 
            System.out.println("Success");
	}
	catch(Exception e){}  
	  
	return status;  
	
}

public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from owners");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();
            u.setId(rs.getInt("id"));
            u.setName(rs.getString("name"));  
            u.setPhonenumber(rs.getString("phonenumber")); 
            u.setGender(rs.getString("gender"));
            u.setEmail(rs.getString("email"));
            u.setPassword(rs.getString("password"));  
            u.setAddress(rs.getString("address"));  
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;
}
    public static int delete(User u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from owners where id=?");  
            ps.setInt(1,u.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
      
        return status;  
    }  
    public static User getRecordById(int id){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from owners where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setPhonenumber(rs.getString("phonenumber"));  
	            u.setGender(rs.getString("gender"));  
	            u.setEmail(rs.getString("email"));
	            u.setPassword(rs.getString("password"));
	            u.setAddress(rs.getString("address"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
}
    public static User getRecordByPassword(int pwd){  
	    User u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from owners where password=?");  
	        ps.setInt(1,pwd);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new User();  
	            u.setId(rs.getInt("id"));  
	            u.setName(rs.getString("name"));  
	            u.setPhonenumber(rs.getString("phonenumber"));  
	            u.setGender(rs.getString("gender"));  
	            u.setEmail(rs.getString("email"));
	            u.setPassword(rs.getString("password"));
	            u.setAddress(rs.getString("address"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
}
}  
