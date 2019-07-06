<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="image" value="/resources/image" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SOCIETY MAINTENANCE - ${title}</title>
<script>

	window.contextRoot = '${contextRoot}'
	
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">



</head>

<body>
<div class="wrapper">
<!-- navbar -->
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="${contextRoot}/adminHome">Society Maintenance</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="${contextRoot}/adminLogout">ADMIN LOGIN</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

	<div class="contentt">
	<!-- navbar -->
<div class="container">

	<div class="row">


		<!-- Would be to display sidebar -->
		<div class="col-md-3" style="margin-top: 40px;">

			<a href="#" class="list-group-item" >SOCIETY</a>
			<a href="#" class="list-group-item" >SOCIETY MEMBER</a>
			<a href="#" class="list-group-item" >SOCCIETY BLOCK</a>
			<a href="#" class="list-group-item" >FUUND CATEGORY</a>
			<a href="#" class="list-group-item" >EXPENCE CATEGORY</a>
			<a href="#" class="list-group-item" >FUND TRANSACCTION</a>
			<a href="#" class="list-group-item" >EXPENSE TRANSACCTION</a>
									

		</div>

		<!-- to displa -->
		<div class="col-md-9">
          <a href="#link" class="btn btn-primary" role="button"style="margin-left: 532px;margin-bottom: -55px;">ADD SOCCIETY</a>
			<div class="row">
			
				<div class="col-xs-12">
					<table id="SocietyListTable" class="table table-striped table-borderd" width="850">
					
						<thead>
							<tr>
								<th>Name</th>
								<th>Address</th>
								<th>Fund</th>
								<th></th>	
							</tr>						
						</thead>				
					</table>				
				</div>			
			</div>
		</div>
	</div>

</div>
</div>
  <!-- Footer -->
		<%@include file="./shared/footer.jsp"%>
		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>
		
		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>
		
		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap.js"></script>
		
		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
</div>
</body>

</html>
