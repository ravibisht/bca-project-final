<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@include file="header.jsp"%> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <c:set var="category" value="${project.getProjectCategory()}"/>

    <!-- BACK TO  NAVIGATION CONTAINER -->
      <%@include file="Navigator.jsp" %>
    <!-- END OF THE BACK TO  NAVIGATION CONTAINER -->
   
    <%--  Show Status For Edit Project Form --%>
    <c:if test="${status eq true }">
      <div class="alert alert-dismissible text-center mt-3 p-0" id="status" style="font-size:2.1rem;
           background-color:green;color:#fff;" >
        <button type="button" class="close" data-dismiss="alert">×
        </button>
        <strong>Success!</strong> Project Successfully Updated :) .
     </div>
  </c:if>
  <%-- End Of The Show Status For Edit Project Form --%> 

   <!-- MAIN CONTAINER -->
     <div class="container">
           
         <!-- PROJECT EDIT CONTAINER -->
          <div class="project-edit-container shadow-lg bg-white">
               <div class="title mb-3 mt-3 pb-3" >
                  <h1 class="text-center text-uppercase"> Edit Project</h1>
               </div>
            
             <!-- PROJECT EDIT FORM -->
            <form action="/project/edit" method="post"  >
               
               <input type="hidden" name="id" value="${project.getId()}">
                <div class="form-row">
                   <label for="category" class="col-3">Project Category </label>
                   <input type="text" class="form-control col-9"  id="category" disabled  
                    value="${category.getName()}" required>
                    <input type="hidden" value="${category.getId()}" name="category_id">
                 </div>

                <br> 

                  <div class="form-group form-row">
                        <label for="name" class="col-3">Project Name </label>
                        <input type="text" class="form-control col-9" placeholder="Enter Project Name" name="projectName" 
                           value="${project.getProjectName() }" id="name" required>
                  </div>
  
                    <div class="form-group form-row">
                        <label for="short_desc" class="col-3">Short Description</label>
                        <input type="text" class="form-control col-9" placeholder="Enter Short Description" name="shortDesc" 
                            value="${project.getShortDesc()}"   id="short_desc" required>
                  </div>

                  <div class="form-group form-row">
                    <label for="external_link" class="col-3">Social Links</label>
                    <input type="url" class="form-control col-9" placeholder="Enter or Paste Social Media Link" name="externalLink"
                        value="${project.getExternalLink()}" id="external_link" >
                  </div>

                  <br>

                     <c:set var="description" value="${project.getDescription()}"/>
                    <c:set var="description" value="${ fn:replace(description,'<br>',' ')}" />
                    
                  <div class="form-group form-row">
                      <label for="description" class="text-center col-12">Description</label>
                      <textarea class="form-control" rows="12" name="description" 
                          id="description" required>${ fn:replace(description,"&nbsp"," ")}</textarea>
                  </div>

                  <div class="text-center mt-5">
                     <button type="submit" class="btn btn-primary button">Save</button>
                  </div>
              </form>
              <!-- END OF THE PROJECT EDIT FORM -->

           </div>
          <!-- END OF THE PROJECT EDIT CONTAINER -->

     </div>
     <!-- END OF THE MAIN CONTAINER -->
    
<%@include file="Footer.jsp"%>
</body>
</html>