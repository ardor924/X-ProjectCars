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
	<link rel="stylesheet" href="${ctx}/resources/css/rental_selector.css">
	<link rel="stylesheet" href="${ctx}/resources/css/hover/button.css">
	<link rel="stylesheet" href="${ctx}/resources/css/font.css">
  
  
  </head>
  
  
 



<div class="slider-container">

<!-- Navbar -->
  <nav
       class="navbar navbar-expand-lg navbar-dark d-none d-lg-block w-100"
       style="z-index: 2000; height: auto ; box-shadow: 0em;"
       >
    <div class="container-fluid w-100">
      <!-- Navbar brand -->
      <a
         class="navbar-brand nav-link"
         href="${ctx}"
         >
        <strong>ProjectCars</strong>
      </a>

      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="home.do">Home</a>
          </li>  
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" style="cursor:pointer" onclick="javascript:history.back()">Back</a>
          </li>                  
        </ul>

        <ul class="navbar-nav list-inline">
          <!-- Icons -->
          <li class="">
            <a
               class="nav-link"
               href="https://www.youtube.com/results?search_query=sports+car"
               rel="nofollow"
               target="_blank"
               >
              <i class="fab fa-youtube"></i>
            </a>
          </li>
          <li class="">
            <a
               class="nav-link"
               href="https://www.facebook.com/"
               rel="nofollow"
               target="_blank"
               >
              <i class="fab fa-facebook-f"></i>
            </a>
          </li>
          <li class="nav-item">
            <a
               class="nav-link"
               href="https://twitter.com/"
               rel="nofollow"
               target="_blank"
               >
              <i class="fab fa-twitter"></i>
            </a>
          </li>
          <li class="nav-item">
            <a
               class="nav-link"
               href="https://github.com/sinny13/ProjectCars.git" 
               rel="nofollow"
               target="_blank"
               >
              <i class="fab fa-github"></i>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>



      <div class="left-slide">
        <div style="background-color: #1f4a9b">
          <h1>1일렌트</h1>
          <button class="pulse" 
          			style="font-family:LeferiPoint-WhiteObliqueA; font-weight: bolder ;color: #FFFFFF "
          			onclick = "location.href='oneDayRev.do?cNum=${vDto.cNum}'">지금 예약하기</button>
        </div>

        <div style="background-color: #000">
          <h1>장기렌트</h1>
          <button class="pulse" 
          			style="font-family:LeferiPoint-WhiteObliqueA; font-weight: bolder ;color: #FFFFFF "
          			onclick = "location.href='longDayRev.do?cNum=${vDto.cNum}'">지금 예약하기</button>          
        </div>
        <div style="background-color: rgb(231, 58, 95)">
          <h1>즉시출고가능</h1>
          <button class="pulse" 
          			style="font-family:LeferiPoint-WhiteObliqueA; font-weight: bolder ;color: #FFFFFF "
          			onclick = "location.href='#nowRev.do?cNum=${vDto.cNum}'">지금 예약하기</button>         
        </div>
      </div>
      <div class="right-slide">
        <div style="background-image: url('${ctx}/resources/image/selector/selectorBG3.jpg');"></div>
        <div style="background-image: url('${ctx}/resources/image/selector/selectorBG2.jpg');"></div>
        <div style="background-image: url('${ctx}/resources/image/selector/selectorBG0.jpg');"></div>
      </div>
      
<div id="selector">      
      <div class="action-buttons">
        <button class="down-button" style="background: #fff;">
          <i class="xi-arrow-down"></i>
        </button>
        <button class="up-button" style="background: #fff;">
          <i class="xi-arrow-up"></i>
        </button>
      </div>
</div>
 </div>   
<script src="${ctx}/resources/js/rental_selector.js"></script>