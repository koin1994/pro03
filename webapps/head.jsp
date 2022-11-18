<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.4/dist/css/bulma-carousel.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bulma-carousel@4.0.3/dist/js/bulma-carousel.min.js"></script>
<style>
body, html { font-family: 'Noto Sans KR', sans-serif; }
.table { min-width:960px; }
#logo { display:block; width:200px; height:73px; padding-top : 24px; background-image:url("https://www.goyang.go.kr/visitgoyang/images/2020/common/h1.png");
background-size:75% auto; background-repeat:no-repeat; background-position:center center; }
#nav-group { border-bottom:3px solid #ddd; }
#gnb .navbar-link::after { content:""; display:none; }
#sidebar .navbar { display:block; width:100%; background-color:transparent; }
#sidebar .navbar-item { float:none; clear:both; display:block; width:100%; }
#frm1.search_form { border-top:2px solid #ddd; border-bottom:2px solid #ddd; height:60px; padding-top:10px; padding-bottom:10px;  }
#frm1 .inline { width:70%; float:left; margin-right:2%; }
#frm1.search_form .inline { display:inline-block; width:auto; } 
.navbar-item.has-dropdown.is-hoverable { min-width:110px; position:static; }
.navbar-item.has-dropdown.is-hoverable a { font-weight:800; }
.navbar-item.has-dropdown.is-hoverable.single { position:relative; }
#nav .navbar-dropdown.cate { min-width:940px; width:940px; position:absolute; left:50px; }
#nav .navbar-dropdown.single { min-width:150px; width:150px; left:auto; top:68px; }
#nav .navbar-dropdown.cate a { display:inline-block; padding:8px; margin-right:20px;  
width:120px; text-overflow:ellipsis; overflow:hidden; white-space:nowrap; 
font-weight:500; }
#nav .navbar-dropdown.single a { display:inline-block; width:150px; text-overflow:ellipsis; overflow:hidden; white-space:nowrap; 
font-weight:500; }
p.title { font-size:1.4rem; }
p.subtitle { font-size:1.1rem; }
.item_com {   overflow: hidden;  text-overflow: ellipsis;  display: -webkit-box;
  -webkit-line-clamp: 3;  -webkit-box-orient: vertical; font-size:0.9rem; }
.breadcrumb ul li:last-child { padding-right:1.5rem; }
.table { min-width:960px; }

background-size:100% auto; background-repeat:no-repeat; }
#nav { border-bottom:3px solid #ddd; }
</style>
<script src="https://code.jquery.com/jquery-latest.js"></script>