<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="inc/header.jsp" %>

<!-- MDB Js -->
<script type="text/javascript" src="${ctx}/resources/js/mdb.min.js"></script>


<!-- 로그인성공 메세지  -->
<script type="text/javascript">
$(document).ready(function(){ 
	if(${LoginProcess != null}){
		alert("${LoginProcess}");	
		
	}	  
});

<!-- 로그아웃성공 메세지  -->
$(document).ready(function(){ 
	if(${LogoutProcess != null}){
		alert("${LogoutProcess}");	
	}	  
});
<!-- 위시리스트 담기 실패 메세지  -->
$(document).ready(function(){ 
	if(${WishInsertFail != null}){
		alert("${WishInsertFail}");	
	}	  
});


</script>
<!-- 메세지삭제 -->



<!-- 1. Carousel wrapper -->
<div
  id="carouselVideoExample"
  class="carousel slide carousel-fade"
  data-mdb-ride="carousel"
>
  <!-- Indicators -->
  <div class="carousel-indicators">
    <button
      type="button"
      data-mdb-target="#carouselVideoExample"
      data-mdb-slide-to="0"
      class="active"
      aria-current="true"
      aria-label="Slide 1"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselVideoExample"
      data-mdb-slide-to="1"
      aria-label="Slide 2"
    ></button>
    <button
      type="button"
      data-mdb-target="#carouselVideoExample"
      data-mdb-slide-to="2"
      aria-label="Slide 3"
    ></button>
  </div>

  <!-- Inner -->
  <div class="carousel-inner">
    <!-- Single item1 -->
    <div class="carousel-item active">
      <video class="img-fluid w-100" autoplay loop muted>
        <!-- <source src="https://mdbcdn.b-cdn.net/img/video/Tropical.mp4" type="video/mp4" /> -->
        <source src="${ctx}/resources/video/Lamborghini Urus Dynamic.mp4" type="video/mp4" />
      </video>
      <div class="carousel-caption d-none d-md-block">
        <h5>lorem ipsum</h5>
        <p>
          dolor sit amet
        </p>
      </div>
    </div>

    <!-- Single item2 -->
    <div class="carousel-item">
      <video class="img-fluid w-100"  autoplay loop muted>
        <source src="${ctx}/resources/video/Bentley Motors.mp4" type="video/mp4" />
      </video>
      <div class="carousel-caption d-none d-md-block">
        <h5></h5>
        <p>
          lorem ipsum
        </p>
      </div>
    </div>

    <!-- Single item3 -->
    <div class="carousel-item">
      <video class="img-fluid w-100" autoplay loop muted>
        <source src="${ctx}/resources/video/GENESIS G80 Launching.mp4" type="video/mp4" />
      </video>
      <div class="carousel-caption d-none d-md-block">
        <h5>lorem ipsum</h5>
        <p>
          dolor sit amet
        </p>
      </div>
    </div>
  </div>
  <!-- Inner -->

  <!-- Controls -->
  <button
    class="carousel-control-prev"
    type="button"
    data-mdb-target="#carouselVideoExample"
    data-mdb-slide="prev"
  >
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button
    class="carousel-control-next"
    type="button"
    data-mdb-target="#carouselVideoExample"
    data-mdb-slide="next"
  >
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- 1. Carousel wrapper End-->
<br>
<br>
<br>
<br>

<!-- car_main  -->
<%@ include file="car_main.jsp" %>


<!-- footer -->
<%@ include file="inc/footer.jsp" %>