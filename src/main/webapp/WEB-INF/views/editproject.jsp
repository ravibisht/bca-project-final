<%@page import="com.GYS.app.model.ProjectCategory"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<center>  <h1> Welcome to Add Project </h1> </center>

<form action="/edit">
<pre>
 
 <input type="hidden" name="id" value="${editproject.getId() }">
 
 <%
  	List<ProjectCategory> Project_Categories=(List<ProjectCategory>)session.getAttribute("project_categories");

  String projects_categories="";
  String projects_categories2="";
  String comaleft="'";
  String comaright="'";

  for(ProjectCategory pc:Project_Categories){
  	
  	
  	
  projects_categories+="<option value="+comaleft+pc.getId()+comaright+">"+pc.getName()+"</option>";	


  //System.out.println("This is from JSP :) "+pc);
  }
  %>
 
  Category     : <select name="category_id">

                 <option value="${editproject.getProject_category().getId()}"> ${editproject.getProject_category().getName()}  
                           <%=projects_categories%> 
                  
                  
                  </option>      
                            

               </select>
 
 Project Name : <input type="text" name="project_name"  value="${editproject.getProject_name()}">
 
Short desc   : <input type=" text" name="short_desc"  value="${editproject.getShort_desc()}">

Description  : <input type="text"  name="description"  value="${editproject.getDescription()}">

Image        : <input type="text"  name="image"  value="${editproject.getImage()}" >

               <input type="submit" value="Upload Project" >

</pre>
</form>
</body>
</html>