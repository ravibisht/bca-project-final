<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="com.shorturl.app.ProjectServices"%>
<%@page import="java.util.List"%>

<%@page import="com.shorturl.app.Project"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src=/GYS/src/main/webapp/WEB-INF/static/Jquery.js></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<script type="text/javascript">



function doComment(project_id,comment_text){
	
		
	$.ajax({
		
	 url:'/user/project/comment',
	 data:{project_id:project_id,comment_text:comment_text},
	 success:function(data){
		 alert(data);
	 }
	
	
	});
	
	
	
	alert(" hi bro");
	
	
	
}


</script>

</head>
<body>
 
<%

out.println(session.getAttribute("usernameval"));
if(session.getAttribute("usernameval")==null){
	
	
	response.sendRedirect("/");
}

%>
  <h1 style="background-color:green;">  Welcome To GYS</h1>
  
  <form action="/logout">
  
  <input type="submit" value="logout"/>
  
  </form>
  
  <br><br>
  
  <center> <h1> Add Project</h1></center>
  
  <form action="addproject">
  
    <input type="submit" value="Upload Project">
  </form>
  
<c:forEach var="project" items="${projects}">
				<div style="border:solid green 3px;height:75vh;widht:200px;"> 
   <a href="/profile/${project.getUser().getUsername() }"><h1>${project.getUser().getUsername() }</h1></a>

				
				 <marquee>${project.getProject_category().getName() }</marquee>
				 <center> <h1> ${project.getProject_name()} </h1>  </center>
  				                      
				         ${project.getShort_desc()}
				         
				         <br><br>
				         
				         ${project.getDescription()}
				<form action="user/project/like" >
				<input type="hidden" value="${project.getId() }"  name="project_id">
				<input type="submit" value="like">  
				</form>
				
				Likes : ${project.getLikes().size() }
			
<!-- 				<form action="user/project/comment" >
 -->				<input type="hidden" value="${project.getId() }"  name="project_id">
				<input type="text" name="comment_text" id="comment_text_${project.getId()}">
				
				<input type="button" value="[ comment ]" onclick='doComment(${project.getId()},$("#comment_text_${project.getId()}").val())' >  
				
<!-- 				</form>
 -->				
	                  <br>			
                   Total Comment :  ${project.getComments().size()}
				  <br>
				
				<c:forEach var="comment" items="${project.getComments()}">
				  
				          <a href="/profile/${comment.getUser().getUsername() }">${comment.getUser().getUsername() }</a>
				          
				          
				            <li>
				            
				            &nbsp&nbsp
				            ${comment.getComment_text()} &nbsp &nbsp &nbsp
				             
				             <c:set var="user_idd" scope="session" value="${useridd}"/>
				             <c:set var="comment_id"  value="${comment.getUser_id()}"/>
								           
				            <c:if test="${user_idd==comment_id}"> 
				           
				            
                                      <a href="user/project/comment/delete/${comment.getId()}">delete</a>
                       <form action="user/project/comment" >
				             <input type="hidden" value="${project.getId() }"  name="project_id">
				             <input type="hidden" value="${comment.getId() }" name="id">
				             <input type="text" name="comment_text"   value="${comment.getComment_text()}">
				             <input type="submit" value=" Edit "  >
				      </form>				           
				      
 				          
				          
				  </c:if>
								            <br>
				            <br>
				            </li>
				            
				            
							
							</c:forEach>  
				
				
				</div>
				<br>
				<hr>
				<br>
			</c:forEach>  




 <%--${projects.get(<%=i%>).getProject_name() }
  
   --%> 
  

  <%--  <% 
     List<Project> project=request.getParameter(projects;
  for(Project pro:project){
	  
	  
	  out.println(pro.getProject_name());
  }
  
  %>
  
   --%>
  
  
</body>
</html>