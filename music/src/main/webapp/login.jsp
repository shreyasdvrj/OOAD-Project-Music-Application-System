<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);
.login-page {
    width: 360px;
    padding: 8% 0 0;
    margin: auto;
}

.form {
    position: relative;
    z-index: 1;
    background: rgb(51, 62, 102);
    max-width: 360px;
    margin: 0 auto 100px;
    padding: 45px;
    text-align: center;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

.form input {
    font-family: "Roboto", sans-serif;
    outline: 0;
    background: #f2f2f2;
    width: 100%;
    border: 0;
    margin: 0 0 15px;
    padding: 15px;
    box-sizing: border-box;
    font-size: 14px;
}

.form button {
    font-family: "Roboto", sans-serif;
    text-transform: uppercase;
    outline: 0;
    background: rgb(100, 71, 110);
    width: 100%;
    border: 0;
    padding: 15px;
    color: #FFFFFF;
    font-size: 14px;
    -webkit-transition: all 0.3 ease;
    transition: all 0.3 ease;
    cursor: pointer;
}

.form button:hover,
.form button:active,
.form button:focus {
    background: rgb(125, 101, 133);
}

.form .message {
    margin: 15px 0 0;
    color: rgb(255, 255, 255);
    font-size: 12px;
}

.form .message a {
    color: #87b1f0;
    text-decoration: none;
}

.container {
    position: relative;
    z-index: 1;
    max-width: 300px;
    margin: 0 auto;
}

.container:before,
.container:after {
    content: "";
    display: block;
    clear: both;
}

.container .info {
    margin: 50px auto;
    text-align: center;
}

.container .info h1 {
    margin: 0 0 15px;
    padding: 0;
    font-size: 36px;
    font-weight: 300;
    color: #1a1a1a;
}

.container .info span {
    color: #ca2564a9;
    font-size: 12px;
}

.container .info span a {
    color: #000000;
    text-decoration: none;
}

.container .info span .fa {
    color: #EF3B3A;
}

body {
    background: #ffffff;
    /* fallback for old browsers */
    font-family: "Roboto", sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
</style>
</head>
<body>
    <a href="" target="_blank"><img id="logo" src="templates/img/logo.png" alt="logo" /></a>
    <div class="login-page">
        <h1>{{t_msg}}</h1>
        <div class="form">

            <form class="login-form" action="/loginResult" method="post">
                <input type="text" placeholder="Username" name="username" />
                <input type="password" placeholder="Password" name="password" />
                <button type='submit'>login</button>
                <p class="message">Not registered? <a href="registration.jsp">Create an account</a></p>
            </form>
        </div>
    </div>
</body>
</html>