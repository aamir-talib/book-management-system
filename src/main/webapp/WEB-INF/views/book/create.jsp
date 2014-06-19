<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<link href="<c:url value="/resources/css/bootstrap-fileupload.css" />" rel="stylesheet">

<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap-fileupload.js" />"></script>

<layout:mainLayout>
	<jsp:body>

		<ol class="breadcrumb">
			<li><a href="${baseURL}"><span
					class="glyphicon glyphicon-home"></span> Home</a></li>
			<li><a href="${baseURL}/books"><span
					class="glyphicon glyphicon-book"></span> Books</a></li>
			<li class="active">
				<span class="glyphicon glyphicon-plus"></span> Create</li>
		</ol>

		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="glyphicon glyphicon-plus"></span> Create a new book
			</div>
			<div class="panel-body">
				<form:form action="${baseURL}/book/save" method="POST" commandName="book" class="form-horizontal">
				
					<div class="col-sm-3">
						<div class="form-group">

							<div class="fileupload fileupload-new" data-provides="fileupload">
								<div class="fileupload-preview thumbnail"
									style="width: 100%; height: 100%; height: 300px;"></div>
								<div class="file-upload-btn">
									<span class="btn btn-default btn-file"> <span
										class="fileupload-new">Select Cover</span> <span
										class="fileupload-exists">Change</span> <input type="file">
									</span> <a href="#" class="btn btn-danger fileupload-exists"
										data-dismiss="fileupload">Remove</a>
								</div>
							</div>

						</div>
					</div>
					<div class="col-sm-9">
						<div class="form-group">
							<label for="title" class="col-sm-2 control-label">Title</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="title" path="title"
									placeholder="Title" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="author" class="col-sm-2 control-label">Author</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="author" path="author"
									placeholder="Author" required="required" />
							</div>
						</div>

						<div class="form-group">
							<label for="subject" class="col-sm-2 control-label">Subject</label>
							<div class="col-sm-10">
								<select id="subject" class="form-control" required="required">
									<option value=""> Select</option>
									<option value="2">Business &amp; Investing</option>
									<option value="4">Cookbooks &amp; Food</option>
									<option value="6">Computers &amp; Technology</option>
									<option value="8">Health, Fitness &amp; Dieting</option>
									<option value="9">History</option>
									<option value="15">Professional &amp; Technical Books</option>
									<option value="16">Science &amp; Math</option>
									<option value="19">Travel</option>
								</select>

							</div>
						</div>

						<div class="form-group">
							<label for="description" class="col-sm-2 control-label">Description</label>
							<div class="col-sm-10">
								<form:textarea class="form-control" id="description" path="description"
									placeholder="Description" required="required"></form:textarea>
							</div>
						</div>

					</div>

					<div class="col-sm-12">
						<div class="pull-right">
							<button type="submit" class="btn btn-success">
								<span class="glyphicon glyphicon-plus"></span> Create
							</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		
	</jsp:body>
</layout:mainLayout>