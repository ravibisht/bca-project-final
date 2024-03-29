<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="AdminDashboardNavigation.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
   
    
 <div class="container custom-container">
   <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col col-xs-6">
            <h3 class="panel-title text-center">All Project</h3>
          </div>
          
          <div class="ml-5"> 
         <form action="/admin/dashboard/show/projects/page" method="post" style=" display:inline!important;">
           <span>
            Show 
            <select name="totalRecordPerPage" onchange='this.form.submit()' >
              <option value="${totalRecordPerPage}" selected disabled hidden>${totalRecordPerPage}</option>
              <option value="10">10</option>
              <option value="50">50</option>
              <option value="100">100</option>
              <option value="${projectByPage.getTotalElements()}">ALL</option>
            </select>
            entries           
          </span> 
          </form>
              

            <span style="margin-left: 635px;"> 
            Search: <input type="text" id="search_data" >
            </span>
           </div>
          
        </div>
      </div>

      <div class="card-body">
        <table class="table table-hover" >
          
          <thead>
            <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Category</th>
            <th>Short Desc</th>
            <th>User Name</th>
            <th>Actions</th>
            </tr>
           </thead>
           
           <tbody id="info_table"> 
             <c:forEach  var="project" items="${projectByPage.getContent()}">
                <tr>
                  <td>${project.getId()}</td>
                  <td>${project.getProjectName()}</td>
                  <td>${project.getProjectCategory().getName()}</td>
                  <td>${project.getShortDesc()}</td>
                  <td>${project.getUser().getUsername() }
                  <td style="width:140px;">
                  <a class="btn btn-light btn-outline-success  text-dark custom-btn-link" href="/admin/dashboard/show/project/${project.getId()}"><i class="fa fa-eye"aria-hidden="true"></i></a>
                  <c:set var="totalElement" value="${projectByPage.getNumberOfElements()}" />
                  <a class="btn btn-danger custom-btn-link"  href="/admin/dashboard/del/project/${currentPage}/${project.getId()}/?total=${totalElement}"  onclick="return confirm('Are you really want to delete')"><i class="fa fa-trash" aria-hidden="true"></i></a>
             </td>
             </tr>
            </c:forEach>
            <span id="search_meassage"></span>
           </tbody>


        </table>

        <hr>

            <c:set var="disabled" value="disabled"/>
                  <ul class="pagination  justify-content-center">
        
                 <c:set var="currentPage"  value="${currentPage}"/>
                  <li class="page-item <c:if test="${currentPage eq 0}">
				                        <c:out value="${disabled}"></c:out>
                                   </c:if>" >
                           
               <a class="page-link" href="/admin/dashboard/show/projects/page?page=${currentPage-1}" aria-label="Previous">
                    <span aria-hidden="true">Previous</span>
                   </a>
                   
             </li> 
             <c:set var="totalPages" value="${projectByPage.getTotalPages()}"/>
             
         <c:forEach var="page" begin="0" step="1" end="${totalPages}">
         
         
              <c:if test="${ page le totalPages-1}">
                  <li class="page-item <c:if test="${page==currentPage}">
                                        <c:set var="active" value="active"></c:set>
				                        <c:out value="${active}"></c:out>
                                   </c:if>">
              
				    
                   <a class="page-link" 
                  href="/admin/dashboard/show/projects/page?page=${page}">${page+1}</a>
              </li>
            </c:if>
              
           </c:forEach>
           
           <li class="page-item <c:if test="${currentPage == totalPages-1}">
				                        <c:out value="${disabled}"></c:out>
                                   </c:if>" >
           
               <a class="page-link" href="/admin/dashboard/show/projects/page?page=${currentPage+1}" aria-label="Next">
                    <span aria-hidden="true">Next</span>
                   </a>
                   
             </li>    
           </ul>
         </div>
        </div>
       </div>

</body>
</html>