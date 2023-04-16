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
    <title>Our Story</title>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="${base}/css/footer.css" rel="stylesheet" />
	<link href="${base}/css/main.css" rel="stylesheet" />
	<link href="${base}/css/story-main.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>

	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>

    <jsp:include page="/WEB-INF/views/customer/layout/menu.jsp"></jsp:include>

    <div class="cha">
        <div class="title-story">
            <div class="title1">
                <p class="Art"><b>Art of cakes</b>
                    <p class="create" style="color: #a47d5e;"><b>WE CREATE DELICIOUS MEMORIES</b></p>
                </p>
            </div>    
            <div class="title2">
                <h3>
                    Quisque rutrum. Aenean imperdiet. Etiam ultricies nisl vel augue.<br>
                    Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.<br>
                    Meacenas tempus, tellus eget condimentum rhoncus, sem quam<br>
                    semper libero, sit amet adipiscing sem neque sed.
                </h3>
            </div>
            <div class="title3">
                <h2> Chef Cook</h2>
                <img src="${base }/img/images/chef.png"/><br>
                <img src="${base }/img/images/unique.png"/>
            </div>
        </div>
        <div class="img-cake">
            <div class="hoa">
                <h2 class="text">TASTE SO <br> GOOD</h2>
                <img src="${base }/img/images/hoa.png"/>
            </div>
            <div class="img1">
                <img src="${base }/img/images/img1.png"/>
                <img src="${base }/img/images/img2.png"/>
            </div>
            <div class="img2">
                <img src="${base }/img/images/img3.png"/>
                <img src="${base }/img/images/img4.png"/>
            </div>
        </div>
    </div>
        
        <!-- JS -->
        <jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
        
            <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
        
</body>
</html>