<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="com.Carbooking.daoimpl.UserDetaildaoImpl" %>
    <%@ page import="java.util.*" %>
    <%@ page import="com.Carbooking.model.UserDetail" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
      margin: 0;
      font-family: Arial;

    }

    .topnav {
      overflow: hidden;
      background-color: #333;
    }

    .topnav a {
      float: left;
      display: block;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }

    .active {
      background-color: #04AA6D;
      color: white;
    }

    .topnav .icon {
      display: none;
    }

    .dropdown {
      float: left;
      overflow: hidden;
    }

    .dropdown .dropbtn {
      font-size: 17px;
      border: none;
      outline: none;
      color: white;
      padding: 14px 16px;
      background-color: inherit;
      font-family: inherit;
      margin: 0;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-content a {
      float: none;
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
      text-align: left;
    }

    .topnav a:hover,
    .dropdown:hover .dropbtn {
      background-color: #555;
      color: white;
    }

    .dropdown-content a:hover {
      background-color: #ddd;
      color: black;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }


    .topnav a.icon {
      float: right;
      display: block;
    }
 </style>
</head>
<body>
    <div class="topnav" id="myTopnav">
    <a href="#home" >Home</a>
    <a href="#news">News</a>
    <a href="Login.jsp" style=float:right>Logout</a>
    <a href="ViewUser.jsp" class="active">UserHistory</a>
    <div class="dropdown">
      <button class="dropbtn">Dropdown
        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <a href="Addcar.jsp">Add car</a>
        <a href="PriceDetail.jsp">PriceDetail </a>
       
      </div>
    </div>

   
  </div>
  <% UserDetaildaoImpl dao= new UserDetaildaoImpl();
	List<UserDetail> view=new ArrayList<UserDetail>();
	view=UserDetaildaoImpl.alluser();%>
          <h2 class="Userdetail">User Detail</h2>
          
        
        <div class="recently added list">
        <table border=1 >
            <tbody>
                <tr>
                <%int count=0;
                for(UserDetail userdetail: view){
                	%>
                    <td>
                        <table id="pets">
                            <tbody>
                                <tr>
                                     
                                    <td class="viewall">
                                        <span>Namee : <%=userdetail.getFirst_name()%> </span><br>
                                        <span>password : <%=userdetail.getCpassword()%>  </span><br>
                                        <span>Email : <%=userdetail.getEmail()%> </span><br>
                                      
                                        <span>phone number: <%=userdetail.getPhoneno()%></span><br>
                                            
                                       
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==5){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>
</body>
</html>