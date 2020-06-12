     
     
     <!-- PROJECT CONTENT  -->
      <div class="profile-content">
      
       <%-- LOOP FOR ITERATING PROJECT FORM PROJECT LIST --%>         
        <c:forEach  var="project"  varStatus="count" items="${projects}"> 
            <c:set var="user" value="${project.getUser() }"/>
            <c:set var="projectId" value="${project.getId() }"/>
              
        <!-- MAIN PORJECT COLUMN  --> 
           <div class="col-7 mb-5  pro-category category-${project.getCategoryId()}">
             <!-- PROJECT CARD -->
              <div class="card project" style="width:650px">
                <!-- PROJECT CARD HEADER -->
                  <div class="card-header p-header">
                    <a href="/profile/${user.getUsername()}"  role="button">
                       <img src="/Users/${user.getProfilePicture() }"  class="rounded-circle" width="50" height="50"/>
                         <span class="font-weight-bold  p_u_name">${user.getFirstname()} ${user.getLastname()}</span>
                    </a>
                     
               <p class="date_counter">${project.dateCounter()}</p>
                <!-- PROJECT EDIT AND DELETE BUTTON -->
                
                   <span>
                      <%-- TESTING WHETER USER IS OWNER OF THE PROJECT  --%>
                      
                        <c:if test="${ user.getId() eq  loggedInUserId}" >
                          <a role="button" class="btn btn-danger float-right"
                               onclick="return confirm('Are you really want to delete')"
                               href="/project/delete/${projectId}">Delete</a>
                          
                            <a role="button" class="btn btn-primary  float-right mr-3"
                               href="/project/edit/${projectId}">Edit</a>
                        </c:if>
                        
                     <%-- END OF THE TESTING WHETER USER IS OWNER OF THE PROJECT  --%>                
                   </span>
                   
                 <!-- END OF THE PROJECT EDIT AND DELETE BUTTON -->   
                </div>   
              <!-- END OF THE PROJECT CARD HEADER -->
                            
           <!-- PROJECT CAROUSEL  -->
            <c:set var="projectImages" value="${project.getImage()}"/>
            <c:set var="images" value="${fn:split(projectImages,',') }"/>
            <c:set var="video" value="${project.getVideo() }"/>
            <c:set var="length" value="${fn:length(images)}"/>
                                 
              <c:if test="${(not empty video) and(video ne 'novideo.mp4')  }" >
                 <c:set var="length" value="${length+1}"/>
              </c:if>
                                  
           <!-- remove this if you want to carousel slides auto data-interval="false" -->
           
           <div id="carousel${count.count}" class="carousel slide" data-interval="false" >
           
           <!-- INDICATORS -->
              <c:if test="${length gt 1}">
               <ul class="carousel-indicators" >
                   <li data-target="#carousel${count.count}" data-slide-to="0" class="active border-0"></li>
                   
                    <c:forEach begin="1" end="${length-1}" varStatus="couter" >
                        <li data-target="#carousel${count.count}" data-slide-to="${couter.count}" class="border-0" ></li>
                    </c:forEach> 

               </ul>
              </c:if>
             <!-- END OF THE INDICATORS -->
            
            
          <!-- THE SLIDESHOW-->
            <a href="/show/project/${projectId}">
              
             <div class="carousel-inner">
                 <div class="carousel-item active">
                    <img src="/ProjectAssets/Images/${images[0]}" class="card-img-top p_image" />
                 </div>
                   
           <c:forEach begin="1" end="${fn:length(images)-1}" varStatus="i">
		       <div class="carousel-item">
				   <img src="/ProjectAssets/Images/${images[i.count]}" class="card-img-top p_image" />
	               </div>
	           </c:forEach>

			  <c:set value="${fn:split(video,'.')}" var="extension" />
              <c:set var="videoextension" value="${extension[fn:length(extension)-1]}"/>
                                
               <c:if test="${(not empty video)and (video ne 'novideo.mp4') }" >
                    <div class="carousel-item">
                       <video class="video-fluid p_video"  loop  muted controls>
                           <source src="/ProjectAssets/Video/${video}" type="video/${videoextension}" />
                        </video>
                     </div>
                </c:if>
                                            
            </div>       
         </a> 
        <!--END OF  THE SLIDESHOW-->         
                                      
        <!-- LEFT AND RIGHT CONTROLS -->
          <c:if test="${length gt 1 }">
            <a class="carousel-control-prev" style="width:10%;height:80%;" href="#carousel${count.count}" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
           <a class="carousel-control-next"  style="width:10%;height:80%;" href="#carousel${count.count}" data-slide="next">
              <span class="carousel-control-next-icon"></span>
           </a>
         </c:if>
        <!-- END OF THE LEFT AND RIGHT CONTROLS -->
    </div>
   <!-- END OF THE PROJECT CAROUSEL  -->
   
    <!-- PROJECT CARD BODY -->
    <div class="card-body">
      <hr>
      
      <!-- LIKE,COMMENT,SHARE -->
        <div>
         <c:set var="userId" value="${userid}"/>
           <button class="btn" id="like_${projectId}" 
               onclick='doLikeAndDeleteLike($(this),${projectId})'style="font-size:30px; margin-top: -25px;">
                                                 
              <c:set var="status" value="notliked"/>
               
               <c:forEach var="like" items="${project.getLikes()}" >
                    
                     <c:set var="likeUserId" value="${like.getUserId()}"/>
                 <c:if test="${loggedInUserId eq likeUserId }">
                      <i class="fa fa-thumbs-up" style="color:#007bff;" aria-hidden="true"></i>
                      <c:set var="status" value="liked"/>
                  </c:if>
                      
               </c:forEach> 
                  
                <c:set var="check" value="notliked"/>
                     
                  <c:if test="${status eq check}">
                     <i class="fa fa-thumbs-o-up"  aria-hidden="true"></i>
                  </c:if>
           </button> 
                                            
          <a class=" btn btn-link"  href="#comment_text_${projectId}" style="font-size:30px;margin-top:-25px;">
              <i  class="fa fa-comment-o" aria-hidden="true"></i>
          </a>
          
          <span class="btn btn-link" style="font-size:30px; margin-top:-25px;"   
                onclick='copyProjectLink("${projectId}")'>
             <i class="fa fa-share" aria-hidden="true"></i>
          </span>
          
      </div>
     <!-- END OF THE LIKE,COMMENT,SHARE -->
     
      <c:set var="totalLikes" value="${project.getLikes().size()}"/>  
      <c:set var="totalComments" value="${project.getComments().size()}"/> 
        
       <span class="text-muted" id="total_like_${projectId}">likes ${totalLikes} </span>
       <span class="text-muted" id="total_comments_${projectId}">comments ${totalComments}</span>
             
        <h4 class="card-title">${project.getProjectName()}</h4>
         <p class="card-text">${project.getShortDesc()}   
         <a href="/show/project/${projectId}" >see more</a> </p>
                  
                    
      <c:if test="${not empty project.getExternalLink() }">
           <span>
               <i class="fa fa-link" aria-hidden="true"></i>
                Other link : <a target="_blank"  href="${project.getExternalLink() }"> click here </a>
            </span>
      </c:if>                   
   </div>
   <!-- END OF THE PROJECT CARD BODY -->
   
   <!-- PROJECT CARD FOOTER -->
    <div class="card-footer" style="background-color: white">
      
       <!-- PROJECT COMMENT IMAGE ->PROJECT COMMENT TEXT -->
       
        <c:forEach var="comment" items="${project.getComments()}" >
           <c:set var="userInfo" value="${comment.getUser()}"/>
           <c:set var="userCommentId"  value="${comment.getUserId()}"/>
                                    
       <div class="comment_img" id="comment_id_${comment.getId()}">
            <a href="/${userInfo.getUsername()}">
              <img src="/Users/${userInfo.getProfilePicture()}" style="width: 37px;height: 37px;border-radius: 50%;">
           </a>
      
      <!-- PROJECT COMMENT TEXT -->
       <div class="comment_text">
          <a href="/profile/${userInfo.getUsername()}">${userInfo.getUsername()}</a>
             <span class="mb-4">${comment.getCommentText()}</span>
              &nbsp &nbsp
       </div>     
       <!-- END OF THE COMMENT TEXT -->      
        &nbsp &nbsp
       
       <c:if test="${loggedInUserId==userCommentId}"> 
          <button type="button" class="btn btn-link" 
           onclick='deleteComment($(this),comment_id_${comment.getId()},${comment.getId()},${projectId})'>
             delete</button>
     </c:if>
   </div>
 </c:forEach>
 <!-- END OF THE PROJECT COMMENT IMAGE <- PROJECT COMMENT TEXT -->        
      
     <!-- AJAX COMMENT INJECTOR LOCATION  -->  
     <input type="hidden" id="com_text_${projectId}"/>
      <hr>
        
   <!-- PROJECT COMMENT ->COMMENT BOX --> 
    <div class="comment">
     <!-- COMMENT BOX -->
       <div class="comment-box">
          <div class="input">
            <img src="/Users/${loggedInUser.getProfilePicture()}" style="width:37px;height:37px;border-radius: 50%;">
              <input type="text" class="input-text " name="comment_text"  id="comment_text_${projectId}" 
                     style="display:inline-block;" placeholder="Add a comment here"/>
                    
             <input type="button" class="btn btn-primary button" 
                    style="border-radius: 18px;"   id="sendcomment"
                    onclick='doComment(${projectId},$("#comment_text_${projectId}").val())' value="Comment" />
             </div>
           
           </div>
          <!-- END OF THE COMMENT BOX --> 
         </div>
        <!-- END OF THE PROJECT COMMENT <- COMMENT BOX --> 
       </div>
      <!-- END OF THE PROJECT CARD FOOTER --> 
     </div>
    <!--END OF THE  PROJECT CARD -->
   </div>
   <!-- END OF THE  MAIN PORJECT COLUMN  --> 
  </c:forEach> 
  
 </div>
 <!-- END OF THE  PROJECT CONTENT  --> 
 
 

