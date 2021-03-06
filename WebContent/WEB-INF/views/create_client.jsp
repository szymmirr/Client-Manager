<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>New client</title>
</head>

<div class="row" id="formEntry">
	<div
		class="col-lg-4 col-md-4 col-sm-4 container justify-content-center"
		id="divi">
		<h2>New client</h2>
		<form:form action="save" method="post" modelAttribute="client">
			<div class="mb-3 input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">First name:</span>
				</div>
				<form:input path="first_name" type="text"
					class="form-control col-sm-10" placeholder="Enter first name"
					aria-label="Enter first name" aria-describedby="basic-addon2" />
			</div>
			<div class="mb-3 input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">Last name:</span>
				</div>
				<form:input path="last_name" type="text"
					class="form-control col-sm-10" placeholder="Enter last name"
					aria-label="Enter last name" aria-describedby="basic-addon2" />
			</div>
			<div class="mb-3 input-group">
				<div class="input-group-prepend">
					<span class="input-group-text">Passport number:</span>
				</div>
				<form:input path="passport_number" type="text"
					class="form-control col-sm-10" placeholder="Enter passport number"
					aria-label="Enter passport number" aria-describedby="basic-addon2" />
			</div>
			<input type="submit" value="Submit">
			<div class="form-group"></div>
		</form:form>
	</div>
</div>
</body>
</html>