<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="t"%>
<!DOCTYPE html>
<html>
<head>

<title>Clients Manager</title>
</head>

<div align="center" class="table-responsive">
	<h1>Clients Manager</h1>
	<form method="get" action="search" class="px-2 py-3">

		<div class="input-group col-md-4">

			<div class="input-group-append"></div>
		</div>
	</form>

	<table border="1" cellpadding="5" class="table w-auto table-striped">
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
		<t:forEach items="${listClients}" var="clients">
			<tr>
				<td>${clients.id}</td>
				<td>${clients.first_name}</td>
				<td>${clients.last_name}</td>
				<td>${clients.passport_number}</td>
				<td><a href="edit?id=${clients.id}" class="badge badge-dark">Edit</a>
					<a href="delete?id=${clients.id}" class="badge badge-dark">Delete</a></td>
			</tr>
		</t:forEach>
	</table>
</div>
</body>
</html>
