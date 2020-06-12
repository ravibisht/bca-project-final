<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="header.jsp" %>  
  
<!DOCTYPE html>
<html>
<head>
 
<style>
 
 </style>

</head>
<body>
  
  <div class="signup-form mx-md-n5">
    
    <form action="/signup" method="post">
        <h2 class="text-center">Sign Up</h2>  

        <div class="form-group col-lg-6">
          <input type="text" class="form-control" placeholder="First name" required="required" name="firstname" value="${user.getFirstname()}" >
        </div>
        
        <div class="form-group col-lg-6">
            <input type="text" class="form-control" placeholder="Last name" required="required" name="lastname" value="${user.getLastname()}">
        </div>

        <div class="form-group col-lg-6">
            <input type="text" class="form-control" placeholder="Username" required="required" name="username" value="${user.getUsername()}">
             <span style="color:red">${Uerror}</span>
        </div>

        <div class="form-group col-lg-6">
            <input type="password" class="form-control" placeholder="Password" required="required" name="password" value="${user.getPassword()}">
        </div>

        <div class="form-group col-lg-12">
            <input type="email" class="form-control" placeholder="Email" required="required" name="email" value="${user.getEmail()}" > 
             <span style="color:red">${emailerror}</span>
        </div>

        <div class="form-group col-lg-12">
            <input type="text" class="form-control" placeholder="Mobile no" required="required" name="mobile_no" value="${user.getMobile_no()}">
        </div>
        
        <div class="form-group clearfix">
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </div>
             
    </form>
      <p class="text-center"><a  class="link_format" href="/login">Already have account?</a></p>
</div>

<%@include file="footer.jsp" %>    

</body>


</html>

