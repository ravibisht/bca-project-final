<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@include file="header.jsp" %>    

<!DOCTYPE html>
<html>



<style>

.project-title{
    font-size: 35px;
    font-weight: 800;
    font-family: roboto;
 }

</style>
<body>

    
 <c:set var="user" value="${project.getUser()}"/>
       
<section>
  <div class="container-fluid grey lighten-4">
  
  <!-- MAIN CONTINER -->
   <div class="container-fluid">
   
  
    <!-- MAIN ROW -->       
      <div class="row  pt-3">
       <!-- MAIN  PROJECT COLUMN -->
          <div class="col-8  mt-1 mx-4">
            
            <!-- PROJECT SECTION --> 
              <section class="pb-5  text-lg-left">

                <!-- PROJECT ROW -->     
                <div class="row mb-4">

                  <!-- PROJECT COLUMN -->
                  <div class="col-12">

                    <!-- PROJECT CARD -->
                    <div class="card shadow project">

                      <div class="card-header text-center">
                         <h1 class="project-title">${project.getProjectName()}</h1>
                         <span class="text-muted ">
                         <em>${project.getShortDesc() }</em></span>
                       </div>
 
                     
                      <!-- ON HOVER EFFECT -->   
                        <div class="view overlay">

                          <!-- PROJECT CAROUSEL  -->
                          <div id="demo" class="carousel slide" data-interval="false">
                                <c:set var="projectImages" value="${project.getImage()}"/>
                                <c:set var="images" value="${fn:split(projectImages,',') }"/>
                                <c:set var="video" value="${project.getVideo() }"/>
                                <c:set var="length" value="${fn:length(images)}"/>
                                
                                <c:if test="${(not empty video) and(video ne 'novideo.mp4')  }" >
                                     <c:set var="length" value="${length+1}"/>
                                 </c:if>
                                    
                           <!-- INDICATORS -->
                           <c:if test="${length gt 1}">
                            <ul class="carousel-indicators">
                              <li data-target="#demo" data-slide-to="0" class="active border-0">
                              </li>
                              <c:forEach begin="1" end="${length-1}" varStatus="couter" >
                                  <li data-target="#demo" data-slide-to="${couter.count}" class="border-0" >
                                  </li>
                               </c:forEach> 
                             </ul>
                            </c:if> 
                           <!-- END OF THE INDICATORS --> 
                           


                            <!-- THE SLIDESHOW-->
                            <div class="carousel-inner">
                                   <div class="carousel-item active">
                                      <img src="/ProjectAssets/Images/${images[0]}" class="card-img-top p_image" >
                                   </div>
                                 
                                 <c:forEach  begin="1" end="${fn:length(images)-1}" varStatus="i">
                                    <div class="carousel-item">
                                       <img src="/ProjectAssets/Images/${images[i.count]}" class="card-img-top p_image" >
                                   </div>
                               </c:forEach>
                               
                               <c:set value="${fn:split(video,'.')}" var="extension" />
                               <c:set var="videoextension" value="${extension[fn:length(extension)-1]}"/>
                                
                               <c:if test="${(not empty video) and(video ne 'novideo.mp4')}" >
                                      <div class="carousel-item">
                                          <video class="video-fluid p_video"  poster="" autoplay   controls muted>
                                             <source src="/ProjectAssets/Video/${video}" type="video/${videoextension}" />
                                          </video>
                                       </div>
                                </c:if>
                          </div>
 
                            <!--END OF  THE SLIDESHOW-->         
                                      

                            <!-- LEFT AND RIGHT CONTROLS -->
                            
                            <c:if test="${length gt 1 }">
                              <a class="carousel-control-prev" style="width:10%;height:80%;" href="#demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon "></span>
                               </a>
                               <a class="carousel-control-next" style="width:10%; height:80%;" href="#demo" data-slide="next">
                                 <span class="carousel-control-next-icon " ></span>
                               </a>
                            </c:if>
                     
                         <!-- END OF THE PROJECT CAROUSEL  -->
                            
                            
                     </div>
                   <!-- END OF THE ON HOVER EFFECT -->
                   
                   
                                        
                            <!-- PROJECT LIKE,COMMENT  -->
                             <div class="like-comment  mt-2">
                                   <span class="align-like-comment ml-4" style="padding-left:6px;">
                                      
                                      <span>
                                        <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                         ${project.getLikes().size()} likes
                                      </span>
                                      
                                      <span class="ml-2">
                                         <i class="fa fa-comment" aria-hidden="true"></i>
                                         ${project.getComments().size()} comments
                                     </span>   
                                      
                                    <c:if test="${not empty project.getExternalLink() }">
                                      
                                       <span style="margin-left: 251px;">
                                       <i class="fa fa-link" aria-hidden="true"></i>
                                         other link : <a target="_blank"  href="${project.getExternalLink() }"> click here </a>
                                       </span>
                                    </c:if> 
                                </span>   
                                
                                
                                
                                
                             </div>
                          <!-- END OF THE PROJECT LIKE,COMMENT -->

                           <hr>
                            <div class="text-center"> 
                            <h2> About This Project </h2>
                            </div>
                            <hr class="mx-5">
                            
                             <!-- PROJECT DESCRIPTION BODY -->   
                              <div class="card-body p-1" >
                                  <div style="overflow-x:scroll;">
                                          
                                        
                                            
                                            
                                     
                                      
                                            <div class="row mx-4 ">
                                             
                                        <p class="dark-grey-text article" style="word-wrap: break-word;">
                                                     ${project.getDescription() }
                                                </p>
                                           </div>
                                 </div>
                                            
                                            
                                           <!--PROJECT UPLOADED DATE -->
                                            <div class="row my-2">
                                                 <div class="col-12 text-center">
                                                    <h4 class="text-center font-weight-bold dark-grey-text my-3">
                                                       
                                                      ${project.dateCounter() }
                                                    </h4>
                                                  </div>
                                            </div>
                                          <!--END OF THE PROJECT UPLOADED HISTORY-->
                                        </div>
                                        <!--END OF THE DESCRIPTION BODY-->
                                    </div>
                                  <!-- END OF THE PROJECT CARD -->

                                </div>
                              <!-- END OF THE PROJECT COLUMN -->

                            </div>
                            
                            </div>
                            
                           <!-- END OF THE PROEJCT ROW -->

                        </section>
                      <!-- END OF THE PROJECT SECTION -->

                </div>
                <!-- END OF THE MAIN PROJECT COLUMN -->

                  <!-- PROFILE SECTION -->

                    <!-- MAIN PROFILE COLUMN -->
                    <div class="col-lg-3  mt-1">
                    
                    
                        <!-- PROFILE CARD -->  
                        <div class="card shadow-lg sticky-top mt-3">

                       <div class="card-title text-center  ">
                          <h4 class="mt-2">About Project Author</h4>
                       </div>
                     

                            <!-- PROFILE IMAGE  -->
                            <a href="/${user.getUsername()}"> 
                              <div class="show-project-user-profile">
                                 <img alt="" src="/Users/${user.getProfilePicture() }"/>
                               </div>
                             </a> 
                            <!-- END OF THE PROFILE IMAGE -->

                            <!-- PROFILE  BODY -->
                            <div class="card-body">
                                <h5 class="card-title dark-grey-text text-center grey lighten-4 py-2 ">
                                    <strong class="text-capitalize">${user.getFirstname() } 
                                      ${user.getLastname() }</strong>
                                </h5>
                                    
                                 <h4 class="text-center  p-1">${user.getProfession() }</h4> 

                                <!--PROFILE BIO-->
                                <p class="mt-3 dark-grey-text  text-center">
                                    <em>${user.getBio()} </em>
                                </p>
                                <!-- END OF THE PROFILE BIO -->
                               
                            </div>
                            <!-- END OF THE PROFILE  BODY -->

                        </div>
                        <!-- END OF THE PROFILE CARD -->

                  <!-- END OF THE PROFILE SECTION -->
                     
                </div>
                <!-- END OF THE MAIN COLUMN -->  

            </div>
           
            <!-- END OF THE MAIN ROW -->

         </div>
         <!--  END OF THE MAIN CONTAINER -->   
      </div>
     <!-- END OF THE GLOBEL CONTAINER -->

  </section>
   <!-- END OF THE SECTION -->
     
<%@include file="Footer.jsp" %>

</body>
</html>