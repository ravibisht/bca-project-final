<!-- PROJECTS AREA -->
	<section>
       <!-- PROJECT TITLE -->
		<div class="container  mt-5 ">
		  <div class="main-title p-120 ">
			 <h2>${ShortProjectInfoTitle}</h2>
			  <p>Who are in extremely love with eco friendly system.</p>
		 </div>
		</div>
	<!-- END OF THE TITLE -->

	<!-- PROJECT CONTAINER -->
	 <div class="container-fluid project-container">
	  <!-- PROJECT ROW -->
	   <div class="row">
        <!-- PROJECT COLUMN -->
	     <c:forEach  var="project"   items="${projects}"> 
			 <c:set var="user" value="${project.getUser()}"/>
		     <c:set var="projectImages" value="${project.getImage()}"/>
             <c:set var="images" value="${fn:split(projectImages,',') }"/>
				
			<div class="col-3">
			   
			  <div class="short-project-info"> 
			   <div class="project-img" >
				  <a href="/show/project/${project.getId() } "> 
				     <img src="/ProjectAssets/Images/${images[0]}" class="project-img"/>
				  </a>
				</div>
				

		   <!-- PROJECTNAME -->
			<div class="project-name">
			  <span>${project.getProjectName()}</span>
			</div>
		   <!-- END OF THE PROJECT NAME -->

			<!-- END OF THE PROJECT BOTTOM -->
			  <div class="project-bottom">
			    <a href="/${user.getUsername() }" class=" btn-link"> 
			       <img src="/Users/${user.getProfilePicture()}"class="user-img">
				 </a> 
				  <a href="/${user.getUsername() }" class="btn-link"> 
				      <span class="display-name text-capitalize">
						${user.getFirstname()} ${user.getLastname()}</span>
				  </a>

				 <!-- PROJECT LIKE,COMMENT -->
				 <div class="like-comment mb-5">
				   <i class="fa fa-thumbs-o-up" aria-hidden="true"></i> <span>${project.getLikes().size()}</span>
				   <i class="fa fa-comments" aria-hidden="true"></i> <span>${project.getComments().size()}</span>
				  </div>
				 <!-- END OF THE PROJECT LIKE,COMMENT -->

			 </div>
			 <!-- END OF THE PROJECT BOTTOM -->
		   </div>
		   <!-- END OF THE  PROJECT COLUMN -->
		   </div>
		 </c:forEach>
		 
		 	
     </div>
   <!-- END OF THE PROJECT ROW -->
  </div>
 <!-- END OF THE PROJECT CONTAINER -->
</section>
<!-- END OF THE PROJECT AREA -->