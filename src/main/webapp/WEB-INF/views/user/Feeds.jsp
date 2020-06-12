<%@include file="header.jsp" %>

<!DOCTYPE html>


<html lang="en">
<head>
  
  <title>Home</title>
  <meta charset="utf-8">
 
 <style type="text/css">
   .date_counter{
     position: relative;
     left: 48px;
    top: -26px;
    padding: 0;
    margin-bottom: -26px;
    margin-left: 8px;
    margin-top: 7px;
     font-size: 15px;
     font-weight: 900;
    color: darkgrey;
    
   } 
   
  
   
.information{

    width: 650px;
    border: 2px solid #dbdbdb;
    border-radius: 3px;
    font-family:roboto;
    margin-bottom:20px;
    }
    
    .line-break{
    
   	border: 2px solid black;
 
   }
    
   .c-heading{
  padding-left: 20px;
  padding-right: 20px;
  position:absolute;
  bottom: 0px;
  background: rgba(0, 0, 0, 0.5);
  color: #f1f1f1;
  width: 100%;
  border-radius:6px;
   
   }
   
   
   .category-heading{
   width:200px; 
   padding:13px;
   font-family:roboto;
       
   border: 2px solid #dbdbdb;
   font-weight:600;
    border-radius: 3px;
   }
   
   .p-category{
    width:200px;
    border-radius:6px;
    cursor:pointer;
   }
   
   
   #all{
   padding:32px;
   color:white;
   font-size:25px; 
   font-weight:600;
   background-image:linear-gradient(to bottom right,#13f1fc,#0470dc);
     
   }
   
   .active-category{
   border:3px solid  #0057ff;
   border-radius: 8px; 
   }
 </style>
  
  <script> 
 
  
  </script>
   
</head>
 <body>


<!-- MAIN CONTAINER -->
 
   <input type="hidden" id="login_username" value="${loggedInUser.getUsername()}" >
   <input type="hidden" value="${loggedInUser.getProfilePicture()}" id="login_profile_pic"/>

  <div class="container-fluid ">
    <c:set var="LoginUser" value="${project.getUser()}"/>

 <!-- MAIN ROW AND PROFILE -->
   <div class="row profile">
   
      <!-- PROFILE COLUMN -->
      <div class="col-3">
         
         <%--  SIDE BAR --%>
           <c:set var="active1" value="active"/>
           <%@include file="UserSideBar.jsp" %>   
          <%-- END OF THE SIDE BAR --%> 
      
      </div>
     <!-- END OF THE PROFILE COLUMN --> 
     
      
     <!-- PROJECTS COLUMN -->
     <div class="col-9">
        <div class="col-7">
           <div class="text-center ml-4 information">
              <h1 class="about-us-title mb-1">Feeds </h1>
              <hr class="w-25 line-break mt-0 " />
          </div>
       </div>  
     
        
      <%-- INCLUDING PROJECT FILE --%>
      <%@include file="Project.jsp" %>
        
        
        </div>
        <!-- END OF THE PROJECTS COLUMN --> 
     
     </div>
    <!-- END OF THE MAIN ROW AND PROFILE -->


            <div style="position:absolute;right:17px;top:90px;">
                 <div class="card mb-4 category-heading text-center"> 
                      <span>FILTER BY CATEGORIES</span>
                 </div>
                 
             <div class="card mb-3 p-category active-category" id="all" >
                   <div class="text-center">
                        ALL
                    </div>
             </div>  
                      
             <c:forEach var="category" items="${categories}">
                <div class="card mb-3 p-category" id="category-${category.getId()}" >
                   <img alt="" src="/ProjectAssets/Category/${category.getImage()}" height="100px" style="border-radius:6px;" >                     
                     <div class="c-heading text-center">
                        ${category.getName() }
                      </div>
                  </div>
               </c:forEach>  
      
      </div>
<!-- END OF THE MAIN CONTAINER -->
</div>


<%@include file="Footer.jsp" %>
</body>
</html>

                     
                  