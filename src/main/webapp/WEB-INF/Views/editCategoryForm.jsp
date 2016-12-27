<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Category Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body background="<c:url value="/resources/images/car16.jpg" />">
	<center>
	<h1>Edit Category</h1>
	<c:url value="/admin/category/editCategory" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editCategoryObj">
		<table>
		<tr>
			<td><form:label path="Cid">ID</form:label></td>
			<td><form:input path="Cid" disabled="true"/>
			<form:hidden path="Cid" /></td>
        </tr>
        <tr>
        <td><form:label path="categoryName">Name</form:label>  </td>
        <td><form:input path="categoryName"></form:input></td>
	    </tr>
	     
	     
	    <tr>
	    <td colspan="2"><input type="submit" value="EditCategory"></td>
	    </tr>
		</table>
	</form:form>
	</center>
</body>
</html>