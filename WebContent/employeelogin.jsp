<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ----------><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hr login page</title>
<SCRIPT>
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
        if(val == "username")
        {
          document.getElementById('usernametag').style.display = 'block';
        }
        else if(val == "pwd")
        {
          document.getElementById('pwdtag').style.display = 'block';
        }
      }
        function hideText(val) {
            if(val == "username")
            {
              document.getElementById('usernametag').style.display = 'none';
            }
            else if(val == "pwd")
            {
              document.getElementById('pwdtag').style.display = 'none';
            }
        }
            </SCRIPT>
            </head>
<jsp:include page="header.jsp"></jsp:include>
<body>
<div class="container">
  <form class="form-horizontal" action="userloginact.jsp">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Username</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="username" placeholder="Enter Username" name="name" onblur="changeColor(this)">
        <span name="blank" id="usernametag" style="display:none; color: red"> <strong>!</strong> This field is empty</span>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter Password" name="pwd" onblur="changeColor(this)">
        <span name="blank" id="pwdtag" style="display:none; color: red"> <strong>!</strong> This field is empty</span>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox" name="remember"> Remember me</label>
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-primary"/>
      </div>
    </div>
  </form>
</div>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>