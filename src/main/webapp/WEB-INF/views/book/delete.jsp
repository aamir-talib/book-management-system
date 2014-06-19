<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<layout:mainLayout>
	<jsp:body>
		
		<ol class="breadcrumb">
			<li><a href="${baseURL}"><span
					class="glyphicon glyphicon-home"></span> Home</a></li>
			<li><a href="${baseURL}/books"><span
					class="glyphicon glyphicon-book"></span> Books</a></li>
			<li><a href="${baseURL}/book/${book.getBookId()}"><span
					class="glyphicon glyphicon-filter"></span> ${book.getTitle()}</a></li>
			<li><a href="${baseURL}/book/edit/${book.getBookId()}"><span
					class="glyphicon glyphicon-pencil"></span> Edit</a></li>
			<li class="active"><span class="glyphicon glyphicon-trash"></span>
				Delete</li>
		</ol>

		<div class="listed-books">
			<div class="panel panel-danger ">
				<div class="panel-heading">You are going to delete this book.</div>
				<div class="panel-body">
					<div class="cover col-sm-2">
						<img alt="" style="max-height: 90%; max-width: 90%;"
							src="https://cdn1.iconfinder.com/data/icons/outdated/128/icon_Book.png">
					</div>
					<div class="col-sm-10">
						<div class="title">${book.getTitle()}</div>
						<div class="author">Author - ${book.getAuthor()}</div>
						<p class="description">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit. Donec sed bibendum purus, quis gravida tellus.
							Praesent pharetra ante ipsum. Vestibulum ultricies augue ut sem
							tristique facilisis. Donec vulputate dolor metus. Aliquam eu
							condimentum massa. In lobortis euismod libero, id rhoncus mauris
							lobortis a. ...</p>
					</div>
				</div>
				<div class="panel-footer">
					<div class="pull-right">
						<form:form class="form-inline" role="form" action="${baseURL}/book/deleteBook" method="POST" commandName="book">
						
						  <div class="form-group">
						    <label for="exampleInputEmail2">Are you sure you want to delete this book ?</label>
						    <input type="hidden" id="bookId" name="id" value="${book.getBookId()}">
						  </div>
						  <button type="submit" class="btn btn-danger btn-sm">Confirm Delete</button>
						</form:form>
					</div>
					<a href="${baseURL}/book/edit/${book.getBookId()}" class="btn btn-default btn-sm">Cancel</a>
				</div>
			</div>
			

		</div>

    </jsp:body>
</layout:mainLayout>
