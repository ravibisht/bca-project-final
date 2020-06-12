<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="header.jsp" %>     
<!DOCTYPE html>
<html>



<body>


<section>

<div class="container card mt-1 shadow" style="border-radius: 10px;" >
	 <div class="category mt-2">
		 <div class="category-img shadow">
		    <img src="/ProjectAssets/Category/${category.getImage()}">
		   </div>
		  
		  <div class="text-center  category-title"  id="title">
		  	   <h1 >${category.getName()}</h1>
			   <span  class="text-muted" id="description" > <em>${category.getDescription()} </em></span>
		 </div>
    </div>
 </div> 
</section>


<!-- DISPLAYING SHORT PROJECT INFORMATION ASSOCIATED WITH THE PARTICULAR PROJECT CATEGORY -->
   <c:set var="ShortProjectInfoTitle" value="${category.getName()}'s Projects"/>
   <c:set var="projects" value="${category.getProjects()}" />
   <%@include file="ShortProjectInfo.jsp" %>
<!-- END OF THE  DISPLAYING SHORT PROJECT INFORMATION ASSOCIATED WITH THE PARTICULAR PROJECT CATEGORY -->


<%@include file="Footer.jsp" %>
</body>
</html>