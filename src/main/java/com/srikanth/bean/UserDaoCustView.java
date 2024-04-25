package com.srikanth.bean;
import java.sql.Connection;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.prasad.bean.UserCust;
import com.spym.bean.User;
import com.srikanth.bean.UserSrinkanth;

public class UserDaoCustView {
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
	public static int save( UserSrinkanth u) {
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
	

public static List<UserSrinkanth> getAllRecords(){  
    List<UserSrinkanth> list=new ArrayList<UserSrinkanth>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from user_login");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            UserSrinkanth u=new UserSrinkanth();
            u.setId(rs.getInt("id"));
            u.setName(rs.getString("name"));  
            u.setGender(rs.getString("gender"));
            u.setEmail(rs.getString("email"));
            u.setPassword(rs.getString("password"));  
            u.setAddress(rs.getString("address"));
            u.setMbl(rs.getString("mbl"));
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;
}
public static int delete(UserSrinkanth u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from user_login where id=?");  
        ps.setInt(1,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
  
    return status;  
}  

}
