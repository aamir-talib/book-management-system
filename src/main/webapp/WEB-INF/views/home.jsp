<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<layout:mainLayout>
	<jsp:body>

		<div class="jumbotron">
			<div class="container">
				<h1>Welcome to BMS</h1>
				<p class="lead">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br />
					Donec sed bibendum purus, quis gravida tellus. Praesent pharetra
					ante ipsum.
				</p>
				<p class="lead">
					<a class="btn btn-primary btn-lg" role="button" href="${baseURL}/books"><span
						class="glyphicon glyphicon-list"></span> Manage Books</a> <small><br class="visible-xs" />-
						OR -<br class="visible-xs" /></small> <a class="btn btn-success btn-lg" role="button"
						href="${baseURL}/book/create"><span class="glyphicon glyphicon-plus"></span>
						Create New Book</a>
				</p>
			</div>
		</div>

	</jsp:body>
</layout:mainLayout>