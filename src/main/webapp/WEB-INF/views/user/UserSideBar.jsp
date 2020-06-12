<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



             <!-- PROFILE SIDEBAR -->
               <div class="profile-sidebar ml-5  mt-5">

                 <!-- SIDEBAR USERPIC -->
                    <div class="profile-userpic">
                        <img src="/Users/${loggedInUser.getProfilePicture()}" >
                     </div>
                 <!-- END SIDEBAR USERPIC -->


                 <!-- SIDEBAR USER TITLE -->
                   <div class="profile-usertitle">
                      <div class="profile-usertitle-name text-capitalize" >
                         ${loggedInUser.getFirstname()} ${loggedInUser.getLastname()}
                       </div>
                       <div class="profile-usertitle-job">${loggedInUser.getProfession()}
                       </div>
                    </div>
                 <!-- END SIDEBAR USER TITLE -->
                 
                 <!-- SIDEBAR MENU -->
                   <div class="profile-usermenu">
                      <ul class="nav flex-column">
                         <li class="nav-item ">
                            <a class="nav-link " href="/${loggedInUser.getUsername()}">
                             <i class="fa fa-user-circle-o fa-3x" aria-hidden="true"></i>
                              My Profile</a>
                          </li>
                          
                          <li>
                          <a class="nav-link ${active1}" href="/user/feed">
                              <i class="fa fa-compass fa-3x" aria-hidden="true"></i>
                               Feed</a>
                          </li>
                          
                          <li class="nav-item">
                             <a class="nav-link ${active2}" href="/edit/${loggedInUser.getUsername()}">
                                 <i class="fa fa-cog" aria-hidden="true"></i>
                                 
                                  Account Settings</a>
                           </li>
                            <!-- <li class="nav-item">
                               <a class="nav-link" href="#">  
                                  <i class="fa fa-info-circle fa-3x" aria-hidden="true"></i>
                                     Help</a>
                             </li> -->
                            <li class="nav-item">
                              <a class="nav-link" href="/logout"> 
                                <i class="fa fa-sign-out fa-3x" aria-hidden="true"></i>
                                 Log Out</a>
                           </li>
                        </ul>
                    </div>
                 <!-- END OF  SIDEBAR MENU -->
            </div>
           <!-- END OF PROFILE SIDEBAR MENU -->    
  




</body>
</html>