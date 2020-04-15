<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.time.LocalDateTime"%>
<!DOCTYPE html>
<html>
<head>
<title>CCP6418</title>
</head>
<body bgcolor="FEF9E7">

<%
Integer i = (Integer)application.getAttribute("count");

if (i==null || i==0) {
	i=1;
} else {
	i++;
}

out.println("Visited: " + i + " times!!");
application.setAttribute("count",i);

%>
    <p>
    <center>
		<img src="logo.jpg">
	</center>
	<p>
	<p>
	
	<font face="verdana" color="green">
	<h1>Welcome to CCP6418!</h1>
	<p>
	<p>
	<p>Today's topic: Geometric Shapes.
	<p>Check the following ones.
	<ol>
        <li><a href="Circle.jsp">Circle1</a></li>
        <li><a href="Ellipse.jsp">Ellipse</a></li>
        <li><a href="RightTriangle.jsp">Right Triangle</a></li>
        <li><a href="RightRectangle.jsp">Right Rectangle</a></li>
        <li><a href="IsoscelesTrapezoid.jsp">Isosceles Trapezoid</a></li>
        <li><a href="IsoscelesTriangle.jsp">Isosceles Triangle</a></li>
        <li><a href="EquilateralTriangle.jsp">Equilateral Triangle</a></li>
        <li><a href="Square.jsp">Square<a></li>
        <li><a href="Pentagon.jsp">Pentagon</a></li>
        <li><a href="Hexagon.jsp">Hexagon</a></li>
    </ol>
    <br>
    <%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("Welcome to SPlessons!!");
       hitsCount = 1;
    }else{
       /* return visit */
       out.println("Welcome back to SPlessons!!!!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
	%>
	<p>Total number of visits: <%= hitsCount%></p>
	<br>
	<br>
	<center>
		<font size="2">
		<p>&copy; AthTech, 2020, all rights reserved.
		<p>email: <a href="mailto:sefremidis@athtech.gr">sefremidis@athtech.gr</a>
		<p>URL: <a href="https://athtech.gr">www.athtech.gr</a>
		<p>Current time: <%=LocalDateTime.now()%>
		</p>
		</font>
	</center>
	</font>
</body>
</html>

