<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "music";
String userid = "root";
String password = "united1878";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
	<title>Result</title>
	<style type="text/css">
		@import url('https://fonts.googleapis.com/css?family=Rubik:400,500&display=swap');

body {
  font-family: 'Rubik', sans-serif;
  font-weight: 300;
  line-height: 1.42em;
  color:#A7A1AE;
  background-color:#1F2739;
  text-align:center;
}

h1 {
  font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
}

h2 {
  font-size:1em; 
  font-weight: 300;
  text-align: center;
  display: block;
  line-height:1em;
  padding-bottom: 2em;
  color: #FB667A;
}

h2 a {
  font-weight: 700;
  text-transform: uppercase;
  color: #FB667A;
  text-decoration: none;
}

.blue { color: #185875; }
.yellow { color: #FFF842; }

.container th h1 {
	  font-weight: bold;
	  font-size: 1em;
  text-align: left;
  color: #4DC3FA;
}

.container td {
	  font-weight: normal;
	  font-size: 1em;
  -webkit-box-shadow: 0 2px 2px -2px #0E1119;
	   -moz-box-shadow: 0 2px 2px -2px #0E1119;
	        box-shadow: 0 2px 2px -2px #0E1119;
}

.container {
	  text-align: left;
	  overflow: hidden;
	  width: 80%;
	  margin: 0 auto;
  display: table;
  padding: 0 0 8em 0;
}

.container td, .container th {
	  padding-bottom: 2%;
	  padding-top: 2%;
  padding-left:2%;  
}

/* Background-color of the odd rows */
.container tr:nth-child(odd) {
	  background-color: #323C50;
}

/* Background-color of the even rows */
.container tr:nth-child(even) {
	  background-color: #2C3446;
}

.container th {
	  background-color: #1F2739;
}

.container td:first-child { color: #FB667A; }

button{
    padding: 12px 10px;
  border: 0;
  background: #185875; 
  border-radius: 3px;
  margin-top: 10px;
  color: #fff;
  letter-spacing: 1px;
  font-family: 'Rubik', sans-serif;
  cursor: pointer;
}


	</style>
</head>
<body>

<h1><span class="blue"></span>Podcasts<span class="blue"></span></h1>
<table class="container">
	<thead>
		<tr>
			<th><h1>ID</h1></th>
			<th><h1>Podcast</h1></th>
			<th><h1>Date</h1></th>
			<th><h1>Episodes</h1></th>
			<th><h1>Artist</h1></th>
		</tr>
	</thead>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from podcasts";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
</tbody>
<tr>
<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("episodes") %></td>
<td><%=resultSet.getString("artist") %></td>

</tr>
</tbody>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

<button type="button" onclick="window.location.href='index.jsp'">Add More</button>
</body>
</html>