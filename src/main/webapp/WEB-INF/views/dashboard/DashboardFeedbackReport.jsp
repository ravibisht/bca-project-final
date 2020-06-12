<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="/css/bootstrap/css/bootstrap.min.css"/>
<html lang="en">
<head>
  <title>GYS Report</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
</head>
<body>


<div class="container-fluid">
  <h1 class="text-center mt-2 pb-3">Feedback  Report</h1>
      <br>
    
  
  <table class="table table-bordered">
    <thead>
      <tr class="text-center">
        <th>User id</th>
        <th>Full Name</th>
        <th>Email</th>
        <th>Mobile no </th>
        <th>Message</th>
        <th>Contact date</th>
        
    </thead>
    
    <tbody>
    
    <c:forEach var="feedback" items="${feedbackReport}">
      <tr>
        <td>
        
         <c:if test="${feedback.getUserId() eq 0}">
          not available
         </c:if>
          <c:if test="${feedback.getUserId() ne 0}">
            ${feedback.getUserId() }
         </c:if>
         </td>
        <td>${feedback.getFullname() }</td>
        <td>${feedback.getEmail() }</td>
        <td>${feedback.getMobileNo()}</td>
        <td>${feedback.getMessage() }</td>
        <td><fmt:formatDate pattern="dd-MM-yyyy" value="${feedback.getContactDate()}" /></td>
        </tr>
     </c:forEach> 
    </tbody>
  </table>
  <center>
   <center> <h2 class="mt-5" style="font-size:40px; font-weight:800;"> ${errorMessage} </h2></center>
  
  <button  class="btn btn-primary px-5 m-4" onclick="javascipt:window.print()" >Print</button>
     </center>
</div>

</body>
</html>
