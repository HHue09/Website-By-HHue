<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<nav>
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
                <!-- <li>
                    <form id="form_search" method="GET" action="tim-kiem.php">
                        <input type="text" name="keywork" placeholder="Từ khóa tìm kiếm">
                        <button type="submit" class="btn-search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                </li> -->
            </ul>
        </div>
    </nav>