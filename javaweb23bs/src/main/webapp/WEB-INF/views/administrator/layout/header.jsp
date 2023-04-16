<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="border-end bg-white" id="sidebar-wrapper">
	<div class="sidebar-heading border-bottom bg-light"> <img src="${base}/img/images/logo.png"> </div>
	<div class="list-group list-group-flush">
		<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">  </a> 
		<a class="list-group-item list-group-item-action list-group-item-light p-3" href="${base }/admin/order"><i class="fa-solid fa-table-columns"></i> Order Status</a>
		<a class="list-group-item list-group-item-action list-group-item-light p-3" href="${base }/admin/product/list"><i class="fa-solid fa-table-columns"></i> Sản phẩm</a> 
		
		<c:if test="${isAdminSaleOrder }">
			<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!"><i class="fa-solid fa-table-columns"></i><h4>Đơn hàng</h4></a>	
		</c:if>
		<a class="list-group-item list-group-item-action list-group-item-light p-3" href="${base }/admin/contact"><i class="fa-solid fa-table-columns"></i>   Contact</a>
		<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Subcrible</a>
	</div>
</div>