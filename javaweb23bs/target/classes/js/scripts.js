/*!
* Start Bootstrap - Shop Homepage v5.0.2 (https://startbootstrap.com/template/shop-homepage)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-homepage/blob/master/LICENSE)
*/

// This file is intentionally blank
// Use this file to add JavaScript to your project
function AddToCart(_baseUrl, _productId, _quanlity) {
	/*alert("Bạn chọn mua sản phẩm có ID = " + _productId + " với số lượng là " + _quanlity);*/
	// tạo javascript object để binding với data bên phía controller  
	var requestBody = {
		productId: _productId,
		quanlity: _quanlity
	};
	
	// $ === jQuery
	// json == javascript object
	jQuery.ajax({
		url: _baseUrl + "/ajax/addToCart", 	   //->request mapping định nghĩa bên controller
		type: "post",					   //-> method type của Request Mapping	
		contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
		data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json
	
		dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
		success: function(jsonResult) {    // gọi ajax thành công
			alert(jsonResult.code + " - " + jsonResult.status + "Số lượng trong giỏ hàng là: " + jsonResult.totalItems);
			
			$("#number_product").html(jsonResult.totalItems);
		},
		error: function(jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
			alert("error");
		}
	});
}

function updateQuanlityCart(_baseUrl, _productId, _quanlity) {
// Xét điều kiện nếu quantity = 0 và nếu quantity - 1 thì return để k gọi đến controller
		let prevQuanlity = ($(`#quanlity${_productId }`).text());//lấy text (ở đây là quanlity) 
		if(prevQuanlity == 1 && _quanlity == -1) return;
		// tạo javascript object để binding với data bên phía controller  
		var requestBody = {
			productId: _productId,
			quanlity: _quanlity
		};
		// $ === jQuery
		// json == javascript object
		jQuery.ajax({
			url: _baseUrl + "/ajax/changeQuanlity", 	   //->request mapping định nghĩa bên controller
			type: "post",					   //-> method type của Request Mapping	
			contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
			data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json

			dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
			success: function (jsonResult) {    // gọi ajax thành công
			
				$("#number_product").html(jsonResult.totalItems);
				location.reload();
		//		console.log($(`#quanlity${_productId }`));
			},
			error: function (jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
				alert("error");
			}
		});
	}
function deleteItem(_baseUrl, _productId) {

		// tạo javascript object để binding với data bên phía controller  
		var requestBody = {
			productId: _productId
		};
		// $ === jQuery
		// json == javascript object
		jQuery.ajax({
			url: _baseUrl + "/ajax/deleteItems", 	   //->request mapping định nghĩa bên controller
			type: "post",					   //-> method type của Request Mapping	
			contentType: "application/json",   //-> nội dung gửi lên dạng json <=> javascript object
			data: JSON.stringify(requestBody), //-> chuyển 1 javascript object thành string json

			dataType: "json", 				   // kiểu dữ liệu trả về từ Controller
			success: function (jsonResult) {    // gọi ajax thành công
            	location.reload();
            	$("#number_product").html(jsonResult.totalItems);
    		},
			error: function (jqXhr, textStatus, errorMessage) { // gọi ajax thất bại
				alert("error");
			}
			
		});
}
