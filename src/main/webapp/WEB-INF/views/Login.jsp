<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  
<div class="login-form mx-md-n5">
       
      <form action="/login" method="post">
            <h2 class="text-center">Log in</h2>       
            
            <div class="${bootstrapclass}">${loginerror}</div>
            

        <div class="form-group">
            <input type="text" class="form-control" placeholder="Username" required="required" name="username" value="${username}">
        </div>

        <div class="form-group">
          <input type="password" class="form-control" placeholder="Password" required="required" name="password" value="${password }">
        </div>
        
        <div class="form-group">
            <button type="submit" class="btn btn-default btn-block">Log in</button>
        </div>
        
        <div class="clearfix">
            <a href="/forgot" class="pull-right">Forgot Password?</a>
        </div>   

    </form>
    <p class="text-center"><a class="create_account" href="/signup">Create an Account</a></p>
</div>

<%@include file="footer.jsp" %>    

</body>
</html>