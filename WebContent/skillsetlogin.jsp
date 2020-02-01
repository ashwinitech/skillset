
  
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

<%
String u1 = request.getParameter("name1");
HttpSession sess=request.getSession();
sess.setAttribute("uname", u1);
String str="select * from skillsetreg where name='"+u1+"'";
Class.forName("org.h2.Driver");
Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/project2","sa","");
Statement stm=con.createStatement();
ResultSet rs=stm.executeQuery(str);
rs.next();
%>
<!------ Include the above in your HEAD tag ---------->
<form action="updatehrskil.jsp">
<div class="container">

  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>NAME</th>
        <th>EMPLOYEE ID</th>
        <th>NO.OF BATCHES</th>
        <th>NO.OF STUDENTS</th>
        <th>CURRENT POSTING</th>
        <th>POSTING APPLY</th>
        <th>COURSES HANDLED</th>
        <th>COMMENTS</th>
        <th>STATUS</th>
      </tr>
      <tr>
		<td><%= rs.getString(1) %></td>
		<td><%= rs.getString(2) %></td>
		<td><%= rs.getString(3) %></td>
		<td><%= rs.getString(4) %></td>
		<td><%= rs.getString(5) %></td>
		<td><%= rs.getString(6) %></td>
		<td><%= rs.getString(7) %></td>
		<td><%= rs.getString(8) %></td>
		
		<td>
		<div class="form-group">
		<select class="form-control" name="status">
		<option>Waiting</option>
		<option>Not Approved</option>
		<option>Approved</option>
		</select>
		</div>
    </tr>
           </thead>
    <tbody id="myTable">
    </tbody>
  </table>
 
  
</div>
<div class="form-group">        
      <div class="col">
      <input type="submit"  class="btn btn-primary" style="margin-left:1100px" value="Update"/>
      </div>
    </div>
    </form>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
