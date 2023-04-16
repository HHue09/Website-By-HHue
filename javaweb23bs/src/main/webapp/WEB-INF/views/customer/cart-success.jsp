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
    <title>Cart-Success</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="${base}/css/main.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <%-- <link href="${base}/css/cart-success-main.css" rel="stylesheet" /> --%>
<body>

		<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>

    	<jsp:include page="/WEB-INF/views/customer/layout/menu.jsp"></jsp:include>
		
        <div class="box">
            <img style="margin-left: 500px;" src="https://i.pinimg.com/564x/45/52/5c/45525c5535a67bdb99edbfd3f609997c.jpg" alt="">
        </div>
    
    	<!-- JS -->
        <jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
</body>
</html>
