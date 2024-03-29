<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="AdminDashboardNavigation.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
      <div class="container custom-container-category">
                  <div class="col-md-6 offset-md-3 m-auto pt-5">
                      <div class="card shadow-lg">
                        <div class="card-header">
                             <h3 class="mb-0 font-weight-bold text-center"> Edit Project Category</h3>
                        </div>
                    <div class="card-body">
                        <form  action="/admin/dashboard/edit/projectcategory" method="post" class="form" role="form" enctype="multipart/form-data" >
                              <div class="form-group">
                                        <label for="name">ID</label>
                                        <input type="text"  readonly class="form-control " id="name" name="id"  value="${editCategory.getId()}" required>
                                    </div>      
                                    
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        <input type="text" class="form-control" id="name" name="name" value="${editCategory.getName()}"required>
                                    </div>
                                
                        <div class="form-group">
                             <label for="description">Description</label>
                             <input type="text" class="form-control" id="description" name="description" value="${editCategory.getDescription()}" required>
                        </div>

                        <div class="form-group">
                             <label for="image">Image</label>
                             <input type="file" class="form-control" id="image" name="categoryPicture"   required>
                        </div>
                        <div class="form-group">
                             <button type="submit" class="btn btn-success btn-lg float-right"><i class="fa fa-floppy-o" aria-hidden="true"></i>Save</button>
                      </div>
               </form>
              </div>
             </div>
            </div>
           </div>


</body>
</html>