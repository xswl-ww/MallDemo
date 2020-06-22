<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@page import="com.dao.ItemsDAO"%>
<%@page import="com.entity.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>电子商务购物平台</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/shop-homepage.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">

<script>
	function showtime() {
		var myDate = new Date();
		document.getElementById("time").innerHTML = myDate.getHours() + "点"
				+ myDate.getMinutes() + "分" + myDate.getSeconds() + "秒";
		setTimeout("showtime()", 1000);
	}
	function remove(){
	var Otext = document.getElementById("stext");
	Otext.value="";
	
	}
	function oncl() {
	alert('请先登录！');
	}
</script>

<style type="text/css">
#rows{
width:1400px;
}
section .centain .hot_shop>h2 {
				height: 60px;
				font-weight: normal;
				font-size: 20px;
				line-height: 60px;
				margin-left: 20px;
				color: dimgray;
			}
			
			section .centain .hot_shop>ul {
				height: 430px;
			}
			
			section .centain .hot_shop>ul>li {
				height: 428px;
				width: 302.5px;
				list-style: none;
				display: inline-block;
				float: left;
				border: 1px solid gainsboro;
				position: relative;
			}
			
			section .centain .hot_shop>ul>li>span {
				display: block;
				height: 70px;
			}
			
			section .centain .hot_shop>ul>li>img {
				position: relative;
				top: 0;
				left: 50%;
				transform: translateX(-50%);
			}
			
			section .centain .hot_shop>ul>li>span:nth-of-type(2) {
				height: 20px;
				background-color: darkgoldenrod;
				margin-bottom: 15px;
			}
			
			section .centain .hot_shop>ul>li>h3 {
				font-weight: normal;
				text-align: center;
				font-size: 17px;
				margin-bottom: 8px;
			}
			
			section .centain .hot_shop>ul>li>p {
				text-align: center;
				font-size: 10px;
				color: red;
				margin-bottom: 20px;
			}
			
			section .centain .hot_shop>ul>li:nth-of-type(1)>p {
				color: dimgray;
			}
			
			section .centain .hot_shop>ul>li>h4 {
				font-weight: normal;
				text-align: center;
				font-size: 20px;
				color: red;
			}
			
			section .centain .hot_shop>ul>li>div {
				width: 180px;
				height: 30px;
				position: absolute;
				bottom: 20px;
				left: 50px;
				background-color: white;
				display: none;
				margin-left: 10px;
			}
			
			section .centain .hot_shop>ul>li>div>input {
				width: 80px;
				height: 30px;
				border: none;
				border: 1px solid darkgrey;
				border-radius: 5px;
				text-align: center;
				line-height: 30px;
				font-size: 10px;
			}
			
			section .centain .hot_shop>ul>li>div>input:nth-child(2) {
				width: 95px;
				background-color: darkblue;
				color: white;
				border: none;
			}
			
			/**section .centain .hot_shop>ul>li:nth-child(3)>div>input {
				margin-left: 50px;
			}*/
			
			section .centain .hot_shop>ul>li:hover {
				box-shadow: 1px 1px 50px #999 inset;
			}
			
			section .centain .hot_shop>ul>li:hover div {
				display: block;
			}
			
			section .centain .hot_shop>ul>li>div>input:nth-child(1):hover {
				background-color: grey;
			}
			
			section .centain .hot_shop>ul>li>div>input:nth-child(2):hover {
				background-color: midnightblue;
			}
			
			
			/**
			footer的css样式
			*/
			footer {
				width: 100%;
				height: 320px;
				position: relative;
				background-color: black;
				
			}
			
			footer .foot_top {
				width: 1215px;
				height: 130px;
				position: relative;
				top: 100px;
				left: 50%;
				transform: translateX(-50%);
				border-bottom: gray solid 1px;
			}
			
			footer .foot_top .foot_text {
				width: 800px;
				height: 90px;
				float: left;
			}
			
			footer .foot_top .foot_text>li {
				display: inline-block;
				list-style: none;
				margin-right: 85px;
			}
			
			footer .foot_top .foot_text>li>ul>li {
				list-style: none;
				font-size: 13px;
				margin-bottom: 5px;
			}
			
			footer .foot_top .foot_text>li:last-child {
				margin: 0;
			}
			
			footer .foot_top .foot_text>li>ul>li>a {
				text-decoration: none;
				color: gray;
			}
			
			footer .foot_top .foot_text>li>ul>li>a:hover {
				color: #008B8B;
			}
			
			footer .foot_top .right_text {
				width: 205px;
				height: 100px;
				position: absolute;
				right: 0;
				top: 0;
			}
			
			footer .foot_top .right_text>p:nth-of-type(1) {
				width: 190px;
				height: 40px;
				color: black;
				font-size: 27px;
				float: right;
			}
			
			footer .foot_top .right_text>p:nth-of-type(2) {
				color: gray;
				width: 240px;
				position: relative;
				top: 0px;
				font-size: 12px;
				transform: translateX(-45px);
			}
			
			footer .foot_top .right_text>div {
				width: 130px;
				height: 30px;
				border-radius: 3px;
				color: midnightblue;
				position: absolute;
				bottom: 0;
				right: 0;
				border: silver solid 1px;
				text-align: center;
				line-height: 30px;
			}
			
			footer .foot_bottom {
				width: 1230px;
				height: 70px;
				font-size: 10px;
				color: darkslategray;
				position: relative;
				top: 120px;
				left: 50%;
				transform: translateX(-50%);
			}
			
			footer .foot_bottom>div {
				width: 700px;
				height: 40px;
				float: left;
			}
			
			footer .foot_bottom>div>p {
				width: 500px;
				float: left;
			}
			
			footer .foot_bottom>div>a {
				text-align: center;
				width: 60px;
				text-decoration: none;
				float: left;
				margin-left: 5px;
				border-left: gainsboro solid 1px;
			}
			
			footer .foot_bottom>div>a:hover {
				color: darkslategray;
			}
			
			footer .foot_bottom>div>a:nth-of-type(4) {
				width: 400px;
				height: 20px;
				border-left: none;
				text-align: initial;
				float: left;
				color: gray;
				padding-top: 10px;
			}
			
			footer .foot_bottom>ul {
				top: 0;
				right: 0;
				width: 115px;
				height: 50px;
				position: absolute;
				top: -70px;
				right: 0;
			}
			
			footer .foot_bottom>ul>li {
				display: block;
				height: 100px;
			}
			
			footer .foot_bottom>ul>li>div {
				width: 115px;
				height: 50px;
				border-radius: 5px;
			}
			
			footer .foot_bottom>ul>li>div>span {
				position: relative;
				top: 20px;
				left: 15px;
			}
			
			footer .foot_bottom>ul>li>div>p {
				position: relative;
				top: 19px;
				left: 18px;
			}
			
			footer .foot_bottom>ul>li>div:nth-child(2)>span {
				display: block;
				width: 20px;
				height: 20px;
				overflow: hidden;
				float: left;
			}
			
			footer .foot_bottom>ul>li>div:nth-child(2)>p,
			footer .foot_bottom>ul>li>div:nth-child(1)>p {
				width: 25px;
				height: 20px;
				float: left;
				margin-left: 10px;
			}
			
			footer .foot_bottom>ul>li>div:nth-child(1) {
				display: none;
			}
			
			footer .foot_bottom>ul>li>div:nth-child(1)>span {
				display: block;
				width: 20px;
				height: 20px;
				overflow: hidden;
				float: left;
			}
			
			footer .foot_bottom>ul>li>div:nth-child(1)>span>img {
				transform: translateY(-30px);
			}
			
			footer .foot_bottom>ul>li:hover {
				border-radius: 5px;
				background-color: white;
				border: 1px solid gainsboro;
			}
			
			footer .foot_bottom>ul>li:hover>div:nth-child(1) {
				display: block;
			}
			#searchFrame{
				font-style: italic;
			}
</style>

</head>
<%
	//ItemsDAO itemsDAO = new ItemsDAO();
	//ArrayList<Items> arrayList = (ArrayList) itemsDAO.getAllItems();
%>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><i
					class="fa fa-shopping-cart fa-lg"></i> Coffee
</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<div>
				<ul class="nav navbar-nav">
					<li><a href="https://mall.jd.com/index-1000072421.html">京东商城</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="https://geocafe.tmall.com/shop/view_shop.htm?spm=a230r.7195193.1997079397.2.18bb58bfWgv6VR">天猫旗舰店</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="https://www.bilibili.com/video/BV1kx411t7Bt?from=search&seid=5046494751863227660">咖啡科普</a></li>
				</ul>
				<ul class="nav navbar-nav">
					<li><a href="https://www.bilibili.com/video/BV1H7411c7m3?from=search&seid=5046494751863227660">咖啡入门指南</a></li>
				</ul>
			</div>
			<div style="width: 270px;float: left;margin-top: 10px;margin-left: 10px;">
                <div id="searchFrame" style="float: left;">
                    <input type="text" style="width: 120%;" placeholder="    咖啡粉/豆"  id="stext">
                </div>
                <div style="float: right;background-color: red; width: 70px; height:26px; margin-left: 1px;">
                    <p style="font-size: 13px;margin-top: 4px; margin-left: 18px;">
                    	<a href="search.jsp">搜索</a>
                    </p>
                </div>
            </div>
			<div style="float:right">
			
			    <ul class="nav navbar-nav">
					 <li>
					<!--  <a href="cart.jsp">我的交易记录</a> -->
					  <a id="time">
					  <script type="text/javascript">
							showtime();
						</script> </a>
					 </li>
				</ul>
				
				<ul class="nav navbar-nav">
					<li><a href="login.jsp">登录</a></li>
				</ul>
				
				<
				<ul class="nav navbar-nav">
					<li><a href="register.jsp">注册</a></li> 
				</ul>
				
				
			</div>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row" >

			<div class="row carousel-holder">

				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<img class="slide-image" src="images/11.jpg" alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="images/22.jpg" alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="images/33.jpg" alt="">
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>

			</div>

			<div class="row" id="rows">
				
			<section>
<div class="centain">
<div class="hot_shop">
					<h2>热门商品</h2>
					<ul>
					
						<li><span></span><img src="images/lanshan.jpg" />
							<h3>蓝山咖啡豆</h3>
							<p>中度烘焙 口感均衡</p><span></span>
							<h4>￥ 89.00</h4>
							<div><input type="button" value="查看详情" /> <input type="button" value="加入购物车" onclick="oncl()" style="background-color: #ac2925"/> </div>
						</li>
						
						<li><span></span><img src="images/moka.jpg" />
							<h3>摩卡咖啡豆</h3>
							<p>柔和果酸 坚果余味</p><span></span>
							<h4>￥ 69.00</h4>
							<div><input type="button" value="查看详情" /> <input type="button" value="加入购物车" onclick="oncl()" style="background-color: #ac2925""/></div>
						</li>
						
						<li><span></span><img src="images/rishi.jpg" />
							<h3>日式炭烧咖啡豆</h3>
							<p>虽苦不涩 回甘强烈</p><span></span>
							<h4>¥ 59.00</h4>
							<div> <input type="button" value="查看详情" /> <input type="button" value="加入购物车"  onclick="oncl()" style="background-color: #ac2925"/></div>
						</li>
						
						<li><span></span><img src="images/yishi.jpg" />
							<h3>意式咖啡豆</h3>
							<p>细腻丰厚 烈苦无酸</p><span></span>
							<h4>￥ 59.00</h4>
							<div> <input type="button" value="查看详情" /> <input type="button" value="加入购物车" onclick="oncl()" style="background-color: #ac2925"/> </div>
						</li>
						
						<li><span></span><img src="images/mantening.jpg" />
							<h3>曼特宁咖啡豆</h3>
							<p>甜味丰厚 耐人寻味</p><span></span>
							<h4>¥ 59.00</h4>
							<div> <input type="button" value="查看详情" /> <input type="button" value="加入购物车" onclick="oncl()" style="background-color: #ac2925"/></div>
						</li>
						
						<li><span></span><img src="images/gelunbiya.jpg" />
							<h3>哥伦比亚咖啡豆</h3>
							<p>清新湿香 明朗果酸</p><span></span>
							<h4>¥ 59.00</h4>
							<div> <input type="button" value="查看详情" /> <input type="button" value="加入购物车" onclick="oncl()" style="background-color: #ac2925"/></div>
						</li>
						
						<li><span></span><img src="images/xiangchun.jpg" />
							<h3>香醇咖啡豆</h3>
							<p>元气满满 黑巧口味</p><span></span>
							<h4>¥ 59.00</h4>
							<div> <input type="button" value="查看详情" /><input type="button" value="加入购物车" onclick="oncl()" style="background-color: #ac2925"/></div>
							</li>
						<li>
						<span></span><img src="images/baxi.jpg" />
							<h3>巴西咖啡豆</h3>
							<p>润口顺滑 杏仁甘甜</p><span></span>
							<h4>¥ 59.00</h4>
							<div> <input type="button" value="查看详情" /> <input type="button" value="加入购物车" onclick="oncl()" style="background-color: #ac2925"/> </div>
                         </li>					
					</ul>
				</div>
</div>
</section>
				

				

			</div>
		</div>
	</div>

<hr/>
		<!-- Footer 
		<footer>
		<hr>
			<div class="row">
				<div class="col-lg-12 text-center">
					<p>banq &copy; 电子商务购物平台</p>
				</div>
			</div>
		</footer>
	</div>
-->

<footer>
<div class="foot_top">
				<ul class="foot_text">
					<li>
						<ul>
							<li>
								<p style="color: white;">订单服务</p>
							</li>
							<li><a href="#">购买指南</a></li>
							<li><a href="#">支付方式</a></li>
							<li><a href="#">送货政策</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li>
								<p style="color: white;">服务支持</p>
							</li>
							<li><a href="#">售后服务</a></li>
							<li><a href="#">在线客服</a></li>
							<li><a href="#">零售门店</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li>
								<p style="color: white;">自助服务</p>
							</li>
							<li><a href="#">热点咨询</a></li>
							<li><a href="#">预约购买</a></li>
							<li><a href="#">订单物流</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li>
								<p style="color: white;">媒体中心</p>
							</li>
							<li><a href="#">新闻动态</a></li>
							<li><a href="#">官方视频</a></li>
							<li><a href="#">图片资源</a></li>
						</ul>
					</li>
					<li>
					<!--  
						<ul>
							<li>
							  	<p>关于公司</p>
							</li>
							<li><a href="#">公司简介</a></li>
							<li><a href="#">加入我们</a></li>
							<li><a href="#">联系我们</a></li>
							
						</ul>
						-->
					</li>
					
				</ul>
				<div class="right_text">
					<p style="color: white;">400-626-5666</p>
					<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 周一至周日 9:00-18:00(仅收市话费)</p>
					<div><span>?</span>在线帮助</div>
				</div>
			</div>
			<div class="foot_bottom">
				<div>
					<p>Copyright ©, Smartisan Digital Co., Ltd. All Rights Reserved.天猫集团</p> <a href="#">法律声明</a> <a href="#"> 隐私条款</a> <a href="#"> 开发者中心</a> <a href="#">京ICP备14041720号-1&nbsp;
京ICP证140622号&nbsp;
京公网安备11010502025474</a> </div>
				<ul>
					<li>
						<div><span><img src="images/09.png"/></span>
							<p>美国</p>
						</div>
						<div> <span><img src="images/09.png"/></span>
							<p>中国</p>
						</div>
					</li>
				</ul>
			</div>
		</footer>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>

