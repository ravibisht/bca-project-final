
	<!-- HEADER  -->
	<header class="header-area z-index">
		<!-- NAV BAR -->
		<nav class="navbar navbar-expand-lg navbar-light sticky-top">
			<div class="container-fluid">

				<a class="navbar-brand logo_h" href="/"><img
					src="img/logo.png" alt=""> <span>Glance Your Skill</span> </a>


				 <!-- SEARCH FOR USERNAME -->
				<!-- <div class="search">
					<form action="/action_page.php">
						<input type="text" class="custom-input" placeholder="type Username here">
						   <span class="search-icon"> 
						      <i class="fa fa-search fa-2x" aria-hidden="true"></i>
						</span>
					</form>
				</div> -->
			<!--	END OF THE SERACH FOR USERNAME -->


                <!-- DROP DOWN FOR CATEGORY -->  
				<ul class="nav navbar-nav  ml-auto pr-5">
					<li class="nav-item active">
					    <a class="nav-link active"href="/">Home</a>
					</li>
					
					
					<li class="nav-item dropdown">
                       <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                         Category
                      </a>
                      
                        <div class="dropdown-menu category-drop-down" >
                           
                           <c:forEach var="category" items="${categories}">
                           <a class="dropdown-item" href="/project/category/show/${category.getId()}"> ${category.getName()}</a>
                           </c:forEach> 
                       </div>
                  </li>
				<!-- END OF THE DROP DOWN FOR CATEGORY -->	
                      

					
					 
					<li class="nav-item">
					     <a class="nav-link" href="/signup">SignUP</a>
					</li>
					
					<li class="nav-item">
					   <a class="nav-link" href="/login">Login</a>
					</li>
					
					<li class="nav-item">
					    <a class="nav-link" href="/aboutus">About us</a>
					</li>
					
					<li class="nav-item">
					    <a class="nav-link" href="/feedback">Feedback</a>
					</li>
				</ul>
			</div>
		</nav>
		<!-- END OF THE NAV BAR  -->
	</header>
	<!-- END OF TEH HEADER -->


