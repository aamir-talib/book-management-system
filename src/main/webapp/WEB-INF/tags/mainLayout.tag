<%@ tag language="java" pageEncoding="ISO-8859-1" description="Main Layout Template"%>
<%@attribute name="header" fragment="false"%>
<%@attribute name="footer" fragment="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/png" href="<c:url value="/resources/images/favicon.png"/>" />
		<title>BMS</title>
		
		<c:set var="req" value="${pageContext.request}" scope="request" />
		<c:set var="baseURL" value="${req.scheme}://${req.serverName}:${req.serverPort}${req.contextPath}" scope="request" />

		<!-- Bootstrap -->
		<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    	<![endif]-->
	</head>

	<body>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${baseURL}">BMS</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<span class="glyphicon glyphicon-book"></span> Books <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="${baseURL}/books">Search <span class="glyphicon glyphicon-search"></span></a></li>
								<li class="divider"></li>
								<li class="dropdown-header">Manage</li>
								<li><a href="${baseURL}/books">Show All <span class="glyphicon glyphicon-list"></span></a></li>
								<li><a href="${baseURL}/book/create">Create New <span class="glyphicon glyphicon-plus"></span></a></li>
							</ul>
						</li>
					</ul>
	
					<form class="navbar-form navbar-right" role="form">
						<div class="form-group">
							<input type="search" placeholder="Quick Search" class="form-control">
						</div>
						<button type="submit" class="btn btn-success">
							<span class="glyphicon glyphicon-search "></span>
						</button>
					</form>
	
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	
		<div class="container">
			<jsp:doBody />
		</div>
	
		<div id="pagefooter">
			<div id="footer">
				<div class="container">
					<div class="notice">
						Copyright &copy;
						<script type="text/javascript">
							document.write(new Date().getFullYear())
						</script>
						BMS.
					</div>
				</div>
			</div>
	
	
			<!-- Bootstrap core JavaScript
		    ================================================== -->
			<!-- Placed at the end of the document so the pages load faster -->
	
			<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
			<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
		</div>
	</body>
</html>