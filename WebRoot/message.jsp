<%@ page language="java" import="java.util.*"  pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <title>某某家具设计公司企业官网-模板之家</title>
    ?<meta charset="UTF-8">
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
<div>
    <header class="header-article-list">
        <h1>在线留言</h1>

    </header>
<div>
   <form class="message-form" action="message" method="post" onsubmit="return checkForm(this)" >

       <label>姓名
           <input type="text" id="msgname" name="msgname">
           <span>*</span>
       </label>


       <label>电话
           <input type="text" id="msgphone" name="msgphone">
           <span>*</span>
       </label>
       
       
	   <label>邮箱
           <input type="text" id="msgemail" name="msgemail">
           <span>*</span>
       </label>
       

		<label>地址
           <input type="text" id="msgadress" name="msgadress">
           <span>*</span>
       </label>


       <label>内容
           <textarea id="msgdesc"  name="msgdesc"></textarea>
           <span>*</span>
       </label>


       <button type="submit" id="submitMsg"class="am-btn am-btn-danger">提交</button>
   </form>
</div>
</div>
<script type="text/javascript">
function checkForm(){
var msgname=document.getElementById("msgname").value;
var msgphone=document.getElementById("msgphone").value;
var msgemail=document.getElementById("msgemail").value;
var msgadress=document.getElementById("msgadress").value;
var msgdesc=document.getElementById("msgdesc").value;
if(msgname == "" || msgphone =="" || msgadress == "" || msgemail=="" || msgdesc==""){
	alert("不能为空");
	return false;
}
return true;
}
</script>
<jsp:include page="yejiao.jsp"></jsp:include>
</body>
</html>