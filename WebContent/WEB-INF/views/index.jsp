<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="t"%>
<!DOCTYPE html>
<html>
<head>
<title>Client Manager</title>
<style>
table th, table td {
	padding: 5px;
}
</style>
</head>

<div align="center" class="table-responsive">
	<h1>Client Manager</h1>
	<table border="1" class="table w-auto table-striped">
		<tr>
			<td colspan="5"><a href="new" class="badge badge-dark">Add
					new client</a></td>
		</tr>
		<tr>
			<th>ID</th>
			<th>First name</th>
			<th>Last name</th>
			<th>Passport number</th>
			<th>Action</th>
		</tr>
		<t:forEach items="${listClients}" var="client">
			<tr>
				<td>${client.id}</td>
				<td>${client.first_name}</td>
				<td>${client.last_name}</td>
				<td>${client.passport_number}</td>
				<td><a href="edit?id=${client.id}" class="badge badge-dark">Edit</a>
					<a href="delete?id=${client.id}" class="badge badge-dark">Delete</a></td>
			</tr>
		</t:forEach>
	</table>
</div>
</body>
</html>
