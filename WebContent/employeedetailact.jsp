<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

 

<div class="container">

<%

              String str="select * from userreg";

              Class.forName("org.h2.Driver");

              Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/project2","sa","");

              Statement stm=con.createStatement();

              ResultSet rs=stm.executeQuery(str);

             

              %>

<h2 style="color:buttonshadow; font-weight: bold;  text-align:center;">Employee Details</h2>

<table class="table table-condensed">

<br>

<tr>

<th>Name</th>

<th>Email</th>

<th>Gender</th>

<th>DOB</th>

<th>Phone Number</th>

</tr>

 

<tr>

<% while(rs.next())

{

%>

<td><%=rs.getString(1) %></td>

<td><%=rs.getString(3) %></td>

<td><%=rs.getString(4) %></td>

<td><%=rs.getString(5) %></td>

<td><%=rs.getString(6) %></td>

 

</tr>

<%} %>

</table>

</div>

<br>

<br>

<br>

<br>

<br>

<br>

<br>

<br>

<br>

 

<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>