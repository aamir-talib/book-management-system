<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<layout:mainLayout>
	<jsp:body>

		<ol class="breadcrumb">
			<li><a href="${baseURL}"><span
					class="glyphicon glyphicon-home"></span> Home</a></li>
			<li><a href="${baseURL}/books"><span
					class="glyphicon glyphicon-book"></span> Books</a></li>
			<li class="active"><span class="glyphicon glyphicon-filter"></span>
				${book.getTitle()}</li>
		</ol>


		<div class="col-sm-3">
			<img alt="" class="img-thumbnail"
				src="https://cdn1.iconfinder.com/data/icons/outdated/128/icon_Book.png" />
		</div>
		<div class="col-sm-9">
			<div>
				<span class="label label-default">Subject</span>
			</div>
			<h3>${book.getTitle()} <small> <br />written by: ${book.getAuthor()}</small></h3>
			<p>${book.getDescription()}</p>
			<br />
		</div>

		<div class="col-sm-12">
			<div class="pull-right">
				<a href="${baseURL}/book/edit/${book.getBookId()}" class="btn btn-warning"> <span
					class="glyphicon glyphicon-pencil"></span> Edit
				</a>
			</div>
		</div>

	</jsp:body>
</layout:mainLayout>