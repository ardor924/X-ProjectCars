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
  </head>
  <body>
    <!-- Start your project here-->

    <!--Main Navigation-->
<header>
  <style>
    /* Carousel styling */
    #introCarousel,
    .carousel-inner,
    .carousel-item,
    .carousel-item.active {
      height: 100vh;
  
    }

    .carousel-item:nth-child(1) {
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center center;
    }

    .carousel-item:nth-child(2) {
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center center;
    }

    .carousel-item:nth-child(3) {
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center center;
    }

    /* Height for devices larger than 576px */
    @media (min-width: 992px) {
      #introCarousel {
        margin-top: -58.59px;
      }
    }

    .navbar .nav-link {
      color: #fff !important;
      font-family: LeferiPoint-WhiteObliqueA;
    }
    
    h1,h2,h3,h4,h5,h5,p{
    
    font-family: LeferiPoint-WhiteObliqueA;
    }
    
    
  </style>

  <!-- Navbar -->
  <nav
       class="navbar navbar-expand-lg navbar-dark d-none d-lg-block"
       style="z-index: 2000"
       >
    <div class="container-fluid">
      <!-- Navbar brand -->
      <a
         class="navbar-brand nav-link"
         href="#ProjectCars"
         >
        <strong>ProjectCars</strong>
      </a>
<!--       
      <button
              class="navbar-toggler"
              type="button"
              data-mdb-toggle="collapse"
              data-mdb-target="#navbarExample01"
              aria-controls="navbarExample01"
              aria-expanded="false"
              aria-label="Toggle navigation"
              >
        <i class="fas fa-bars"></i>
      </button>
  -->     
      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="home.do">Home</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="memberLogin.do">로그인</a>
          </li>          
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="rentPage.do">모델</a>
          </li>
        </ul>

        <ul class="navbar-nav list-inline">
          <!-- Icons -->
          <li class="">
            <a
               class="nav-link"
               href="https://www.youtube.com/"
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
  <!-- Navbar -->

  <!-- Carousel wrapper -->
  <div
       id="introCarousel"
       class="carousel slide carousel-fade shadow-2-strong"
       data-mdb-ride="carousel"
       >
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li
          data-mdb-target="#introCarousel"
          data-mdb-slide-to="0"
          class="active"
          ></li>
      <li data-mdb-target="#introCarousel" data-mdb-slide-to="1"></li>
      <li data-mdb-target="#introCarousel" data-mdb-slide-to="2"></li>
    </ol>

    <!-- Inner -->
    <div class="carousel-inner">
      <!-- Single item 1 -->
      <div class="carousel-item active">
        <video
               style="min-width: 100%; min-height: 100%"
               playsinline
               autoplay
               muted
               loop
               >
          <source
                  class="h-100"
                  src="${ctx}/resources/video/Bentley Motors.mp4"
                  type="video/mp4"
                  />
        </video>
        <div class="mask" style="background-color: rgba(0, 0, 0, 0.6)">
          <div
               class="d-flex justify-content-center align-items-center h-100"
               >
            <div class="text-white text-center">
              <h1 class="mb-3">ProjectCars</h1>
              <h5 class="mb-4">
                 Welcome
              </h5>
              <a
                 class="btn btn-outline-light btn-lg m-2"
                href="home.do">
                 HOME</a
                >
            </div>
          </div>
        </div>
      </div>

      <!-- Single item 2-->
      <div class="carousel-item">
        <video
               style="min-width: 100%; min-height: 100%"
               playsinline
               autoplay
               muted
               loop
               >
          <source
                  class="h-100"
                  src="${ctx}/resources/video/GENESIS G80 Launching.mp4"
                  type="video/mp4"
                  />
        </video>
        <div class="mask" style="background-color: rgba(0, 0, 0, 0.3)">
          <div
               class="d-flex justify-content-center align-items-center h-100"
               >
            <div class="text-white text-center">
              <h2>올 여름 여러분이 상상하는 차가 옵니다</h2>
              <p>제네시스 G80</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Single item 3-->
      <div class="carousel-item">
        <video
               style="min-width: 100%; min-height: 100%"
               playsinline
               autoplay
               muted
               loop
               >
          <source
                  class="h-100"
                  src="${ctx}/resources/video/Lamborghini Urus Dynamic.mp4"
                  type="video/mp4"
                  />
        </video>
          <div class="mask" style="background-color: rgba(0, 0, 0, 0.3)">
          <div
               class="d-flex justify-content-center align-items-center h-100"
               >
            <div class="text-white text-center">
              <h2>수입 외제차 독점판매</h2>
              <a
                 class="btn btn-outline-light btn-lg m-2"
                 href="#"
                 role="button"
                 >내게 맞는 외제차 확인하기</a
                >
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Inner -->

    <!-- Controls -->
    <a
       class="carousel-control-prev"
       href="#introCarousel"
       role="button"
       data-mdb-slide="prev"
       >
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a
       class="carousel-control-next"
       href="#introCarousel"
       role="button"
       data-mdb-slide="next"
       >
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <!-- Carousel wrapper -->
</header>
<!--Main Navigation-->


    <!-- End your project here-->

    <!-- MDB -->
    <script type="text/javascript" src="resources/js/mdb.min.js"></script>
    <!-- Custom scripts -->
    <script type="text/javascript"></script>
  </body>
</html>
