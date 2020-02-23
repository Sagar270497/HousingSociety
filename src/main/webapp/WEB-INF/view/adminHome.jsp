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

<title>HousingSociety-${title}</title>
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
<%
response.setHeader("Cache-Control" , "no-cache , no-store , must-revalidate");
if(session.getAttribute("adminid") == null)
{
	 response.sendRedirect("adminlogin");
}

%>

	<div class="wrapper">
		<!-- navbar -->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href=" ">Housing-Society</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="${contextRoot}/Admin">Admin	Home</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${contextRoot}/adminLogout"><span
							class="glyphicon glyphicon-log-out"></span> Admin Logout</a></li>
				</ul>
			</div>
		</nav>

		<div class="content">
			<!-- navbar -->
			<div class="container">

			 <div class="row">
      
            <div class = "col-xs-12">
             
               <div class = "alert alert-success alert-dismissible">
               <button type = "button" class= "close" data-dismiss = "alert">&times;</button>
               <div class="alert alert-info fade in" id="societymessage"></div>
               </div>
            
            </div>
          

					<!-- Would be to display sidebar -->
					<div class="col-md-3" style="margin-top: 35px;">

						<a href="${contextRoot}/Society" class="list-group-item">SOCIETY</a>
						<a href="${contextRoot}/Member" class="list-group-item">SOCIETY MEMBER</a> 
						<a href="${contextRoot}/Block" class="list-group-item">SOCCIETY	BLOCK</a>
						<a href="${contextRoot}/Facilitator" class="list-group-item">FACILITATOR</a>
						<a href="${contextRoot}/FundCategory" class="list-group-item">FUND CATEGORY</a> 
						<a href="${contextRoot}/ExpenseCategory" class="list-group-item">EXPENCE CATEGORY</a> 
						<a href="#" class="list-group-item">FUND TRANSACCTION</a>
					    <a href="#" class="list-group-item">EXPENSE TRANSACCTION</a>

					</div>
                

					<!-- for all society -->
					<c:if test="${userclicksociety  == true}">
						<%@include file="./adminhome/societylist.jsp"%>
					</c:if>
					<!-- for all member -->
					<c:if test="${userclickmember  == true}">
						<%@include file="./adminhome/memberlist.jsp"%>
					</c:if>
					<c:if test="${userclickfacilitator  == true}">
						<%@include file="./adminhome/facilitatorlist.jsp"%>
					</c:if>
					
					<!-- for all society -->
					<c:if test="${userclickfundcategory  == true}">
						<%@include file="./adminhome/fundcategory.jsp"%>
					</c:if>
				
				</div>

			</div>
		</div>
		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- jQuery -->
		
		
		<script src="${js}/jquery.js"></script>
		<script src="${js}/jquery.min.js"></script>
		<script src="${js}/bootstrap.min.js"></script>
       

		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>

		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap.js"></script>

		<script src="${js}/bootstrap-confirmation.js"></script>

		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>
	</div>
</body>

</html>
