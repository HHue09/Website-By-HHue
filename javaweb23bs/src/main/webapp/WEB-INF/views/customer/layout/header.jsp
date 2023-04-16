<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                            
                            <a id="btn-cart" a href="${base }/cart/checkout">
                                <span id="number_product">${TongSoLuongSanPhamTrongGioHang}</span>
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span class="title_card">Cart</span>
                            </a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>