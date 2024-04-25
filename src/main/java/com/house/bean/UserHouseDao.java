package com.house.bean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.house.bean.UserHouse;
import com.spym.bean.User;

public class UserHouseDao {
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
	public static List<UserHouse> getAllRecords(){  
	    List<UserHouse> list=new ArrayList<UserHouse>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from house;");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            UserHouse u=new UserHouse();
	            u.setHouse_Id(rs.getInt("house_id"));
	            u.setName(rs.getString("name"));  
	            u.setPhonenumber(rs.getString("phonenumber")); 
	            u.setRent(rs.getInt("rent"));
	            u.setLocation(rs.getString("location"));
	            u.setHousedetails(rs.getString("housedetails"));  
	            u.setBhk(rs.getInt("bhk"));  
	            list.add(u);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;
	}
	    public static int delete(UserHouse u){  
	        int status=0;  
	        try{  
	            Connection con=getConnection();  
	            PreparedStatement ps=con.prepareStatement("delete from house where house_id=?");  
	            ps.setInt(1,u.getHouse_Id());  
	            status=ps.executeUpdate();  
	        }catch(Exception e){System.out.println(e);}  
	      
	        return status;  
	    }  
	    public static boolean getRecordById(UserHouse u) {
			boolean status=false;
			
			//////////
			try{  
				Connection con=getConnection(); 
				              
				PreparedStatement ps=con.prepareStatement(
			"select * from house where house_id=?");  
				 
				ps.setInt(1,u.getHouse_Id());
				
				ResultSet rs=ps.executeQuery();  
				status=rs.next(); 
			}
			catch(Exception e){}  
			  
			return status;  
			  
		}
	    public static List<UserHouse> getAllRecords1(){  
		    List<UserHouse> list=new ArrayList<UserHouse>();   
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from house");  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            UserHouse u=new UserHouse();  
		            u.setHouse_Id(rs.getInt("house_id"));
		            u.setName(rs.getString("name"));  
		            u.setPhonenumber(rs.getString("phonenumber")); 
		            u.setRent(rs.getInt("rent"));
		            u.setLocation(rs.getString("location"));
		            u.setHousedetails(rs.getString("housedetails"));  
		            u.setBhk(rs.getInt("bhk"));  
		            list.add(u); 
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return list;  
		}
	    public static int delete1(UserHouse u){  
	        int status=0;  
	        try{  
	            Connection con=getConnection();  
	            PreparedStatement ps=con.prepareStatement("delete from house where house_id=?");  
	            ps.setInt(1,u.getHouse_Id());  
	            status=ps.executeUpdate();  
	        }catch(Exception e){System.out.println(e);}  
	      
	        return status;  
	    }
}
