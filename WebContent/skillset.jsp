<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp"></jsp:include>
<body>


  <form class="form-horizontal" action="skillsetlogin.jsp" method="get">
<div class="container">

  
    <div class="form-group">
    <div class="row">
    <h3>Name Of The Person Applied For Skill Set Approval</h3>
    <div class="col-sm-6">
    <select class="form-control" name="name1">
    <%
try
{
String str="select * from skillsetreg";
Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/project2","sa","");
Statement stm=con.createStatement();
ResultSet rs=stm.executeQuery(str);

%>
    <%while(rs.next())
    {
    	
    	%>
    
    <option><%=rs.getString(1)%></option>
    
    
      <%} %>
    </select>
    </div>
    <div class="col-sm-2">
    <input type="submit" class="btn btn-primary"/>      
    </div>
    </div>
    </div>
 <%}
catch(Exception r)
{
	System.out.println(r);
}
%>   
  </div>
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>