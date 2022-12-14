<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>메인 페이지</title>
    <jsp:include page="${path1 }/head.jsp" />
<style>
.notice {
    float: left;
    width: 420px;
    height: 180px;
    margin: 30px 0;
    position: relative;
}
.container {
    width: 1200px;
    margin: 0 auto;
    clear: both;
    display: block;
}
.speaker {
    float: right;
    width: 701px;
    margin: -148px -800px;
}
.slider-text {
    position: absolute;
    right: 0;
    bottom: 0
  }
#slider .card-content{
    max-width: 50%;
  }
#slider{
    overflow: hidden;
    height : 588px;
  } 
@media screen and (max-width: 1023px) {
    #slider .card-content{
      display: none;
    }
  }
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  right: 0;
  top: 0;
}
.item-slide img {
  max-width: 1200px;
}
.caption-container {
  color: white;
}
.mBan ul {
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
    text-align: center;
    margin: 246px -393px 52px;
    float: left;
}
</style>
	
</head>
<body>
  	<jsp:include page="${path1 }/header.jsp" />
  	
	<section>
        <div id="slider">
            <div class="card" >
                <div class="card-image" >
                    <figure class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="https://www.goyang.go.kr/visitgoyang/images/2020/main/visual_03.png" alt="" />
                    </figure>
                </div>
           </div>
            <div class="card ">
                <div class="card-image">
                    <figure class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="https://www.goyang.go.kr/visitgoyang/images/2020/main/visual_01.png" alt="" />
                    </figure>
                </div>
		    </div>
            <div class="card ">
                <div class="card-image">
                    <p class="image is-16by9 is-covered" style="padding-top : 30.25%">
                        <img src="https://www.goyang.go.kr/visitgoyang/images/2020/main/visual_02.png" alt="" />
                    </p>
                </div>
            </div>
      	</div>
    </section>
    <div class="container">
		<div class="notice">
			<h1><strong>공지사항</strong></h1>
			<ul>
				<li>
					<a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=7">
					2022 고양관광특구 페스티벌 BIG3
					</a>
					<!--<img src="./images/2020/main/icon_new.png" alt="새글" />//-->
					<span class="date">2022-10-21</span>
				</li>
			
				<li>
					<a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=4">
					2022 고양가을꽃축제 개최안내
					</a>
					<!--<img src="./images/2020/main/icon_new.png" alt="새글" />//-->
					<span class="date">2022-10-07</span>
				</li>
			
				<li>
					<a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=5">
					2022 고양호수예술축제 개최안내
					</a>
					<!--<img src="./images/2020/main/icon_new.png" alt="새글" />//-->
					<span class="date">2022-09-28</span>
				</li>
			
				<li>
					<a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=6">
					뮤비 속 고양시를 찾아라! 고양 평화누리길...
					</a>
					<!--<img src="./images/2020/main/icon_new.png" alt="새글" />//-->
					<span class="date">2021-12-30</span>
				</li>
			
				<li>
					<a href="http://localhost:8090/pro03/GetNoticeCtrl.do?no=7">
					한강하구 생태역사평화이야기
					</a>
					<!--<img src="./images/2020/main/icon_new.png" alt="새글" />//-->
					<span class="date">2021-12-02</span>
				</li>
			</ul>
			<div class="speaker">
			<!-- <a href="#"><img src="./images/2020/main/speaker.png" alt="2020 한국관광 품질인증 신청접수2000년 4월 27일(월) ~ 8월 31일(월)" /></a> -->
			<a href="https://goyang.dadora.kr/client/index.html" target="_blank"><img src="https://www.goyang.go.kr/visitgoyang/images/20211208/speaker.jpg" alt="고양 스마트관광전자지도 다도라" style="max-width:100%;" /></a>
		</div>
	</div>
	</div>
	
    <script>
	    bulmaCarousel.attach('#slider', {
	        slidesToScroll: 1,
	        slidesToShow: 1,
	        infinite: true,
	        autoplay: true,
	    });
	    var slideIndex = 1;
		showSlides(slideIndex);
		
		function plusSlides(n) {
		  showSlides(slideIndex += n);
		}
		
		function currentSlide(n) {
		  showSlides(slideIndex = n);
		}
		
		function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("item-slide");
		  var captionText = document.getElementById("caption");
		  if (n > slides.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = slides.length}
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";
		  }
		}
    </script>
    <div class="mBan">
	<ul>
		<li><a href="http://www.xn--299au8v81i1iaw91b5jf.com/" target="_blank">
			<img src="https://www.goyang.go.kr/visitgoyang/images/banner/24.gif" alt="고양아트마켓" />
				</a>
		</li>
		<li><a href="https://dmz.gg.go.kr/gg_dmz-tour/peace/" target="_blank" >
			<img src=https://www.goyang.go.kr/visitgoyang/images/banner/21.gif alt="평화누리길" />
			</a>
		</li>
		<li><a href="http://ggtour.or.kr/" target="_blank" >
			<img src="https://www.goyang.go.kr/visitgoyang/images/banner/22.gif" alt="평화누리길 다음카페" />
			</a>
		</li>
		<li><a href="https://www.goyang.go.kr/index.do" target="_blank" >
			<img src="https://www.goyang.go.kr/visitgoyang/images/banner/1.gif" alt="고양시" />
			</a>
		</li>
		<li><a href="https://goyangcitytour.modoo.at/" target="_blank" >
			<img src="https://www.goyang.go.kr/visitgoyang/images/banner/14.gif" alt="고양시티투어" />
			</a>
		</li>
		<li><a href="http://agr.goyang.go.kr/" target="_blank" >
			<img src="	https://www.goyang.go.kr/visitgoyang/images/banner/8.gif" alt="고양시 농업기술센터" />
			</a>
		</li>
		<li><a href="http://its.goyang.go.kr/" target="_blank" >
			<img src="https://www.goyang.go.kr/visitgoyang/images/banner/9.gif" alt="고양시 교통정보센터" />
			</a>
		</li>
		<li><a href="http://www.hjfestival.or.kr/" target="_blank" >
			<img src="https://www.goyang.go.kr/visitgoyang/images/banner/11.gif" alt="고양행주문화제" />
			</a>
		</li>
		
		
	</ul>
</div>
	<jsp:include page="${path1 }/footer.jsp" />
	
</body>
</html>