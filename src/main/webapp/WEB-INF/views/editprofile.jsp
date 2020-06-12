<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<pre>

<form action="/profile/edit/user" method="post">


<input type="hidden" name="id" value="${edituser.getId() }" >
<input type="hidden" name="username" value="${edituser.getUsername() }" >


Profile picture :<input type="text" value="${edituser.getProfile_picture() }" name="profile_picture">

First name :<input type="text" value="${edituser.getFirstname()}" name="firstname">
Last name :<input type="text" value="${edituser.getLastname()}" name="lastname">
Bio : <input type="text" value="${edituser.getBio() }" name="bio">

Mobile no : <input type="text" value="${edituser.getMobile_no()}" name="mobile_no">

 <br>
 <br>
 
<input type="submit" value="send">

</form>
</pre>

</body>
</html>