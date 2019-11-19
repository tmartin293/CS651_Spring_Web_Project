<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Student Login Page</title>
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

<c:url var="validateAction" value="validate" ></c:url>
<form:form action="${validateAction}" modelAttribute="person">

 <label for="student_id"><b>Student Id</b></label>
    <input type="text" placeholder="Enter Student ID" name="student_id" required>
  <label for="student_name"><b>Student Name</b></label>
    <input type="text" placeholder="Enter Student name" name="student_name" required>
    <c:if test="${empty student_id}">
				<input type="submit"
					value="<spring:message text="Login"/>" />
			</c:if>
    </form:form>
    </body>
    </html>
    