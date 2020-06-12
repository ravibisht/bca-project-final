<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>

<body>

<pre>

Username: ${profile.getUsername()}

FirstName :${profile.getFirstname()}

Email     : ${profile.getEmail()}

<c:set var="username" value="${profile.getUsername()}"/>

<c:set var="usernameval" value="${usernameval}"/>

<c:if test="${ username eq  usernameval}" >

<form action="/edit/${profile.getUsername()}">

<input type="submit" value="Edit">

</form>


</c:if>

</pre>

<c:forEach var="project" items="${profile.getProjects()}">
				<div style="border:solid green 3px;height:75vh;widht:200px;"> 
 <a href="/profile/${project.getUser().getUsername() }"><h1>${project.getUser().getUsername() }</h1></a>
				
				 <marquee>${project.getProject_category().getName() }</marquee>
				 <center> <h1> ${project.getProject_name()} </h1>  </center>

         <c:set var="projectusername" value="${project.getUser().getUsername()}"/>
           <c:if test="${ projectusername eq  usernameval}" >

             <a href="/project/delete/${project.getId()}" >delete</a>
             
             
			<form action="user/project/${project.getId()}" method="post">
				 
				              
				    <input type="submit" value="Edit" >
				 
				  </form>
  			</c:if>
				        
				         ${project.getShort_desc()}
				         
				         <br><br>
				         
				         ${project.getDescription()}
				<form action="user/project/like" >
				      <input type="hidden" value="${project.getId() }"  name="project_id">
				      <input type="submit" value="like">  
				</form>
								Likes : ${project.getLikes().size() }
				
			
				<form action="user/project/comment" >
				      <input type="hidden" value="${project.getId() }"  name="project_id">
				      <input type="text" name="comment_text">
				      <input type="submit" value="[ comment ]">  
				</form>
				
				
	                  <br>			
                 Total Comment :  ${project.getComments().size()}
				 
				 <br>
<c:forEach var="comment" items="${project.getComments()}">
				  
				          <a href="/profile/${comment.getUser().getUsername() }">${comment.getUser().getUsername() }</a>
				          
				          <br>
				            
				            
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
				             <input type="text" name="comment_text" value="${comment.getComment_text()}" id="edit">
				             <input type="submit" value="[ Edit ]">
	                  </form>				           
			 </c:if>
					                                                                          <br><br>
	</li>			            
				            
				            
							
</c:forEach>  
				
				
				</div>
				<br>
				<hr>
				<br>
</c:forEach>  



		            
</body>
</html>