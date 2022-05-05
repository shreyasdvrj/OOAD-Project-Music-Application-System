<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h3>Spring MVC user registration and login example using JdbcTemplate + MySQL</h3>

	<form action="login" method="post">
		<pre>
		 <strong>Login Here | <a href="registration.jsp">Click here to Register</a></strong>
		
		User Id: <input type="text" name="userId" />
	
		Password: <input type="password" name="password" />

		<input type="submit" value="Login" />
		</pre>
	</form>
</body>
</html>