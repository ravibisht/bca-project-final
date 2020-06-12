<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="header.jsp" %>    
<!DOCTYPE html>
<html>
<head>


<script>
      
     
  
      
 </script>    
<meta charset="ISO-8859-1">
<title>Glance Your Skill | Feedback</title>
</head>
<body>
    
    
    <div class="col-12 text-center ">
          <h1 class="feedback-title ">FEEDBACK </h1>
          <hr class=" line-break mt-1" style="width: 226px;"/>
    </div>
    
    
    
    <%--  Show Status For Submitted Feedback Form --%>
    <c:if test="${status eq true }">
      <div class="alert alert-dismissible text-center mt-1 p-0" id="status" style="font-size:2.1rem;
           background-color:green;color:#fff;" >
        <button type="button" class="close" data-dismiss="alert">×
        </button>
        <strong>Success!</strong> Feedback Successfully Submitted :) .
     </div>
  </c:if>
  <%-- End Of The Show Status For Submitted Feedback Form --%>  
      
         <div class="container ">
          <div class="contact-form ">
            <div class="contact-image">
                <img src="images/rocket_contact.png" alt="rocket_contact"/>
            </div>
            <form  action="/feedback" method="post">
                <h3>Drop Us a Feedback</h3>
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="fullname" class="form-control" placeholder="Your Name *" required />
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="Your Email *" required/>
                        </div>
                        <div class="form-group">
                            <input type="text" name="mobileNo" class="form-control" placeholder="Your Phone Number *" minlength="10" maxlength="10" required />
                        </div>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btn btn-primary ml-2 mt-2" value="Send Message" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea name="message" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;" required></textarea>
                        </div>
                    </div>
                </div>
            </form>
      </div>
      </div>
     

 <%@include file="Footer.jsp" %>     
</body>
</html>