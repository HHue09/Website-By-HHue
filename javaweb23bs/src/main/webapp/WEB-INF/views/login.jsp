<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${base}/css/login-main.css" rel="stylesheet" />
</head>
<body>
    <img src="${base }/img/images/nen-login.png" />
    <section>
        <form method="POST" action="${base }/login_processing_url">
        
            <div class="container">
                <div class="form_content">
                    <h2>What is Lorem Ipsum</h2>
                </div>
                <div class="login_form">
                    <h1>Sign In</h1>
                    <form action="">
                        <input type="text" name="username" required="" placeholder="Username">
                        <input type="password" name="password" required="" placeholder="Password">
                        <button type="submit">Login</button>
                    </form>
                    <a href="#">Forget Password</a>
                </div>
            </div>
        </form>
    </section>
            <!-- JS -->
        <jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
</body>
</html>