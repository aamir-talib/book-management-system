<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@taglib prefix="layout" tagdir="/WEB-INF/tags"%>

<layout:mainLayout>
	<jsp:body>
		
		<ol class="breadcrumb">
			<li><a href="${baseURL}"><span
					class="glyphicon glyphicon-home"></span> Home</a></li>
			<li class="active"><span class="glyphicon glyphicon-book"></span>
				Books</li>
		</ol>
		
		<c:if test="${bookList.size() < 1}">
			<div class="jumbotron">
				<div class="container">
					<h1><span class="glyphicon glyphicon-flash"></span> OOPS! <br/><small>No book found in application</small></h1>
					<p class="lead">
						To manage the books please create at lease one book.
					</p>
					<p class="lead">
						<a class="btn btn-success btn-lg" role="button" href="${baseURL}/book/create">
							<span class="glyphicon glyphicon-plus"></span>
							Create New Book
						</a>
					</p>
				</div>
			</div>
		</c:if>
		<c:if test="${bookList.size() > 0}">
			<div class="panel panel-default">
				<div class="panel-heading">
					<span class="glyphicon glyphicon-filter"></span> Search
				</div>
				<div class="panel-body">
					<form class="form-inline" role="form">
						<div class="form-group">
							<label class="sr-only" for="title">Title</label> <select
								id="subject" class="form-control">
								<option value="">-- All Subjects --</option>
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
						<div class="form-group">
							<label class="sr-only" for="title">Title</label> <input
								type="text" class="form-control" id="title"
								placeholder="Filter by Title">
						</div>
						<div class="form-group">
							<label class="sr-only" for="author">Author</label> <input
								type="text" class="form-control" id="author"
								placeholder="Filter by Author">
						</div>
						<button type="submit" class="btn btn-default pull-right">
							<span class="glyphicon glyphicon-search"></span> Search
						</button>
					</form>
				</div>
			</div>
			
			<div class="panel">
				<div class="panel-body">
					Result is filtered from <span class="label label-success">Lorem dolor</span>
					, title containing <span class="label label-success">Ipsum dolor</span>
					and author containing <span class="label label-success">Lorem ipsum</span>
				</div> 
			</div>
	
			<div class="listed-books">
			
				<c:forEach items="${bookList}" var="book">
				
					<div class="panel listed-book-item hover">
						<div class="panel-body">
							<div class="cover col-sm-2">
								<img alt="" style="max-height: 90%; max-width: 90%;"
									src="https://cdn1.iconfinder.com/data/icons/outdated/128/icon_Book.png">
							</div>
							<div class="col-sm-10">
								<div class="title">${book.getTitle()}</div>
								<div class="author">Author - ${book.getAuthor()}</div>
								<p class="description">${book.getDescription()}</p>
								<a href="${baseURL}/book/${book.getBookId()}" class="btn btn-default btn-sm">View Detail</a>
							</div>
						</div>
					</div>
				</c:forEach>
	
			</div>
		</c:if>

    </jsp:body>
</layout:mainLayout>
