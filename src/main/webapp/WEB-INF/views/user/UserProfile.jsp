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
 
 <input type="hidden" id="login_username" value="${loggedInUser.getUsername()}" >
 <input type="hidden" value="${loggedInUser.getProfilePicture()}" id="login_profile_pic"/>
     
  <!-- PROFILE HEADER -->
  <section>
    
    <!-- PROFILE HEADER CONTAINER --> 
    <div class="container-fluid profile-header lighten-4 " >
       
       <!-- PROFILE HEADER ROW -->
        <div class="row mt-2">
         
         <!-- PROFILE HEADER COLUMN -->
          <div class="col-9  text-center ">
             <h1 class="profile-text   p-3 text-capitalize"  > ${profile.getFirstname()}'s Profile </h1>
          </div>
        <!-- END OF THE PROFILE HEADER COLUMN  -->

      <!-- PROFILE HEADER COLUMN (total project) -->
       <div class="col-3 p-2">
          <div class="total-projects text-center card card-body text-uppercase shadow ">
             <h3 class="my-auto">Total Project : ${profile.getProjects().size()} </h3>
          </div>
       </div>
      <!-- END OF THE PROFILE HEADER (total project) -->

    </div>
   <!-- END OF THE PROFILE HADER ROW --> 
  
  </div> 
  <!-- END OF THE PROFILE HEADER CONTAINER -->

</section> 
<!-- END OF THE PROFILE HEADER -->



<!-- PROFILE PAGE -->

<c:set var="username" value="${profile.getUsername()}"/>

<section >


 <div class="container-fluid ">

   <!-- MAIN ROW OF PROFILE PAGE  -->
   <div class="row mt-5 pt-5 ">


  
      <!-- PROFILE COLUMN -->
      
       <div class="col-4 display-user ">

          <!-- PROFILE CARD -->
         
           <div class="card  shadow p-4 mb-4 bg-white rounded  " style="height:560px;"> 
                
              <img src="/Users/${profile.getProfilePicture() }" class="mx-auto d-block rounded-circle " 
               style="border-width: 6px" width="200" height="200"> 
                
                 <!-- PROFILE CARD BODY -->
                  <div class="card-body">
                     <h3 class="card-title mb-2 text-center">@${profile.getUsername() }</h3>

                         <!-- PROFILE CARD TEXT -->
                         <div class="card-text"> 
                             
                             <h5 class="text-center font-weight-bold"> ${profile.getBio() }</h5>
                                 <div class="row pt-2">
                                      <div class="col-4 font-weight-bold ">
                                          <p> Name </p>
                                          <p> Email </p>
                                          <p> Mobile </p>
                                          <p> Profession </p>
                                      </div>
                                       <div class="col">
                                         <p class="text-capitalize">${profile.getFirstname() } ${profile.getLastname()} </p>
                                         <p> ${profile.getEmail() }</p>
                                         <p>${profile.getMobileNo() }</p>
                                         <p class="text-capitalize"> ${profile.getProfession() }</p>
                                      </div>
                                  </div>

                               <!-- EDIT BUTTON ROW -->
                               <div class="row">
                                  
                                  <!-- EDIT BUTTON OF PROFILE  -->
                              <div class="col-12 text-center mt-1">
                                 
                                 <c:if test="${ username eq loggedInUser.getUsername()}" >
                                     
                                        <a role="botton" class="btn btn-dark  text-white" 
                                          href="/edit/${profile.getUsername()}">Edit Profile</a>
                                      
                                </c:if>
                                
                                    </div>
                                    <!-- END OF THE EDIT BUTTON OF PROFILE  -->

                              </div>
                              <!-- END OF THE EDIT BUTTON ROW -->
                        
                        </div>
                        <!-- END OF THE PROFILE CARD TEXT  -->
                             
                    </div>
                    <!-- END OF THE PROFILE CARD BODY -->
                            
                </div>
                <!-- END OF THE PROFILE CARD -->
            
         </div>
         <!-- END OF THE PROFILE COLUMN -->                 
    
    

         <c:set var="projects" value="${profile.getProjects()}" />
         <%@include file="Project.jsp" %>
   
  </div>    
<!-- END OF MAIN ROW OF PROFILE PAGE -->
 </div>
 <!-- END OF THE PROFILE CONTAINER -->

</section>
<!-- END OF THE PROFILE SECTION -->


<%@include file="Footer.jsp" %>
</body>
</html>