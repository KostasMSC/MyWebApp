<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.time.LocalDateTime"%>
<!DOCTYPE html>
<html>
<head>
<title>Main page</title>
</head>
<body BGCOLOR="FFFFFF">
	<h1>Welcome</h1>

	<p>Hello World!
	<p>This is a sample jsp page.
	<p>
		Current time is
		<%=LocalDateTime.now()%>.
	<p>
	<p>
		Please contact us at <a href="mailto:sefremidis@athtech.gr">sefremidis@athtech.gr</a>.
	
	<p>
	<p>
		For more news please check <a href="https://edition.cnn.com">CNN
			News</a>.
	<p>
	<p>
	<center>
		<img src="flowers.jpg">
	</center>
	<p>
	<p>
	<h1>Available Geometric Shapes</h1>
	<ol>
        <li><a href="Circle.jsp">Circle</a></li>
        <li><a href="RightTriangle.jsp">Right Trianlge</a></li>
        <li><a href="RightRectangle.jsp">Right Rectangle</a></li>
        <li><a href="Trapeziod.jsp">Trapezoid</a></li>
        <li><a href="EquilateralTriangle.jsp">Equilateral Triangle</a></li>
        <li><a href="Square.jsp">Square<a></li>
        <li><a href="Pentagon.jsp">Pentagon</a></li>
        <li><a href="Hexagon.jsp">Hexagon</a></li>
    </ol>
</body>
</html>

