<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Person Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<!-- <h1>
	Add a Person
</h1> -->

<c:url var="addAction" value="person/add" ></c:url>

<form:form action="${addAction}" commandName="person">
<table>
<%-- 	<c:if test="${!empty person.student_name}">
	<tr>
		<td>
			<form:label path="student_id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="student_id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="student_id" />
		</td> 
	</tr>
	</c:if> --%>
	<tr>
		<td>
			<form:label path="student_name">
				<spring:message text="student_name"/>
			</form:label>
		</td>
		<td>
			<form:input path="student_name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="student_id">
				<spring:message text="student_id"/>
			</form:label>
		</td>
		<td>
			<form:input path="student_id" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="student_email">
				<spring:message text="student_email"/>
			</form:label>
		</td>
		<td>
			<form:input path="student_email" />
		</td>
	</tr>
		<tr>
		<td>
			<form:label path="course_id">
				<spring:message text="course_id"/>
			</form:label>
		</td>
		<td>
			<form:input path="course_id" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty student_id}">
				<input type="submit"
					value="<spring:message text="Edit Person"/>" />
			</c:if>
			<c:if test="${empty student_id}">
				<input type="submit"
					value="<spring:message text="Add Person"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Persons List</h3>
<c:if test="${!empty listPersons}">
	<table class="tg">
	<tr>
		<th width="80">Student ID</th>
		<th width="120">Student Name</th>
		<th width="120">Student Email</th>
		 <th width="120">Course ID</th>
		
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPersons}" var="person">
		<tr>
			<td>${person.student_id}</td>
			<td>${person.student_name}</td>
			<td>${person.student_email}</td>
			 <td>${person.course_id}</td> 
			<td><a href="<c:url value='/edit/${person.student_id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${person.student_id}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
