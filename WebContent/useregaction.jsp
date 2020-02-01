
  
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
String username=request.getParameter("name");
String password=request.getParameter("pwd");
String emailid=request.getParameter("email");
String gen=request.getParameter("gender");
String dob=request.getParameter("dob");
String phone=request.getParameter("phno");
String str="insert into userreg values('"+username+"','"+password+"','"+emailid+"','"+gen+"','"+dob+"','"+phone+"')";
Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/project2","sa","");
Statement stm=con.createStatement();
stm.executeUpdate(str);
RequestDispatcher rd=request.getRequestDispatcher("employeelogin.jsp");
rd.forward(request,response);
}
catch(Exception r)
{
	System.out.println(r);
}
%>
</body>
</html>
