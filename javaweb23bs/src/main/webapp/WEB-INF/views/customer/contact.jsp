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
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Form Contact</title>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="${base}/css/contact-style.css" rel="stylesheet" />
    <link href="${base}/css/main.css" rel="stylesheet" />
    <link href="${base}/css/footer.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    
</head>
<body>

    <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>

    <jsp:include page="/WEB-INF/views/customer/layout/menu.jsp"></jsp:include>

        <div class="center">
            <div class="signup">
                <h1 class="signup-heading">Contact us</h1>
                <sf:form modelAttribute="contactDTO" action="${base }/contact-post-using-spring-form" method="post">
                <label for="firstname" class="signup-label">Fist name</label>
                <sf:input path="firstName" name="firstName" id="firstName" class="signup-input" placeholder="Eg: John"></sf:input>
                <label for="lastname" class="signup-label">Last name</label>
                <sf:input path="lastName" name="lastName" id="lastName" class="signup-input" placeholder="Eg: Doe"></sf:input>
                <label for="email" class="signup-label">Email</label>
                <sf:input path="email" name="email" id="idEmail" class="signup-input" placeholder="Eg: abc@gmail.com"></sf:input>
                <label for="message" class="signup-label">Message</label>
                <sf:textarea path="message" name="message" id="idMessage" class="signup-input" placeholder="Eg: Hello, I want to order cake"></sf:textarea>

                <button type="submit" class="signup-submit">Send now</button>
                </sf:form>
                <p class="signup-already">
                    <span>Hotline: 0946630999</span>
                </p>
            </div>       
        </div>
    
    	            <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
    	
    <!-- JS -->
        <jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>

</body>
</html>