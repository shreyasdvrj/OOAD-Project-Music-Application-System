<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Spring MVC user registration and login example using JdbcTemplate + MySQL</h3>

	<form action="register" method="post">
		<pre>
	    <strong>Register Here | <a href="login.jsp">Click here to Login</a></strong>
		
		User Id: <input type="text" name="userId" />
		
		Password: <input type="password" name="password" />
	
		<input type="submit" value="Register" />
	</pre>
	</form>

	${msg}
</body>
</html>