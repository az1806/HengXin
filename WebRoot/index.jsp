<%@ page language="java" import="java.util.*,com.hengxin.entil.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>某某家具设计公司企业官网-模板之家</title>
    ﻿<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate icon" type="image/png" href="images/favicon.png">
<link rel='icon' href='favicon.ico' type='image/x-ico' />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="css/default.min.css?t=227" />
<!--[if (gte IE 9)|!(IE)]><!-->
<script type="text/javascript" src="lib/jquery/jquery.min.js"></script>
<!--<![endif]-->
<!--[if lte IE 8 ]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="lib/amazeui/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script type="text/javascript" src="lib/handlebars/handlebars.min.js"></script>
<script type="text/javascript" src="lib/iscroll/iscroll-probe.js"></script>
<script type="text/javascript" src="lib/amazeui/amazeui.min.js"></script>
<script type="text/javascript" src="lib/raty/jquery.raty.js"></script>
<script type="text/javascript" src="js/main.min.js?t=1"></script>
  </head>
  
  <body>
     <jsp:include page="head.jsp"></jsp:include>
     
<section class="index-section">
    <div>
        <span></span>
        <span></span>
    </div>
    <div class="index-content">
        <section class="index-content-section-first"><div><img src="images/gsjj.jpg	" alt=""></div> </section>
        <section class="index-content-section-second">
            <div>
                <div class="index-auto">
            <article>公司介绍</article>
            <h6>COMPANY INTRODUCTION</h6>
            <main>
            <% General com = (General) request.getAttribute("General"); %>
                <%= com.getCpwh() %>
            </main>
            <a class="index-button" href="/HengXin/about">查看详情</a>
                </div>
            </div>
        </section>
    </div>
</section>

<section class="index-product">
    <main>
     	<ul>
     	 <%  List<Goodstype> gds =(List<Goodstype>)request.getAttribute("gds"); %>
                <%  for(int i=0;i<gds.size();i++){%>
                 <li><a href="/HengXin/goodstype"><%= gds.get(i).getGdstype() %></a></li>
                 <% } %>
        </ul>
    </main>
    <main></main>
    <main></main>
</section>
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
<section class="index-margin-bottom">
    <div class="index-morecase">
        <span></span>
        <a href="/HengXin/goodstype">MORE &#62; &#62;</a>
    </div>
    <div class="index-content">
         <%  List<Goods> glist =(List<Goods>)request.getAttribute("glist"); %>
                <%  for(int j=0;j<glist.size();j++){%>
       <div class="product-list">
            <div class="am-u-sm-6 am-u-md-6 am-u-lg-4">
                <a href="/HengXin/goodstype">
                    <img src="<%= glist.get(j).getGdsurl() %>"  />
                </a>
            </div>
            <% } %>
            
        </div>
    </div>
</section>


<section class="index-margin-bottom">
    <div class="index-morecase">
        <span></span>
        <a href="/HengXin/newstype">MORE &#62; &#62;</a>
    </div>
    <div class="index-content">


        <div class="new-index">
         <%  List<News> nlist =(List<News>)request.getAttribute("nlist"); %>
         <ul>
                <li><img  src="images/zyxw.png" alt=""> </li>
                <li>  <a href="/HengXin/newstype"><h3><%= nlist.get(0).getNewsname() %></h3>
                    <article><%= nlist.get(0).getNewtj() %></article></a></li>
            </ul>
            <ul>
               
                <%  for(int j=1;j<nlist.size()-1;j++){%>
                <li>  <a href="/HengXin/newstype"><h3><%= nlist.get(j).getNewsname() %></h3>
                    <article><%= nlist.get(j).getNewtj() %></article></a></li>
             <% } %>
            </ul>
           

        </div>
    </div>
</section>

﻿<jsp:include page="yejiao.jsp"></jsp:include>
  </body>
</html>
