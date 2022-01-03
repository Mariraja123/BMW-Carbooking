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
</head>
<body>
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