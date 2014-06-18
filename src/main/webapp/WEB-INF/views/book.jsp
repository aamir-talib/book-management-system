<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<title>Book Management</title>
</head>
<body>
	<h1>Books Data</h1>
	<form:form action="doAction" method="POST" commandName="book">
		<table>
			<tr>
				<td>Book ID</td>
				<td><form:input path="bookId" /></td>
			</tr>
			<tr>
				<td>Title</td>
				<td><form:input path="title" /></td>
			</tr>
			<tr>
				<td>Author</td>
				<td><form:input path="author" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="action" value="Add" />
					<input type="submit" name="action" value="Edit" />
					<input type="submit" name="action" value="Delete" />
					<input type="submit" name="action" value="Search" />
				</td>
			</tr>
		</table>
	</form:form>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Author</th>
		</tr>
		<c:forEach items="${bookList}" var="book">
			<tr>
				<td>${book.bookId}</td>
				<td>${book.title}</td>
				<td>${book.author}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>