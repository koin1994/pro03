<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path2" value="${pageContext.request.contextPath }" />  
	<nav class="navbar" role="navigation" aria-label="main navigation" style="height : 90px;">
  		<div class="navbar-brand">
    		<a class="navbar-item" href="${request.getContextPath() }">
      	<img src="https://www.goyang.go.kr/visitgoyang/images/2020/common/h1.png" width="180" height="100">
    		</a>
    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>
  		<div class="navbar-item has-dropdown is-hoverable">
		    <a class="navbar-link is-arrowless">
		      관광명소
		    </a>
		<div class="navbar-dropdown">
		      <a class="navbar-item">
		        고양명소
		      </a>
		      <a class="navbar-item">
		        고양길
		      </a>
		      <a class="navbar-item">
		        산/사찰
		      </a>
		      <a class="navbar-item">
		        전시/박물관
		      </a>
		    </div>
	 	 </div>
	 	 <div class="navbar-item has-dropdown is-hoverable">
		    <a class="navbar-link is-arrowless">
		      축제/문화행사
		    </a>
		 <div class="navbar-dropdown">
		      <a class="navbar-item">
		        최근소식/이벤트
		      </a>
		      <a class="navbar-item">
		        정기축제/행사
		      </a>
		 </div>
	 	 </div>
	 	  <div class="navbar-item has-dropdown is-hoverable">
		    <a class="navbar-link is-arrowless">
		      음식/숙박/쇼핑
		    </a>
		 <div class="navbar-dropdown">
		      <a class="navbar-item">
		        숙박
		      </a>
		      <a class="navbar-item">
		        음식점
		      </a>
		      <a class="navbar-item">
		        쇼핑
		      </a>
		 </div>
	 	 </div>
	 	  <div class="navbar-item has-dropdown is-hoverable">
		    <a class="navbar-link is-arrowless">
		      여행/체험
		    </a>
		 <div class="navbar-dropdown">
		      <a class="navbar-item">
		        체험관광
		      </a>
		      <a class="navbar-item">
		        시티투어
		      </a>
		      <a class="navbar-item">
		        추천코스
		      </a>
		 </div>
	 	 </div>
	 	 <div class="navbar-item has-dropdown is-hoverable">
	    	<a class="navbar-link is-arrowless">
		      관광안내
		    </a>
		<div class="navbar-dropdown">
			<a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
			  공지사항
			</a>
		</div> 
		</div>
	 	 
	
	
	<div class="navbar-end">
	  <div class="navbar-item">
	  	<c:if test="${empty sid }">
	 <div class="buttons">
	   <a href="${path2 }/user/agree.jsp" class="button is-primary">
	     <strong>회원가입</strong>
	   </a>
	   <a href="${path2 }/user/login.jsp" class="button is-light">
	     	로그인
	   </a>
	 </div>
	</c:if>
	<c:if test="${not empty sid }">
	 <div class="buttons">
	   <a href="${path2 }/UserInfoCtrl.do" class="button is-primary">
	     <strong>Member Info</strong>
	   </a>
	   <a href="${path2 }/UserLogoutCtrl.do" class="button is-light">
	     	로그아웃
	   </a>
		<c:if test='${sid.equals("admin")}'>
		   <a href="${path2 }/AdminCtrl.do" class="button is-danger">
		     <strong>Admin</strong>
		   </a>
		 </c:if>
	 </div>
	</c:if>
  		</div>
	</div>
  </div>
</nav>