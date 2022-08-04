<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="resources/image/portfolio/favicon.ico">
    <title>Profile Bootstrap Theme</title>

    <!-- Global stylesheets -->
    <link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>
<%@ include file="../inc/header.jsp" %>

<link href="resources/css/rent_page.css" rel="stylesheet">

<body id="page-top">
    
    <%-- <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
          <span class="d-block d-lg-none  mx-0 px-0"><img src="resources/image/portfolio/logo-white.png" alt="" class="img-fluid"></span>
          <span class="d-none d-lg-block">
            <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="resources/image/logo/logo.png" alt="">
          </span>
        </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav">
                 <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#about">최신</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#experience">인기</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#portfolio"><c:if test="${vehicleList == null}">
                  등록된 차량이 없습니다!
               </c:if>    </a>
                  </li> 
                  <!-- <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#skills">Skills</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#awards">Awards</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                  </li> -->
              </ul>
          </div>
      </nav> --%>
      


      <div class="container-fluid p-0">
    <!--====================================================
                        PORTFOLIO
    ======================================================-->  
     
        <section class="resume-section p-3 p-lg-5 d-flex  flex-column" id="portfolio"> 
            <div class="row my-auto">
                <div class="col-12">
                <h2 class="  text-center">LongDay</h2>
                <div class="mb-5 heading-border"></div>
                </div>
                <div class="col-md-12">
                <div class="port-head-cont">
                    <button class="btn btn-general btn-green filter-b" data-filter="all">All</button>
                    <button class="btn btn-general btn-green filter-b" data-filter="100">스포츠 카 </button>
                    <button class="btn btn-general btn-green filter-b" data-filter="200">세단</button> 
                    <button class="btn btn-general btn-green filter-b" data-filter="300">S U V</button>
                    <button class="btn btn-general btn-green filter-b" data-filter="400">전기차</button> 
                              
                </div>
                </div>
            </div>
            
            <div class="row my-auto" style=" padding-left:120px; padding-right:120px;">
            <c:forEach var="vDto" items="${vehicleList}"> 
                <div class="col-sm-4 portfolio-item filter ${vDto.category_fk}">
                    <a class="portfolio-link" href="#portfolioModal${vDto.cNum}" data-toggle="modal"> 
                        
                        <div class="caption-port">
                           
                     <div class="simpletxt">
                        <h3 class="name">${vDto.cName}</h3>
                        <p>"Lorem ipsum dolor sit amet, consectetur,<br>
                         sed do eiusmod tempor incididunt" </p>
                         <h4 class="price"> 1000&euro;</h4>
                         <button>READ MORE</button><br>
                         <div class="wishtxt">
                            <p class="paragraph1"> Add to Wishlist <span class="glyphicon glyphicon-heart"></span> </p>
                            <p class="paragraph2">Compare <span class="icon"><img src="image/compicon.png" alt="compicon"></span></p>
                         </div>
                     </div>
                        </div>
                        <img class="img-fluid" src="${ctx}/resources/file_upload/${vDto.fileName}" style="max-width: 100%; min-width:150px; max-height:auto; min-height: 300px; margin:auto; ">  
                    </a> 
                </div>
               
         
               
            
            
            </c:forEach> 
            </div> 
        </section>
      </div>

 <!--====================================================
                    PORTFOLIO MODALS
======================================================-->
<c:forEach var="vDto" items="${vehicleList}"> 
<div class="portfolio-modal modal fade" id="portfolioModal${vDto.cNum}" tabindex="-1" role="dialog" aria-hidden="true" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl"></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                        <div class="modal-body">
                            <div class="title-bar">
                              <div class="col-md-12">
                                <h2 class="text-center">Our Project</h2>
                                <div class="heading-border"></div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-md-6">
                               <!--  <img class="img-fluid img-centered" src="resources/image/portfolio/p-1.jpg" alt=""> -->
                                <img class="img-fluid img-centered" src="${ctx}/resources/file_upload/${vDto.fileName}" alt="">
                              </div>
                              <div class="col-md-6">
                                <p>Our new Project every processes had become fragmented; meaning quality and service were inconsistent. This lack of standardization was adversely impacting operating costs, productivity and customer satisfaction. For several years now Payfast has worked strategically with innovations as a means of developing new solutions, products and services. In line with this vision, Success was approached to find new payments solutions to offer Payfast customers on their website, including open invoice and partial payments options.</p>
                                <ul class="list-inline item-details">
                                    <li>Client:
                                        <strong>
                                          <a href="#">Techs Soft</a>
                                        </strong>
                                    </li>
                                    <li>Date:
                                        <strong>
                                          <a href="#">April 2018</a>
                                        </strong>
                                    </li>
                                    <li>Service:
                                        <strong>
                                          <a href="#">Web Development</a>
                                        </strong>
                                    </li>
                                </ul>
                                <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                    <i class="fa-solid fa-car-side"></i> <a href="longDayRev.do">렌트하기</a>
                                </button>
                                <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                    <i class="fa fa-times"></i> Close
                                </button>
                            </div>
                          </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
  </div>
   </div>  
  </c:forEach> 

  <!-- Global javascript -->
  <script src="resources/js/jquery/jquery.min.js"></script>
  <script src="resources/js/bootstrap/bootstrap.bundle.min.js"></script>
  <script>
    $(document).ready(function(){

    $(".filter-b").click(function(){
        var value = $(this).attr('data-filter');
        if(value == "all")
        { 
            $('.filter').show('1000');
        }
        else
        { 
            $(".filter").not('.'+value).hide('3000');
            $('.filter').filter('.'+value).show('3000');
        }
    });
    
    if ($(".filter-b").removeClass("active")) {
      $(this).removeClass("active");
    }
    $(this).addClass("active");
    });

    // SKILLS
    $(function () {
        $('.counter').counterUp({
            delay: 10,
            time: 2000
        });

    });
</script> 


</body>
</html>

<script type="text/javascript">
    function goCart(){
        document.infoFrm.action=""
        document.infoFrm.submit();
    }

    function showMsg(){
        alert("로그인이 필요합니다!!")
    }

</script>