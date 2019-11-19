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
		.button_example {float: right}
	</style>
</head>
<body>

<a class="button_example" href="/SpringMVCHibernate/home"><font color="black">LogOut</font></a>
<h1>Student Profile</h1>

<table class="tg">
	<tr>
		<th width="80">Student ID</th>
		<th width="120">Student Name</th>
		<th width="120">Student Email</th>
		 <!-- <th width="120">Course ID</th> -->
		
		<th width="60">Edit</th>
		<!-- <th width="60">Delete</th> -->
	</tr>
	
		<tr>
			<td>${person.student_id}</td>
			<td>${person.student_name}</td>
			<td>${person.student_email}</td>
			 <%-- <td>${person.course_id}</td> --%> 
			<td><a href="<c:url value='/edit/${person.student_id}' />" >Edit</a></td>
			<%-- <td><a href="<c:url value='/remove/${person.student_id}' />" >Delete</a></td>
 --%>		</tr>
	
	
	
	</table>
	<br/><br/>
	<h1>Registered Courses</h1>
	<c:if test="${!empty listCourses}">
	<table class="tg">
	<tr>
		<th width="80">Course ID</th>
		<!-- <th width="120">Student Name</th>
		<th width="120">Student Email</th>
		 <th width="120">Course ID</th>
		
		<th width="60">Edit</th>
		<th width="60">Delete</th> -->
	</tr>
	<c:forEach items="${listCourses}" var="courses">
		<tr>
			<td>${courses.course_id}</td>
			<%-- <td>${person.student_name}</td>
			<td>${person.student_email}</td>
			 <td>${person.course_id}</td> 
			<td><a href="<c:url value='/edit/${person.student_id}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${person.student_id}' />" >Delete</a></td> --%>
		</tr>
	</c:forEach>
	</table>
</c:if>
	<br/><br/>
	
	
	
	
	<h1>List of Available Courses</h1>
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
	
	<br/><br/>
	<h1>Select Courses to register</h1>
	<form:form action="addCourse" commandName="courses">
	<select name="course_id">
	    <option value="CS651">CS651</option>
	    <option value="CS611">CS611</option>
	    <option value="CS621">CS621</option>
	    <option value="CS663">CS663</option>
	    <option value="CS671">CS671</option>
	    <option value="CS631">CS631</option>
	    <option value="CS623">CS623</option>
	</select>
	<input type='hidden' name='student_id' value=${person.student_id} />
	<input type="submit" value="<spring:message text="Add course"/>" />
	<input type="submit" value="<spring:message text="Remove course"/>" onclick="this.form.action='removeCourse';"/>
	</form:form>
	

</body>
</html>
