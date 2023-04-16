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

       <div class="img-new" style="margin-left: 150px;">
            <img class="" src="https://www.tljus.com/wp-content/uploads/2019/10/grand-opening-NJ.jpg"/>
        </div>

        <div class="text-new">
            <p style="color: rgb(34, 32, 33);">Get excited!</p>

            <p>TOUS les JOURS is coming to Cherry Hill, New Jersey!</p>

            <p style="color: rgb(34, 30, 31);">The 1st week of January in 2020 will be the Grand Opening week, and <br>there will be many giveaways for the customers, so don’t miss out.<br>
                Promo 1. Get a FREE branded umbrella when you purchase over $25<br>
                Promo 2. Get a FREE stainless tumbler when you purchase over $50</p>

            <p>
                There will be more sales and promotions at the store, visit NOW!
            </p>

            <p style="color: rgb(41, 38, 39);">Store Address: 826 Harronfield RD., Cherry Hill, NJ</p>

            
        </div>

    </main>
</body>
</html>