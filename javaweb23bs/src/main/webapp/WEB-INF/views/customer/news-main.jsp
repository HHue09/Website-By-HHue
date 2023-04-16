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

        <div class="col-12 col-lg-12">
            <div class="row">
                <div class="col-md-6 col-xl-4 mb-3">
                    <div class="card">
                        <a href="">
                        <img class="card-img-top" src="https://www.tljus.com/wp-content/uploads/2022/04/M-day_PR-scaled.jpg" alt="Card image cap">
                    </a>
                        <div class="card-body">
                          <h5 class="card-title">Give thanks special menu</h5>
                          <p class="card-text">The 1st week of January in 2020 will be the Grand Opening week, and there will be many giveaways for the customers, so don’t miss out..</p>
                          <a href="${base }/detail-new" class="btn btn-primary">See-more</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 mb-3">
                    <div class="card">
                        <a href="">
                        <img class="card-img-top" src="https://www.tljus.com/wp-content/uploads/2021/08/Aug.-New-products-scaled.jpg" alt="Card image cap">
                    </a>
                        <div class="card-body">
                          <h5 class="card-title">New pastry of fall 2023</h5>
                          <p class="card-text">The 1st week of January in 2020 will be the Grand Opening week, and there will be many giveaways for the customers, so don’t miss out...</p>
                          <a href="#" class="btn btn-primary">See-more</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 mb-3">
                    <div class="card">
                        <a href="">
                        <img class="card-img-top" src="https://www.tljus.com/wp-content/uploads/2020/03/OR-grand-opening.png" alt="Card image cap">
                    </a>
                        <div class="card-body">
                          <h5 class="card-title">Grand opening at hillsboro</h5>
                          <p class="card-text">The 1st week of January in 2020 will be the Grand Opening week, and there will be many giveaways for the customers, so don’t miss out...</p>
                          <a href="${base }/detail-new2" class="btn btn-primary">See-more</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 mb-3">
                    <div class="card">
                        <a href="">
                        <img class="card-img-top" src="https://images.unsplash.com/photo-1579697096985-41fe1430e5df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJha2VyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60" alt="Card image cap">
                    </a>
                        <div class="card-body">
                          <h5 class="card-title">CUPCAKE</h5>
                          <p class="card-text">The 1st week of January in 2020 will be the Grand Opening week, and there will be many giveaways for the customers, so don’t miss out...</p>
                          <a href="#" class="btn btn-primary">See-more</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 mb-3">
                    <div class="card">
                        <a href="">
                        <img class="card-img-top" src="https://images.unsplash.com/photo-1473447547337-5770a453122d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="Card image cap">
                    </a>
                        <div class="card-body">
                          <h5 class="card-title">LOAF CAKE</h5>
                          <p class="card-text">The 1st week of January in 2020 will be the Grand Opening week, and there will be many giveaways for the customers, so don’t miss out...</p>
                          <a href="#" class="btn btn-primary">See-more</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-4 mb-3">
                    <div class="card">
                        <a href="">
                        <img class="card-img-top" src="https://images.unsplash.com/photo-1605522561233-768ad7a8fabf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60" alt="Card image cap">
                    </a>
                        <div class="card-body">
                          <h5 class="card-title">BREAK</h5>
                          <p class="card-text">The 1st week of January in 2020 will be the Grand Opening week, and there will be many giveaways for the customers, so don’t miss out...</p>
                          <a href="#" class="btn btn-primary">See-more</a>
                        </div>
                    </div>
                </div>

                </div>
            </div>

    </main>
</body>
</html>