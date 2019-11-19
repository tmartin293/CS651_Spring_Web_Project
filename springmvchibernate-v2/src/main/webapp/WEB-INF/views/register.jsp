<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Student Registration Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
		.button_example {float: right}
	</style>
</head>
<body>
<a class="button_example" href="/SpringMVCHibernate/home"><font color="black">LogOut</font></a>
<!-- <h1>
	Add a Person
</h1> -->

<c:url var="addAction" value="/displayregistration" ></c:url>

<form:form action="${addAction}" modelAttribute="person">
<table>

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
		<td colspan="2">
			<c:if test="${!empty student_id}">
				<input type="submit"
					value="<spring:message text="Edit Student"/>" />
			</c:if>
			<c:if test="${empty student_id}">
				<input type="submit"
					value="<spring:message text="Add Student"/>" />
			</c:if>
		</td>
	</tr>
</table>
<br/><br/><br/><br/>
<table class="tg">
	<tr>
		<th width="80">Course ID</th>
		<th width="120">Course Name</th>
		<th width="120">Professor Name</th>
		 <th width="120">Schedule time</th>
		
		
		<!-- <th width="60">Delete</th> -->
	</tr>
	
		<tr>
			<td>CS651</td>
			<td>Web Systems</td>
			<td>Lynne Grewe</td>
			 <td>T-TH 11-12:15</td> 
			<%-- <td><a href="<c:url value='/edit/${person.student_id}' />" >Edit</a></td> --%>
			<%-- <td><a href="<c:url value='/remove/${person.student_id}' />" >Delete</a></td>
 --%>		</tr>
	<tr>
			<td>CS611</td>
			<td>Theory Of Computation</td>
			<td>Eddie</td>
			 <td>T-TH 1-2:15</td> 
				</tr>
 <tr>
			<td>CS621</td>
			<td>Operating system design</td>
			<td>Farzan</td>
			 <td>T-TH 5-6:15</td> 
			</tr>
              <td>CS663</td>
			<td>Computer Vision</td>
			<td>Lynne Grewe</td>
			 <td>M-We 8-9:15</td> 
				</tr><td>CS671</td>
			<td>Cybersecurity</td>
			<td>Greg</td>
			 <td>F 5:7-30</td> 
			 
			</tr>
			<tr>
			<td>CS631</td>
			<td>Database System</td>
			<td>David</td>
			 <td>M-We 2-3:15</td> 
			</tr>
			<tr>
			<td>CS623</td>
			<td>Cloud Computing</td>
			<td>Staff</td>
			 <td>T-TH 7-8:30</td> 
			</tr> 
	</table>		
</form:form>