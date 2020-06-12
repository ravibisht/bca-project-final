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

<h1> Welcome to GYS</h1>


${successMessage}
  <form action="/signup">
  
    Username : <input type="text" name="username">${Uerror}
    <br>
    Firstname :<input type="text" name="firstname"><br>
    Lastname : <input type="text" name="lastname"><br>
    Password :<input type="password" name="password"><br>
    Email :<input type="email" name="email"> <br>${emailerror}
    Mobile no :<input type="text" name="mobile_no"><br>
    Bio : <input type="text" name="bio"><br>
    <br>
    <input type="submit" value="SignUp">
  
  </form>
  
  
  <hr>
  
  
  
  <form action="/login">


Username:<br>

${loginerror}
<input type="text" name="username1" >

Password : <br>

<input type="password"  name="password2">

<input type="submit" value="Login">



</form>
  
  
  <a href="/forgot">forgot password</a>
</body>
</html>