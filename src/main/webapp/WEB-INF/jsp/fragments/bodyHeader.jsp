<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container-fluid">
			<button type="button" class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			
			<a class="brand" href="<spring:url value="/"/>">Home</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class="active"><a href="<spring:url value="/attivita/new"/>">New</a></li>
					<li><a href="<spring:url value="/attivita/mylist"/>">Mie</a></li>
					<li><a href="#contact">Contact</a></li>
					<li><a href="<spring:url value="/showcase/index"/>">Showcase</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>