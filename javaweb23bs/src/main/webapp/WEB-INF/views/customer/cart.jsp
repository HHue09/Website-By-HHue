<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<!--divinectorweb.com-->
<head>
    <meta charset="UTF-8">
    <title>Responsive Shopping Cart design</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${base}/css/cart-style.css" rel="stylesheet" />
	<link href="${base}/css/main.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>

    <jsp:include page="/WEB-INF/views/customer/layout/menu.jsp"></jsp:include>
	
    <div class="wrapper">
		<h1>Shopping Cart</h1>
		<div class="project">
			<div class="shop">
			<c:forEach items="${cart.cartItems }" var="ci">
				<div class="box">
					<img src="${base }/upload/${ci.productAvt}">
					<div class="content-cart">
						<h3>${ci.productName }</h3>
						<h4>Price: 
						<fmt:setLocale value="vi_VN"/>
							<strong><fmt:formatNumber value="${ci.priceUnit }" type="currency"/></strong>
						</h4>
						<p class="unit">Quantity:
							<button onclick="updateQuanlityCart('${base }', ${ci.productId}, -1)" value="-">-</button>
							<strong><span id="quanlity${ci.productId}">${ci.quanlity }</span></strong>
							<button onclick="updateQuanlityCart('${base }', ${ci.productId}, 1)" value="+">+</button>
						</p>
						<p class="btn-area"><a href="#" class="btn2" id="delete" onclick="deleteItem('${base }', ${ci.productId})"><i class="fa fa-trash"></i></a> Remove </p>
					</div>
				</div>
				</c:forEach>
			</div>
			
		<form action="" method="post">
			<div class="right-bar">
				<p><span>Subtotal</span> <span>0</span></p>
				<hr>
				<p><span>Tax (5%)</span> <span>0</span></p>
				<hr>
				<p><span>Shipping</span> <span>0</span></p>
				<hr>
				<p><span>Total</span> <span><fmt:formatNumber value="${tongGia}" type="currency" /></span></p>
				<button type="submit" class="check">Procceed to checkout</button>
			</div>
			
	<c:choose>	
		<c:when test="${isLogined }">	
			<div class="right-bar right-bar-2">
				<div class="signup">
					<h5 class="signup-heading">Thông tin khách hàng</h5>
					<label for="name" class="signup-label">Full Name</label>
					<input type="text" id="customerName" class="signup-input" name="customerName" value="${userLogined.username }" placeholder=" " required>
					<label for="email" class="signup-label">Email</label>
					<input type="text" id="customerEmail" class="signup-input" name="customerEmail" value="${userLogined.email }" placeholder=" " required>
					<label for="website" class="signup-label">Phone</label>
					<input type="text" id="customerPhone" class="signup-input" name="customerPhone" value="${userLogined.phone }" placeholder=" " required>
					<label for="website" class="signup-label">Address</label>
					<input type="text" id="customerAddress" class="signup-input" name="customerAddress" value="${userLogined.shippingAddress }" placeholder=" " required>
				</div>
			</div>
		</c:when>	
		<c:otherwise>	
			<div class="right-bar right-bar-2">
				<div class="signup">
					<h5 class="signup-heading">Thông tin khách hàng</h5>
					<label for="name" class="signup-label">Full Name</label>
					<input type="text" id="customerName" class="signup-input" name="customerName" placeholder=" " required>
					<label for="email" class="signup-label">Email</label>
					<input type="text" id="customerEmail" class="signup-input" name="customerEmail" placeholder=" " required>
					<label for="website" class="signup-label">Phone</label>
					<input type="text" id="customerPhone" class="signup-input" name="customerPhone" placeholder=" " required>
					<label for="website" class="signup-label">Address</label>
					<input type="text" id="customerAddress" class="signup-input" name="customerAddress" placeholder=" " required>
				</div>
			</div>
			</c:otherwise>
		</c:choose>
		</form>
		
		</div>
	</div>
	<!-- JS -->
        <jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
        
        
</body>
</html>