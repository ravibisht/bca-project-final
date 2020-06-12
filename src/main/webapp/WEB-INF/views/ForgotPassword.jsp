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

  
 <div class="form-gap"  style="padding-top: 70px;color:black">

  <div class="container">
	<div class="row">
		
    <div class="col-md-4 col-md-offset-4">
            
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Forgot Password?</h2>
                  <p>You can reset your password here.</p>
                  <p class="${bootstrapclass}">${successMessage}</p>
                  <div class="panel-body">
    
                    <form  role="form"  action="/forgot" method="post">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                          <input type="email" id="email" name="email" placeholder="email address" class="form-control" required  >
                        </div>
                      </div>

                      <div class="form-group" >

                        <input name="recover-submit" class="btn btn-lg btn-primary " value="Reset Password" type="submit"  >
                      </div>
                      
                        
                             
                       
                  </form>
    
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
</div>
  
  <%@include file="footer.jsp" %>    
  
  </body>
</html>