<%@page import="kr.mr.model.VehicleDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/> --%>
<%@ include file="../inc/header.jsp" %>





<!-- CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/vehicle_rental.css" />


<main>
  <div class="container">
    <%-- <c:forEach var="catList" items="${catList}"> --%>
    <%-- <c:forEach var="vDto" items="${vehicleList}"> --%>
    <div class="grid second-nav">
      <div class="column-xs-12">
        <nav class="row">
			<h4 class="breadcrumb-item">${vDto.category_fk}</h4>
        </nav>
        
      </div>
    </div>
    <div class="grid product">
      <div class="column-xs-12 column-md-7">
        <div class="product-gallery">
          <div class="product-image">
            <img class="active" src="${ctx}/resources/file_upload/${vDto.fileName}">
          </div>
          <ul class="image-list">
            <li class="image-item"><img src="https://source.unsplash.com/W1yjvf5idqA"></li>
            <li class="image-item"><img src="https://source.unsplash.com/VgbUxvW3gS4"></li>
            <li class="image-item"><img src="https://source.unsplash.com/5WbYFH0kf_8"></li>
          </ul>
        </div>
      </div>
      
      <div class="column-xs-12 column-md-5">
        <h1>${vDto.company} ${vDto.cName}</h1>
        <h2>${vDto.price}만원</h2>
        <div class="description">
        <p>${vDto.contents}</p>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>reservePage.do
      	</div>
        <button class="add-to-cart">
        	<a href="reservePage.do?cNum=${vDto.cNum}&id=${sessionScope.userId}">
        		렌트카 예약하기
        	</a>
        </button>
        <button class="add-to-cart"><a href="wishList.do?cNum=${vDto.cNum}&id=${sessionScope.userId}">관심상품</button>
      </div>
    </div>
    <%-- </c:forEach> --%>
    <%-- </c:forEach> --%>
    
    <div class="grid related-products" >
      <div class="column-xs-12" >
        <!-- <h4>관련상품</h4> -->
        <h3>${vDto.cSpec} cars</h3>
      </div>
    <c:forEach var="vehicle" items="${vehicleList}">
      <div class="card column-xs-12 column-md-4" style="display : flex">
    	<c:if test="${vehicle.cSpec == vDto.cSpec}">
        		<img src="https://source.unsplash.com/miziNqvJx5M">
        		<div>
        			<h4>[더미] ${vehicle.cName}</h4>
        			<p class="price">${vehicle.price}원</p>
        		</div>   	
        	</c:if>
      </div>
    </c:forEach>
    </div>    
  </div>
</main>

<%@ include file="../inc/footer.jsp" %>

<!-- JS -->
<script src="${ctx}/resources/js/vehicle_rental.js"></script>