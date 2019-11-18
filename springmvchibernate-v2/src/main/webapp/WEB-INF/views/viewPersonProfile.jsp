<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Student Profile Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>


<h3>Student Course Schedule</h3>
<table class="tg">
	<tr>
		<th width="80">Student ID</th>
		<th width="120">Student Name</th>
		<th width="120">Student Email</th>
		 <th width="120">Course ID</th>
		
		<th width="60">Edit</th>
		<!-- <th width="60">Delete</th> -->
	</tr>
	
		<tr>
			<td>${person.student_id}</td>
			<td>${person.student_name}</td>
			<td>${person.student_email}</td>
			 <td>${person.course_id}</td> 
			<td><a href="<c:url value='/edit/${person.student_id}' />" >Edit</a></td>
			<%-- <td><a href="<c:url value='/remove/${person.student_id}' />" >Delete</a></td>
 --%>		</tr>
	
	</table>

</body>
</html>
