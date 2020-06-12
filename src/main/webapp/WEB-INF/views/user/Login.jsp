<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include  file="header.jsp" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%--  Show Status For Submitted Feedback Form --%>
    <c:if test="${status eq true }">
      <div class="alert alert-dismissible text-center mt-1 p-0" id="status" style="font-size:2.1rem;
           background-color:green;color:#fff;" >
        <button type="button" class="close" data-dismiss="alert">×
        </button>
        <strong>Success!</strong> ${statusMessage} .
        
     </div>
  </c:if>
<%-- End Of The Show Status For Submitted Feedback Form --%> 




	<!-- LOGIN FORM CONTAINER -->
	<div class="login-form-container shadow-lg">

		<div class="title-h1 text-center text-uppercase">
			<h1>Log in</h1>
		</div>
		
		<div class="${bootstrapclass} ">${loginerror}</div>
		<!-- LOGIN FORM  -->
		<form action="/login" method="post">
			<div class="form-row">
				<div class="form-group col">
					<i class="fa fa-user fa-2x" aria-hidden="true"></i> <input
						type="text" class="form-control" placeholder="Username"
						id="username" name="username" value="${username}" required>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col">
					<span> <i class="fa fa-lock fa-2x" aria-hidden="true"></i>
					</span> <input type="password" class="form-control" placeholder="Password"
						id="password" name="password"  value="${password}" required>
				</div>
			</div>

			<button type="submit" class="btn btn-primary button">Submit</button>
		</form>
		<!-- END OF THE LOGIN FORM -->
		
		<br>

		<div class="forgot-password">
			<a href="/forgot" class="float-right">Forgot Password?</a>
		</div>
		<p class="create-info">
			<a style="color: black" href="/signup">Create an Account</a>
		</p>
	</div>
	<!-- END OF THE LOGIN FORM CONTAINER -->


<%@include file="Footer.jsp" %>
</body>
</html>