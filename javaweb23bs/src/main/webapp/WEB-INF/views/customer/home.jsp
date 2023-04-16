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
    <title>Home Bakery</title>
    
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link href="${base}/css/footer.css" rel="stylesheet" />
    <link href="${base}/css/home-main.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body background="${base}/img/images/nen1.png">
    <header>
        <div class="container">
            <div class="content_header">
                <div class="logo">
                  <a href="${base }/home" >
                     	<img src="${base}/img/images/logo.png" />
                     </a>
                </div>
                <div class="header_right">
                    <div class="right_top">
                        <ul>
                            <li>
                                <a class="login" href="${base }/login">Login</a>
                                <a class="" href=" ">Welcome(${userLogined.email })</a>
                            </li>
                            <li>
                                <a class="" href="${base }/logout">Logout</a>
                            </li>
                            
                            <a id="btn-cart" a href="">
                                <span id="number_product">0</span>
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span class="title_card">Cart</span>
                            </a>    
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>

    < <nav>
        <div class="container">
            <ul class="menu">
                <li>
                    <a class="active" href="${base }/list">Menu</a>
                </li>
                <li>
                    <a href="${base }/story">Our Story</a>
                </li>
                <li>
                    <a href="${base }/news">News</a>
                </li>
                <li>
                    <a href="${base }/contact">Contact</a>
                </li>
            </ul>
        </div>
    </nav>

    <main>
        <div class="shadow" style="background-image: url(${base }/img/images/shadow.png)">
            <div class="content">
                <h1 class="title">Pastry With Love</h1>
                <img src="${base }/img/images/duong ke.png" />
            </div>
            <div class="content2">
                <h2 class="title2">
                    We're bringing you fresh ingredients every
                </h2>
            </div>
            <div class="content3">
                <h2 class="title3">day in ways you can't resist</h2>
            </div>
    
            <div class="block">
                <div class="block-title">
                    <a href="${base }/list">Our Menu</a>
                </div>
            </div>
        </div>

    </main>
    
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
    
</body>
</html>