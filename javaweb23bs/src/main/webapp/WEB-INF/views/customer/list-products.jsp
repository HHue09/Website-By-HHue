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
    <title>Sản phẩm</title> 
    
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='${base}/css/bootstrap.min.css'>
    <link href="${base}/css/main.css" rel="stylesheet" />
    <link href="${base}/css/footer.css" rel="stylesheet" />
    <!-- Paging -->
	<link href="${base}/css/simplePagination.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    
	 <!-- Core theme CSS (includes Bootstrap)-->
        <jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>
	
</head>
<body>
    <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>

    <jsp:include page="/WEB-INF/views/customer/layout/menu.jsp"></jsp:include>

    <div class="container">
        <div class="content" style="background-image: url(${base}/img/images/nha1.png);">
            <h1 class="title">Your morning Escape with Flair</h1>
            <p class="desc">Donec vitae saplen ut libeto venenatis faucibus.</p>
            </div>
            <form action="${base }/list" method="get">

            <div class="container">
                <!-- <div class="row mt-1">
                    <div class="col-3 d-lg-block d-none">
                        <div class="card">
                        	<input id="keyword" name="keyword" type="text" placeholder="Từ khóa tìm kiếm" autocomplete="off">
                            <button type="submit" value="Search" class="btn-search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                            <div class="card-header font-weight-bold text-uppercase">
                                List Products
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                	Sandwidth
                                </li>
                                <li class="list-group-item">Croissant</li>
                                <li class="list-group-item">Pain aux chocolate</li>
                              </ul>
                        </div>
                    </div>  -->   
                    
                    <div class="sal">
						<input id="page" name="page" class="" value="${productSearch.page }">
                        <div class="list-menu">
                            <label class="text-label" for="list-menu">List Menu: </label>
                            <select name="categoryId" id="categoryId">
                                <option value="0">All</option>
                                <c:forEach items="${categories}" var="category">
										<option value="${category.id }">${category.name }</option>
								</c:forEach>
                            </select>
                        </div>

                        <div class="search">
                            <input id="keyword" name="keyword" type="text" placeholder="Từ khóa tìm kiếm" autocomplete="off">
                            <button type="submit" id="btnSearch" name="btnSearch" value="Search" class="btn-search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                            </button>
                        </div>
                    </div>
                    
                    
                    <table>
                    <div class="col-12">
                        <div class="row">
                        <c:forEach var="product" items="${products.data }">
                            <div class="col-md-6 col-xl-3 mb-3">
                                <div class="card">
                                    <a href="">
                                    <img class="card-img-top" src="${base }/upload/${product.avatar}">
                                    <div class="card-body">
                                      <h5 class="card-title">
                                      <a href="${base }/product/detail/${product.seo}">
	                                    		${product.title }
	                                  </a>
                                      </h5>
                                      <p class="card-text">sandwiches : roast pork,roast chicken,eggs,vegetarian</p>
                                      <fmt:setLocale value="vi_VN" scope="session" />
										<span class="text-muted">
	                                    	<fmt:formatNumber value="${product.price}" type="currency"/>
                                    	</span>
	                                    <%-- <fmt:formatNumber value="${product.priceSale}" type="currency"/> --%>                      
                                      <%-- <a href="#" class="btn btn-primary" onclick="AddToCart('${base  }' , ${product.id }, 1)">
									  <i class="fa-solid fa-check"></i>                                      
									</a> --%>
									<a href="#" class="btn2 btn-primary2"onclick="AddToCart('${base  }' , ${product.id }, 1)"><i class="fa-solid fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
    
                            <%-- <div class="col-md-6 col-xl-4 mb-3">
                                <div class="card">
                                    <a href="">
                                    <img class="card-img-top" src="${pageContext.servletContext.contextPath}/img/images/banh2.jpg" alt="Card image cap">
                                </a>
                                    <div class="card-body">
                                      <h5 class="card-title">BAGES</h5>
                                      <p class="card-text">sandwiches : roast pork , bbq , roast chicken , eggs , vegetarian</p>
                                      <a href="#" class="btn btn-primary">See-more</a>
                                      <a href="#" class="btn btn-primary"><i class="fa-solid fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
    
                            <div class="col-md-6 col-xl-4 mb-3">
                                <div class="card">
                                    <a href="">
                                    <img class="card-img-top" src="${pageContext.servletContext.contextPath}/img/images/banh3.jpg" alt="Card image cap">
                                </a>
                                    <div class="card-body">
                                      <h5 class="card-title">DIET</h5>
                                      <p class="card-text">sandwiches : roast pork , bbq , roast chicken , eggs , vegetarian</p>
                                      <a href="#" class="btn btn-primary">See-more</a>
                                      <a href="#" class="btn btn-primary"><i class="fa-solid fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4 mb-3">
                                <div class="card">
                                    <a href="">
                                    <img class="card-img-top" src="${pageContext.servletContext.contextPath}/img/images/banh4.jpg" alt="Card image cap">
                                </a>
                                    <div class="card-body">
                                      <h5 class="card-title">CUPCAKE</h5>
                                      <p class="card-text">sandwiches : roast pork , bbq , roast chicken , eggs , vegetarian</p>
                                      <a href="#" class="btn btn-primary">See-more</a>
                                      <a href="#" class="btn btn-primary"><i class="fa-solid fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4 mb-3">
                                <div class="card">
                                    <a href="">
                                    <img class="card-img-top" src="${pageContext.servletContext.contextPath}/img/images/banh5.jpg" alt="Card image cap">
                                </a>
                                    <div class="card-body">
                                      <h5 class="card-title">LOAF CAKE</h5>
                                      <p class="card-text">sandwiches : roast pork , bbq , roast chicken , eggs , vegetarian</p>
                                      <a href="#" class="btn btn-primary">See-more</a>
                                      <a href="#" class="btn btn-primary"><i class="fa-solid fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6 col-xl-4 mb-3">
                                <div class="card">
                                    <a href="">
                                    <img class="card-img-top" src="${pageContext.servletContext.contextPath}/img/images/banh6.jpg" alt="Card image cap">
                                </a>
                                    <div class="card-body">
                                      <h5 class="card-title">BREAK</h5>
                                      <p class="card-text">sandwiches : roast pork , bbq , roast chicken , eggs , vegetarian</p>
                                      <a href="#" class="btn btn-primary">See-more</a>
                                      <a href="#" class="btn btn-primary"><i class="fa-solid fa-plus"></i></a>
                                    </div>
                                </div>
                            </div> --%>
                            </div>
                            
                        <div class="row">
							<div class="col-12 d-flex justify-content-center">
								<div id="paging"></div>
							</div>
						</div>
						
						
                        </div>
                     </table>
                </div>
            </div>
         </form>
      </main>
    
    	
    <jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>

    
    	<%-- <script src="${base}/jquery-3.6.0.min.js"></script>
        <script src="${base}/js/jquery-3.2.1.slim.min.js"></script>
        <script src="${pageContext.servletContext.contextPath}/js/popper.min.js"></script>
        <script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
        <script src="${base}/js/scripts.js"></script> --%>
        
        <!-- JS -->
        <jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>

        
        <script type="text/javascript">
			$( document ).ready(function() {
				// đặt giá trị của category ứng với điều kiện search trước đó
				$("#categoryId").val(${productSearch.categoryId});				
				
				$("#paging").pagination({
					currentPage: ${products.currentPage}, 	//trang hiện tại
			        items: ${products.totalItems},			//tổng số sản phẩm
			        itemsOnPage: ${products.sizeOfPage}, 	//số sản phẩm trên 1 trang
			        cssStyle: 'compact-theme',
			        onPageClick: function(pageNumber, event) {
			        	$('#page').val(pageNumber);
			        	$('#btnSearch').trigger('click');
					},
			    });
			});
		</script>

</body>
</html>