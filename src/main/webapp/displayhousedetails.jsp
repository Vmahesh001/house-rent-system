<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment Details</title>
    <style>
        .container{
            
        }
        .doctor-details {
            padding:0 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color:#9bc7fc;
            width: 250px;
            text-align-last: center;
            box-shadow: #9be4fc;
            margin-top:20px;  
            margin-bottom:50px; 
        }
        .patient-details {
            padding:0 10px  20px 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #a8e0f3;
            max-width: 96%;
            margin-left:4%;
            margin-right:4%;
            margin-top: 20px;
            
        }
        .patient-details table {
            
            margin-left: 250px;
            padding:10px;
            
            
        }
        .patient-details table tr {
            
           margin-bottom: 20px;
            
        }
        .doctor-details .det{
            margin-bottom: 5px;
        }
        .photo {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            overflow: hidden;
            margin-bottom: 10px;
            margin-left: 33%;
            
        }
        .photo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            
            
        }
        .box .photo {
            width: 200px;
            height: 250px;
            border-radius: 20%;
            overflow: hidden;
            margin-bottom: 10px;
            margin-left: 10%;
            
        }
        #btn button{
            font-weight: bold;
            font-size: 17px;
            width: 10%;
            padding: 5px;
            margin-top: 10px;
            
        }
        
        
    </style>
</head>
<body>
<!-- appointment deatils of patient are displayed -->
<%@page import="com.house.bean.UserHouseDao"%>  
<jsp:useBean id="u" class="com.house.bean.UserHouse"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>   
 
<%  
boolean status=UserHouseDao.getRecordById(u);  

%> 

<!-- doctors records are  diplayed -->
<%@page import="com.spym.bean.UserDao,com.spym.bean.User"%>  
  
<%  

User u1=UserDao.getRecordById(u.getOwner_Id());  
%> 

    <div class="container">
		<div class="patient-details">
			 <!--doctor details-->
			 
			 
			 <div class="doctor-details" style="float: right;">
                <h2>Owner Details</h2>
                <div class="det">
                    <strong>ID: <%=u1.getId() %></strong> 
                </div>
                <div class="det">
                    <h3><%=u1.getName() %></h3> 
                </div>
                <div class="det">
                    <p><%=u1.getPhonenumber() %></p> 
                </div>
                <div class="det">
                    <p><%=u1.getGender() %></p> 
                </div>
                <div class="det">
                    <p><%=u1.getAddress() %></p> 
                </div>
            </div>

            
			 
			 
            <!--end doctor detials-->
            <h2 align="center">House Details</h2>

            

            <div class="box" style="float: left;">
            <h2 align="center">Photo</h2>
                <div class="photo" >
                    <img src="displayphoto?house_id=<%= u.getHouse_Id() %>" >
                </div>
            </div>


            <table border="0" cellspacing="18">
            <tr>
            	<td>
            	<strong>Full Name</strong> 
                </td>
                <td>:&nbsp;<%=u.getName()%></td>
            </tr>
            <tr>
            	<td>
            	<strong>phone number</strong> 
                </td>
                <td>: <%=u.getPhonenumber() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>location</strong> 
                </td>
                <td>: <%=u.getLocation() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>Rent</strong> 
                </td>
                <td>: <%=u.getRent() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>House details</strong> 
                </td>
                <td>: <%=u.getHousedetails() %></td>
            </tr>
            <tr>
            	<td>
            	<strong>bhk</strong> 
                </td>
                <td>: <%=u.getBhk() %></td>
            </tr>
            </table>

            
 

        </div>
        
    
        
        </div>
       <div id="btn" align="center">
        <button onclick="display()">Print</button>
       </div> 
        <script>
		
   function display(){
	   window.print();
   }
    </script>

        
</body>
</html>