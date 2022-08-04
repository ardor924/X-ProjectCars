<%-- <%@page import="mr.web.model.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mr.web.model.CategoryDAO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- MDB icon -->
<link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
<!-- Google Fonts Roboto -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"/>
 <!-- cdn Xi아이콘 -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<!-- bootstrap5 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- MDB -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" 
integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<!-- 제이쿼리 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<!-- datepicker 달력 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="resources/js/plugin/datepicker/bootstrap-datepicker.ko.min.js"></script>
<!-- 달력2 -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 --><!-- MDB Js -->
<script type="text/javascript" src="${ctx}/resouces/js/mdb.min.js"></script>
<!-- CSS -->

<link rel="stylesheet" href="${ctx}/resources/css/noticeList.css">
<link rel="stylesheet" href="${ctx}/resources/css/noticeRent.css">
<link rel="stylesheet" href="${ctx}/resources/css/myPageList.css">
<link rel="stylesheet" href="${ctx}/resources/css/myWishList.css">

<link rel="stylesheet" href="${ctx}/resources/css/mdb.min.css">
<link rel="stylesheet" href="${ctx}/resources/css/car_main.css">
<link rel="stylesheet" href="${ctx}/resources/css/home.css">
<link rel="stylesheet" href="${ctx}/resources/css/font.css">


<script type="text/javascript">
	$(document).ready(function(){
		<c:if test="${msg != null}">
			alert("${msg}");
		</c:if>
		<c:remove var="msg" scope="session"/>
	});

	function chkValidation(){	// 유효성체크
		if($("#user_id").val()==''){
			//alert("아이디를 입력하세요!!!");
			//alert($("#idMsg"));
			$("#idMsg").css("display", "block");
			
			$("#user_id").focus();
			return false;
		}
		
		if($("#pw").val()==''){ 
			$("#pwMsg").css("display", "block");
			//alert("비밀번호를 입력하세요!!!");
			$("#pw").focus();
			return false;
		}
		return true;
	}
	
	function valueChk(obj){ // 온키업 이벤트로 인풋창에 키를 입력한 상태에서 작동된다. 
		if(obj.id == "user_id"){
			$("#idMsg").css("display", "none");
		}else{
			$("#pwMsg").css("display", "none");
		}
	}
	
	function logout(){
		// c:url를 이용하면 ${ctx}를 생략할 수 있다.
		location.href="<c:url value='/#adminLogout.do'/>";
	}

<!-- 미구현기능 메세지 출력 -->
	function showMsg(){
		alert("기능 미구현!! 추후 작업예정입니다.");
		document.location.href="#";
	}
	
<!-- 미구현기능 메세지 출력 -->
	function notice(){
		alert("해당 기능을 이용하기 위해서는 로그인이 필요합니다.");
		document.location.href="#clientLogin.do";
	}
	
<!-- 검색어 유효성체크 -->
	function emptyResult(){
		if($("#searchInput").val()==''){
			alert("차량을 입력하세요");
				$("#searchInput").focus();
				
		}
		
}
	
	
</script>

</head>
<body>
<!-- <1header>	 -->
<header class="header sticky-top">
<nav class="nav-top navbar m-0 p-0 navbar-expand-md " style="font-family: LeferiPoint-WhiteObliqueA; background-color: #111">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarRightAlignExample"
      aria-controls="navbarRightAlignExample"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarRightAlignExample">
      <!-- Left links -->
      <ul class="navbar-nav">
      	<c:if test="${sessionScope.LoginProcess != null}">
           <li class="nav-item text-start px-3" style="color:white; list-style :none; line-height:40px;">
              ${sessionScope.userName}님 안녕하세요!!
           </li>
    	</c:if>
      </ul>
        <!-- 로그인 유효성체크  -->
        <ul class="navbar-nav ms-auto">
	            <c:if test="${sessionScope.LoginProcess == null}">
	            	<li>
	            		<a class="nav-link" href="memberLogin.do">로그인</a>
	            	</li>
	            	<li>
             			<a class="nav-link" href="memberRegister.do">회원가입</a>
           			</li>	            	
	            </c:if>
	            
	            <c:if test="${sessionScope.LoginProcess != null}">
					<li>
	            		<a class="nav-link" href="memberLogout.do">로그아웃</a>
	            	</li>
	            	<li>
             			<a class="nav-link" href="wishList.do">위시리스트</a>
           			</li>	
				</c:if>	
        <!-- Navbar dropdown -->
        <li class="dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="ture">마이페이지</a>
          <!-- Dropdown menu -->
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li>
              <c:if test="${sessionScope.isLogin != null and sessionScope.isAccount =='client'}">
              	<a class="dropdown-item" onclick="javascript:notice()" href="#memberInfo.do?id=${sessionScope.id}">내 정보보기</a>
              </c:if>
              <c:if test="${sessionScope.isLogin != null and sessionScope.isAccount =='admin'}">
              	<a class="dropdown-item" onclick="javascript:alert('관리자 정보 미구현!)">관리자 정보보기</a>
              </c:if>
            </li>
            <li>
              <a class="dropdown-item" href="myPageList.do">마이페이지</a>
            </li>
            <li>
              <a class="dropdown-item" href="#">주문배송조회</a>
            </li>
            <li><hr class="dropdown-divider"/></li>
            <li>
              <a class="dropdown-item" href="#">개발중...</a>
            </li>
          </ul>
        </li>
      </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->
  </div>
  <!-- Container wrapper -->
<hr>
</nav>
<!-- </header>	 -->
<!-- <header2>	 -->
<nav class="nav-second navbar m-0 p-0 navbar-expand-sm" style="font-family: LeferiPoint-WhiteObliqueA;">
  <!-- Container wrapper -->
  <div class="container">   
  	<a class="nav-link" href="${ctx}">
          <img style="position: relative; width: 100px; alt="로고" src="${ctx}/resources/image/logo/임시로고.png">
    </a>  
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">        
    <span class="navbar-toggler-icon"></span>    
  </button>
   <ul class="navbar-nav">
   		<li class="nav-link">            
          <a class="nav-link" href="home.do">Home</a> 
        </li> 
   </ul>
<!------- 네비메뉴 start ------->
<!------- 즉시출고가능차량 start ------->     
 <ul class="navbar-nav">
   	<li class="nav-link">            
      <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown">즉시출고가능차량</a> 
    </li> 
 </ul>
  
<!------- 즉시출고가능차량 end ------->   


<!------- 장기렌트 start ------->  <!-- LongDay.do -->
    <ul class="navbar-nav">
   		<li class="nav-link">            
          <a class="nav-link" href="longDayCar.do">장기렌트</a> 
        </li> 
   </ul>
<!------- 장기렌트 start ------->  



<!------- 1일렌트 start ------->  <!--"OneDay.do"  -->
    <ul class="navbar-nav">
   		<li class="nav-link">            
          <a class="nav-link" href="oneDayCar.do">1일렌트</a> 
        </li> 
   </ul>
<!------- 1일렌트 end ------->		

   
<!------- 이용안내 start ------->  
  <ul class="navbar-nav">
  <li class="nav-link dropdown ">
        <a class="nav-link" href="${ctx}" role="button" data-bs-toggle="dropdown">이용안내</a>
        <ul class="dropdown-menu shadow">
        <li class="letter">
			<a class="letter" href='noticeList.do'>보험/유의사항</a>
			<hr class="dropdown-divider"/>
		</li>
        <li class="letter">
			<a class="letter" href="noticeDayRent.do">1일렌트 안내사항</a>
		</li>
        <li class="letter">
			<a class="letter" href="noticeLongRent.do">장기렌트 안내사항</a>
		</li>
        <li class="letter">
			<a class="letter" href="noticeFaq.do">FAQ</a>
		</li>
		</ul>
	</ul>   
<!------- 이용안내 end ------->	
<!------- 고객센터 start ------->
  <ul class="navbar-nav">
  <li class="nav-link dropdown ">
        <a class="nav-link" href="" role="button" data-bs-toggle="dropdown">고객센터</a>
        <ul class="dropdown-menu shadow">
        <li class="letter">
			<a class="letter" href='BoardInsert.do'>공지사항</a>
			<hr class="dropdown-divider"/>
		</li>
        <li class="letter">
			<a class="letter" href="memberLogin.do" onclick="javascript:showMsg()">1:1렌트상담</a>
		</li>
        <li class="letter">
			<a class="letter" href="myReservation.do">실시간 신청</a>
		</li>
        <li class="letter">
			<a class="letter" href="myDirection.do">오시는길</a>
		</li>
		</ul>
	</ul>  
<!------- 고객센터 end ------->	
<!------- 네비메뉴 end ------->   

  <!-- 관리자용 DB수정  -->
<%-- <c:if test="${sessionScope.isLogin != null && sessionScope.isAccount =='admin'}"> --%>
<c:if test="${sessionScope.isLogin != null && sessionScope.userId =='admin'}">
  <ul class="navbar-nav">
  <li class="nav-link dropdown ">
        <a class="nav-link" href="${ctx}" role="button" data-bs-toggle="dropdown">관리자메뉴</a>
        <ul class="dropdown-menu shadow">
        <li class="nav-item ">
          <a class="letter" href="adminPage.do">관리자페이지</a>
          <hr class="dropdown-divider"/>
        </li>
        <li class="nav-item ">
          <a class="letter" href="catInput.do">카테고리 등록</a>
        </li>
        <li class="nav-item ">
          <a class="letter" href="catList.do">카테고리 목록</a>
        </li>
        <li class="nav-item ">
          <a class="letter" href="vehicleInput.do">차량 등록</a>
        </li>  
        <li class="nav-item ">
          <a class="letter" href="vehicleList.do">등록차량 목록</a>
        </li>
        <li class="nav-item ">
            <a class="letter" href="memberList.do">회원목록 관리</a>
            <hr class="dropdown-divider"/>
        </li>
        <li class="nav-item ">
            <a class="letter" href="memberLogout.do">로그아웃</a>
        </li>
      </ul> 
      </li> 
      </ul>
</c:if> 
<!-- 관리자용 DB수정  -->    
      
   <!-- 검색기능 -->      
  <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">        
      <ul class="navbar-nav">        
        <li class="nav-link">
        	<form action="searchList.do" method="post" class="d-flex">
      			<input class="form-control me-2" type="text" id="searchInput" name="cName" 
      				 	placeholder="차량 검색">
      			<button class="btn btn-light p-2" 
      					name="mName" id="searchButton" 
      					onclick="emptyResult()" type="submit">
        			<i class="fas fa-search"></i>
     			</button>
      		</form>
   		 </li>        
      </ul>    
    </div>    
  </div>
	</nav>
</header>