<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trapezoid</title>
</head>
<body>

	<h1>Welcome</h1>

	<p>Hello!
	<p>This is a red Trapezoid
	<jsp:include page='InsertShapes.jsp'>
	    <jsp:param name="shapeName" value="<%=this.getClass().getSimpleName().replaceFirst(\"_jsp\", \"\")%>" />
	</jsp:include>
</body>
</html>