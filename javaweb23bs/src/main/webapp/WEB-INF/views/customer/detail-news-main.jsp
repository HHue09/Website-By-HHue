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
    <title>News</title>
    
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    
    <link rel='stylesheet' href='${base}/css/bootstrap.min.css'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="${base}/css/main.css" rel="stylesheet" />
    <link href="${base}/css/news-style.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>
    <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>

    <jsp:include page="/WEB-INF/views/customer/layout/menu.jsp"></jsp:include>

    <main>
        <div class="content1">
            <div class="content-text">
                <h1>News</h1>
                <h3>Check out the latest news</h3>
                <h3>Hotline: 0946630999</h3>
            </div>  
        </div>

        <div class="img-new">
            <img class="" src="https://www.tljus.com/wp-content/uploads/2022/04/M-day_PR-scaled.jpg"/>
        </div>

        <div class="text-new">
            <p style="color: palevioletred;">ROSES FOR MOM</p>

            <p>Much in the same way you would bring your mom flowers on her <br>special day, gifting a selection from our ‘Roses for Mom’ collection is <br> a memorable and extra sweet way to show how much you care.</p>

            <p style="color: palevioletred;">Rosette Cake</p>

            <p>
                Light and fluffy mocha sponge cake topped with salted caramel and <br>coffee-infused whipped cream adorned with a sprinkle of chocolate<br> covered espresso beans and rosebuds
            </p>

            <p style="color: palevioletred;">Rosette Cake</p>

            <p>
                Light and fluffy mocha sponge cake topped with salted caramel and <br>coffee-infused whipped cream adorned with a sprinkle of chocolate<br> covered espresso beans and rosebuds
            </p>
        </div>

    </main>
</body>
</html>