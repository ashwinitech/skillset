
  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js">
    </script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js">
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>register</title>
    <SCRIPT>
      function show()
      {
        var name = document.getElementById("name").value; 
        var password = document.getElementById("pwd").value;  
        var email= document.getElementById("email").value;
        var gender = document.getElementById("gender").value; 
        var dob=document.getElementById("dob").value;
        var phno=document.getElementById("phno").value;
        confirm("You have entered:" + "\n Name : " + fname + " " + lname + "\n Age : " + age + "\n Address : "+ address + "\n Gender : "+ gender + "\n\n Do you want to confirm these details ?");
      }
      function changeColor(val)
      { 
        if((val.value=="")||(val.value==null))
        {
          val.style.border = "1px solid red";
          displayText(val.id);
        }
        else
        {
          val.style.border = "1px solid black"
          hideText(val.id);
        }
      }
      function displayText(val)
      {
        if(val == "name")
        {
          document.getElementById('nametag').style.display = 'block';
        }
        else if(val == "pwd")
        {
          document.getElementById('pwdtag').style.display = 'block';
        }
        else if(val == "email")
        {
          document.getElementById('emailtag').style.display = "block";
        }
        else if(val == "dob")
        {
          document.getElementById('dobtag').style.display = "block";
        }
        else if(val == "phno")
        {
          document.getElementById('phnotag').style.display = "block";
        }
      }
      function hideText(val) {
        if(val == "name")
        {
          document.getElementById('nametag').style.display = 'none';
        }
        else if(val == "pwd")
        {
          document.getElementById('pwdtag').style.display = 'none';
        }
        else if(val == "email")
        {
          document.getElementById('emailtag').style.display = "none";
        }
        else if(val == "dob")
        {
          document.getElementById('dobtag').style.display = "none";
        }
        else if(val == "phno")
        {
          document.getElementById('phnotag').style.display = "none";
        }
      }
    </SCRIPT>
  </head>
  <body>
    <jsp:include page="header.jsp"></jsp:include>
      
        <h3>
          Fill the application form
        </h3>
        
        <%
           HttpSession sess=request.getSession(true);
          
           String h1=(String)sess.getAttribute("e1");
           
           String str="select name,password,email,phno from userreg where name='"+h1+"'";
           
           Class.forName("org.h2.Driver");
           Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/project2","sa","");
           Statement stm=con.createStatement();
           ResultSet rs=stm.executeQuery(str);
           rs.next();   
        %>
          <form class="form-horizontal" action="updateact.jsp">
          <div class="container">
            <div class="form-group">
              <label class="control-label col-sm-4" for="email">
                Enter your Name
              </label>
                <div class="col-sm-6">
                  <input type="text"  name="uname" value="<%=rs.getString(1)%>" class="form-control" id="name" placeholder="Enter the name" name="name" onblur="changeColor(this)">  
                  <span name="blank" id="nametag" style="display:none; color: red"> <strong>!</strong> This field is empty</span>
                </div>
              </div>
            <div class="form-group">
      <label class="control-label col-sm-4" for="pwd">Enter the Password</label>
      <div class="col-sm-6">          
        <input type="password" name="pass" value="<%=rs.getString(2)%>"class="form-control" id="pwd" placeholder="Enter the password" name="pwd" onblur="changeColor(this)">
        <span name="blank" id="pwdtag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="pwd">Enter the Email Address</label>
      <div class="col-sm-6">          
        <input type="text" name="email" value="<%=rs.getString(3)%>" class="form-control" id="email" placeholder="Enter the Email Address" name="email" onblur="changeColor(this)">
        <span name="blank" id="emailtag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4">Enter the Gender</label>
      <div class="col-sm-6">
    <label class="radio-inline">
      <input type="radio" name="optradio" checked>Male
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Female
    </label>          
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="dob">Enter the Date Of Birth</label>
      <div class="col-sm-6">               
        <input type="date" class="form-control" id="dob" placeholder="Enter the Date Of Birth" name="dob" onblur="changeColor(this)">
        <span name="blank" id="dobtag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
      </div>
    </div>
      <label class="control-label col-sm-4" for="pwd">Enter the phone number</label>
      <div class="col-sm-6">          
        <input type="text" name="phno" value="<%=rs.getString(4)%>" class="form-control" id="phno" placeholder="Enter the phone number" name="phno" onblur="changeColor(this)">
        <span name="blank" id="phnotag" style="display:none; color: red" > <strong>!</strong> This field is empty</span>
    </div>
    </div>
    <div class="form-group">    
    <div class="row">
    <br><br>
      <div class="col-sm-offset-5 col-sm-2">
     <!--  <INPUT id="button" type="button" class="btn btn-primary" value="View" onclick="show()"/> -->
      <INPUT id="button" type="submit" class="btn btn-primary" value="update" onclick="show()"/>
      </div>
    </div>
     
    </div>
   </form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

