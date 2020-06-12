<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="header.jsp" %>    


<!DOCTYPE html>
<html>

<body>

 <div class="container " style="margin-left:33%; margin-top: 10%"> 

         <div class="col-md-5 " >

         <div class="panel panel-default  ">
              <div class="panel-heading text-center" ><h3 style="font-weight:bold;">Change Password</h3></div>
                   <div class="panel-body">
                      
                      <div class="${bootstrapclass}">  ${errorMessage}</div>

           <form action="/reset" method="post">
                 <div class="form-group">
                      <label for="newpassword" style="color:black;" >New Password</label>
                         <input type="password" class="form-control" id="newpassword" name="password" required>
                                <span class="form-text small text-muted">
                                        The password must be 8-20 characters, and must <em>not</em> contain spaces.
                                 </span>
                   </div>

               <div class="form-group">
                     <label for="verifypassword" style="color:black;">Verify</label>
                     <input type="password" class="form-control" id="verifypassword" required>
                     <span class="form-text small text-muted">
                       To confirm, type the new password again.
                 </span>
               </div>
                <input type="hidden" name="reset_token" value="${resetToken}">

               <button type="submit" class="btn btn-success btn-lg pull-right">Save</button>
          </form>
       </div>
    </div>
  </div>
</div>



<%@include file="footer.jsp" %>    

</body>
</html>



<%-- ${errorMessage}
<form action="/reset" method="post">

<input type="hidden" name="reset_token" value="${resetToken}">
Enter new Password :  <input type="text" name="password">

<input type="submit">
</form>
 --%>