<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>





<c:if test="${empty adminUsername}">

 <c:redirect url="/admin/login"/>
</c:if>

<c:set var="roleType" value="ADMIN"/>
<c:if test="${(not empty adminUsername ) and (adminRole eq roleType ) }">


<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Admin Dashbord</title>
  
     <link rel="stylesheet" href="/css/bootstrap/css/bootstrap.min.css"/>
     <script src="/js/jquery/jquery.min.js"></script>
     <script src="/js/dashboard-util.js"></script>
     <link href="/css/AdminDashboardStyle.css" rel="stylesheet" />
     <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

</head>

<body>
   
    
<nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-end" style="margin-bottom:10px;margin-left:90px;">
  <div>
      
    <ul class="nav navbar-nav navbar-right">
      <li class="nav-item">
        <a class="nav-link"><i class="fa fa-user-circle" aria-hidden="true"></i>${adminusername}</a>
      </li>
      <li class="nav-item">
        <a  class="nav-link" href="/admin/logout"><i class="fa fa-sign-out" aria-hidden="true"></i><span>LogOut</span></a>
      </li>
    </ul>
  </div>

</nav>

<nav class="navbar custom-vertical-nav navbar-dark bg-dark nav-pills nav-fill">
  <ul class="navbar-nav custom-navbar-nav">
    <li class="nav-item">
      <a class="navbar-brand" >
        <span class="logo">GYS Admin</span>
      </a>
    </li>

    <li class="nav-item">
      <a href="/admin/dashboard" class="nav-link">
      	<i class="fa fa-home" aria-hidden="true"></i>
         <span>Dashboard</span>
      </a>
    </li>

    <li class="nav-item" >
      <a href="/admin/dashboard/show/users/page" class="nav-link">
           <i class="fa fa-users" aria-hidden="true"></i>
        <span>User List</span>
      </a>
    </li>
    <li class="nav-item" >
      <a href="/admin/dashboard/show/projects/page" class="nav-link">
         <i class="fa fa-th-large" aria-hidden="true"></i>        
         <span>Project List</span>
      </a>
    </li>
    
     <li class="nav-item" >
      <a href="/admin/dashboard/show/projectCategory/page" class="nav-link">
         <i class="fa fa-list-alt" aria-hidden="true"></i>
         <span>Project Category</span>
      </a>
    </li>
    <li class="nav-item">
      <a href="/admin/dashboard/show/feedback/page" class="nav-link">
         <i class="fa fa-comments" aria-hidden="true"></i>
        <span>Feedback</span>
      </a>
    </li>
    
    <li class="nav-item">
      <a href="/admin/dashboard/show/report/page" class="nav-link">
            <i class="fa fa-file" aria-hidden="true"></i>
        <span>Reports</span>
      </a>
    </li>
   </ul>
</nav>

</body>
</html>   

</c:if>