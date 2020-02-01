
  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 
  try
  {
  	  
  String u1=request.getParameter("name");
  String p1=request.getParameter("pwd");
  
  
  String str="select * from userreg where name='"+u1+"' and password='"+p1+"'";
  
  Class.forName("org.h2.Driver");
  Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/project2","sa","");
  Statement stm=con.createStatement();
  
  ResultSet rs=stm.executeQuery(str);
  
  rs.next();
  
  String name=rs.getString(1).trim();
  
  String pwd=rs.getString(2).trim();
  
  
  if(name.equals(u1)&& pwd.equals(p1))
  {
	  HttpSession sess=request.getSession();
	  sess.setAttribute("e1",u1);
	RequestDispatcher rd=request.getRequestDispatcher("employeeloginhome.jsp");
	rd.forward(request,response);
  }
 
 }
catch(Exception t)
{
	
	System.out.println(t);
	RequestDispatcher rd=request.getRequestDispatcher("employeelogin.jsp");
	rd.include(request,response);
	out.println("<h3 style='color:red'>LoginFail</h3>");
	
}
%>
</body>
</html>

