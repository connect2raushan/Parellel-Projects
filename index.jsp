<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="save.html" method="post" modelAttribute="employee">
First Name: <form:input path="firstName" required="true"/>
Last Name: <form:input path="lastName" required="true"/>
Designation: <form:select path="designation" required="true">
	<form:option value="">Please select Designation</form:option>
	<form:options items="${designations}"/>
</form:select>
Salary: <form:input path="salary" required="true"/>
<input type="submit" value="Add Employee">

</form:form>

<c:if test="${param.message ne null}">
			<div>
				${param.message}
			</div>
		</c:if>
		
		<h3>Current List of Employees:</h3>
		<c:if test="${empList ne null}">
			<table>
				<tr>
					<th>#</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Designation</th>
					<th>Salary</th>
				</tr>
				<c:forEach items="${empList}" var="employee">
					<tr>
						<th>${employee.employeeId}</th>
						<th>${employee.firstName}</th>
						<th>${employee.lastName}</th>
						<th>${employee.designation}</th>
						<th>${employee.salary}</th>
					</tr>
				</c:forEach>
			</table>
		</c:if>

</body>
</html>