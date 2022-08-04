<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="kr">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Project Cars</title>
    <!-- MDB icon -->
    <link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
    <!-- Font Awesome -->
    <link
    type="text/css"
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    />
    <!-- Google Fonts Roboto -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
    />
    <!-- MDB -->
    <link rel="stylesheet" href="resources/css/mdb.min.css" />
    <!-- Font -->
    <link rel="stylesheet" href="${ctx}/resources/css/font.css">
    <!-- 로그인 리소스 -->
	<script type="text/javascript" src="${ctx}/resouces/js/login.js"></script>
	<link rel="stylesheet" href="${ctx}/resources/css/login.css">
	<style>
    .navbar .nav-link {
      color: #fff !important;
      font-family: LeferiPoint-WhiteObliqueA;
    }
        
    h1,h2,h3,h4,h5,h5,p{   
   		font-family: LeferiPoint-WhiteObliqueA;
  </style>
  
  	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<link rel="stylesheet" href="${ctx}/resources/css/hover/button.css">
	<link rel="stylesheet" href="${ctx}/resources/css/font.css">
  
	<link rel="stylesheet" href="${ctx}/resources/css/paymentOk.css">
  
  </head>



<h1><small>Rent Success</small> 예약한 차량의 상세정보는</br>마이페이지에서 확인 가능합니다 <small><button class="pulse">마이페이지</button></small></h1>

<!-- You can add more ".slideshow-image" elements, but remember to update the "$items" variable on SCSS -->
<div class="slideshow">
<!--   <div class="slideshow-image" style="background-image: url('https://source.unsplash.com/category/nature/1600x1400')"></div>
  <div class="slideshow-image" style="background-image: url('https://source.unsplash.com/category/buildings/1600x1400')"></div>
  <div class="slideshow-image" style="background-image: url('https://source.unsplash.com/category/food/1600x1400')"></div>
  <div class="slideshow-image" style="background-image: url('https://source.unsplash.com/category/technology/1600x1400')"></div>
 -->   
 <div class="slideshow-image" style="background-image: url('${ctx}/resources/image/pay/2.jpg')"></div>
 <div class="slideshow-image" style="background-image: url('${ctx}/resources/image/pay/12.jpg')"></div>
 <div class="slideshow-image" style="background-image: url('${ctx}/resources/image/pay/1.jpg')"></div>
 <div class="slideshow-image" style="background-image: url('${ctx}/resources/image/pay/15.jpg')"></div>


</div>    