<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="header.jsp" %>    

<!DOCTYPE html>
<html>
<body>

  <!-- HERO SECTION -->
  <div class="container-fluid " style="background-color: black;">
      <div class="row hero-banner ">
      	  <div class="col-6">
           	  <h1 class="text-uppercase text-white text-center heading">
              	   Show Your Skills To The 
              	<span class="bg-success world" >World</span>
              </h1>
            <c:if test="${empty username  }">
               <a href="/signup" role="button" class="btn sign-up-button btn-outline-primary  "> 
                 SIGN UP</a>
             </c:if>
              
          </div>

	     <div class="col-6">
	      	<div class="hero-img ">
	      		<img src="images/hero-img.svg">
	      	</div>
        </div>	
      </div>
    </div>
   <!-- END OF THE HERO SECTION --> 

   
 <!-- CATEGORY SECTION -->
   <section class="container-fluid short-category-info  mt-5" style="overflow-x:scroll;" >
  
   <div class="text-center  pt-3 mb-2" > 
      <h1 >OUR PROJECT CATEGORIES</h1>
   </div>
   
   <hr class="w-50 mb-5">
   
    <div class="view-by-category">
            <c:forEach var="category" items="${categories}">
                <div class="card mb-3 mr-3 p-category">
                    <%-- <a href="/project/category/show/${category.getId()}"> --%>
                     
                     <img alt="" src="/ProjectAssets/Category/${category.getImage()}" height="150px" style="border-radius:6px;" >                     
                      <!-- </a> -->
                      <div class="c-heading text-center" style="display:inline;">
                       <a href="/project/category/show/${category.getId()}">
                         ${category.getName()}
                       </a>
                      </div>
                  </div>
               </c:forEach>
        </div>
   </section>
  <!-- END OF THE  CATEGORY SECTION -->



  <!-- DISPLAYING SHORT PROJECT INFORMATION -->
    <c:set var="ShortProjectInfoTitle" value="Our Latest  Projects"/>
    <c:set var="projects" value="${projects}" />
   <%@include file="ShortProjectInfo.jsp" %>
  <!-- END OF THE  DISPLAYING SHORT PROJECT INFORMATION -->
 

<%@include file="Footer.jsp" %>

</body>
</html>