<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>首页 - 统一开发平台 - UI库</title>

		<meta name="description" content="This is page-header (.page-header &gt; h1)" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="/assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="/assets/css/ace.min.css" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="/assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="/assets/css/ace-rtl.min.css" />
		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="/assets/css/ace-ie.min.css" />
		<![endif]-->
		<!--[if lte IE 8]>
		<script src="/assets/js/html5shiv.min.js"></script>
		<script src="/assets/js/respond.min.js"></script>
		<![endif]-->
        <!--[if !IE]> -->
        <script type="text/javascript">
            window.jQuery || document.write("<script src='/assets/js/jquery.min.js'>"+"<"+"/script>");
        </script>
        <!-- <![endif]-->
        <!--[if IE]>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='/assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
        <![endif]-->
        <script type="text/javascript">
            if('ontouchstart' in document.documentElement) document.write("<script src='/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
        </script>
        <script src="/assets/js/bootstrap.min.js"></script>
        <!--[if lte IE 8]>
		<script src="/assets/js/excanvas.min.js"></script>
        <![endif]-->
        <script src="/assets/js/jquery-ui.custom.min.js"></script>
        <script src="/assets/js/jquery.ui.touch-punch.min.js"></script>
        <script src="/assets/js/ace-elements.min.js"></script>
        <script src="/assets/js/ace.min.js"></script>

        <script type="text/javascript">
            $(function () {
                //加载首页
                $(".page-content").load("/main");
                //导航条点击事件发生，加载对应的页面
                $("#sidebar ul li").click(function (e) {
                    //将所有导航条中的选中的效果去掉
                    $("#sidebar ul li").each(function () {
						$(this).removeClass("active");
                    });
                    //获取选中页面的url
                    var url = $(e.target).data("url");//e.target表示e的<a>标签
                    //如果选中按钮有url就加载对应的页面
					if(url){
					    //加载选中页面
                        $(".page-content").load(url);
                        //导航条添加选中效果
                        $(e.target).parent().addClass("active");//<a>标签的上一层<li>标签
						//修改title
                        $("title").html($(".menu-text").html());

					}
                });
            });

        </script>


	</head>

	<body class="no-skin">
		<#include "head.ftl" encoding="utf-8">

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<#include "left.ftl" encoding="utf-8">

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="index.html">UI库首页</a>
						</li>
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<div class="nav-search" id="nav-search">
						<form class="form-search">
							<span class="input-icon">
								<input type="text" placeholder="请输入关键字 ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
								<i class="ace-icon fa fa-search nav-search-icon"></i>
							</span>
						</form>
					</div><!-- /.nav-search -->
					<!-- /section:basics/content.searchbox -->
				</div>

                <div class="page-content">

                </div><!-- /.main-content -->
				<#include "footer.ftl" encoding="utf-8">

                <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
                </a>
            </div>
		</div><!-- /.main-container -->

	</body>
</html>
