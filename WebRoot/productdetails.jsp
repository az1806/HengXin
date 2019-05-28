<%@ page language="java" import="java.util.*,com.hengxin.entil.*"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>某某家具设计公司企业官网-模板之家</title> ﻿
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
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
	<section class="pro-list"> <aside class="pro-leftsidebar">
	<ul>
		<li><a>产品搜索</a>
			<ul id="pro-search">
				<li><a>
						<form>
							<input class="pro-search" type="text" id="nr" name="nr" /> <input
								class="pro-search-btn" type="button" value="提交" onclick="visit()" id="submit" />
						</form> </a>
				</li>
			</ul></li>
		<li><a>产品分类</a>
			<ul id="pro-category">
				<%
					List<Goodstype> gds =(List<Goodstype>)request.getAttribute("gds");
				%>
				<%
					for(int i=0;i<gds.size();i++){
				%>
				<li class="on"><a
					href="/HengXin/goodstype?type=<%=gds.get(i).getGdstypeid()%>"><%=gds.get(i).getGdstype()%></a>
				</li>
				<%
					}
				%>
			</ul></li>
	</ul>
	</aside> <aside class="pro-rightsidebar"> <header> <%
 	List<Goods> glista =(List<Goods>)request.getAttribute("glista");
 %>
	<%
		int type=Integer.parseInt(request.getParameter("type"));
	%>

	<p></p>
	<span>产品详情</span>
	<div class="product-nav">
		<a href="/HengXin/index">首页 </a>&#62;<a href="/HengXin/goodstype">产品展示</a>&#62;<a>
			<%=glista.get(type-1).getGdsname()%></a>
	</div>
	</header> <main>
	<div class="pro-right-left">
		<div class="pro-details-img">
			<img src="<%=glista.get(type-1).getGdsurl()%>">
		</div>
	</div>
	<div class="am-tabs pro-tabs" data-am-tabs>
		<ul class="am-tabs-nav am-nav am-nav-tabs">
			<li class="am-active"><a href="#tab1">详细说明1</a>
			</li>
			<li><a href="#tab2">详细说明2</a>
			</li>
		</ul>

		<div class="am-tabs-bd">
			<div class="am-tab-panel am-active" id="tab1">
				<ul>
					<li><span class="pro-tabs-constant"><%=glista.get(type-1).getSmid1()%>:
							<%=glista.get(type-1).getSm1()%><br> <%=glista.get(type-1).getSmid2()%>:
							<%=glista.get(type-1).getSm2()%><br> <%=glista.get(type-1).getSmid3()%>:
							<%=glista.get(type-1).getSm3()%></span></li>

				</ul>
			</div>
			<div class="am-tab-panel" id="tab2"><%=glista.get(type-1).getGdsdesc()%></div>
		</div>
	</div>
	</main> </aside> </section>
	﻿<jsp:include page="yejiao.jsp"></jsp:include>

</body>

</html>