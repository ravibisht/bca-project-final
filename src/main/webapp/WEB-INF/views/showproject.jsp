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
Username: ${project.getUser().getUsername()}

FirstName :${project.getUser().getFirstname()}

Email     : ${project.getUser().getEmail()}




</pre>


				<div style="border:solid green 3px;height:75vh;widht:200px;"> 
 <a href="/profile/${project.getUser().getUsername() }"><h1>${project.getUser().getUsername() }</h1></a>
				
				 <marquee>${project.getProject_category().getName() }</marquee>
				 <center> <h1> ${project.getProject_name()} </h1>  </center>
				 
				  
  				                      
				        
				         ${project.getShort_desc()}
				         
				         <br><br>
				         
				         ${project.getDescription()}
				
				
			
				
				
				
	                  <br>			
                 Total Comment :  ${project.getComments().size()}
				 
				 <br>
<c:forEach var="comment" items="${project.getComments()}">
				  
				          <a href="/profile/${comment.getUser().getUsername() }">${comment.getUser().getUsername() }</a>
				          
				          <br>
				            
				            
	<li>			            				            
                                                         &nbsp&nbsp
				            ${comment.getComment_text()} &nbsp &nbsp &nbsp
				             
				             
				           
                  
                       			           
					                                                                          <br><br>
	</li>			            
				           
	</c:forEach>

 
</body>
</html>