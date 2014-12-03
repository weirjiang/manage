<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--
	===
	This comment should NOT be removed.
	
	Charisma v2.0.0
	
	Copyright 2012-2014 Muhammad Usman
	Licensed under the Apache License v2.0
	http://www.apache.org/licenses/LICENSE-2.0
	
	http://usman.it
	http://twitter.com/halalit_usman
	===
-->
<meta charset="utf-8">
<title>乾坤车城工作流后台管理系统</title>
<base href="${basePath}" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">

<!-- The styles -->
<link id="bs-css" href="${basePath}css/bootstrap-cerulean.min.css" rel="stylesheet">

<link href="${basePath}css/charisma-app.css" rel="stylesheet">
<link href="${basePath}bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet">
<link href="${basePath}bower_components/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">
<link href="${basePath}bower_components/chosen/chosen.min.css" rel="stylesheet">
<link href="${basePath}bower_components/colorbox/example3/colorbox.css" rel="stylesheet">
<link href="${basePath}bower_components/responsive-tables/responsive-tables.css" rel="stylesheet">
<link href="${basePath}bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css" rel="stylesheet">
<link href="${basePath}css/jquery.noty.css" rel="stylesheet">
<link href="${basePath}css/noty_theme_default.css" rel="stylesheet">
<link href="${basePath}css/elfinder.min.css" rel="stylesheet">
<link href="${basePath}css/elfinder.theme.css" rel="stylesheet">
<link href="${basePath}css/jquery.iphone.toggle.css" rel="stylesheet">
<link href="${basePath}css/uploadify.css" rel="stylesheet">
<link href="${basePath}css/animate.min.css" rel="stylesheet">

<link rel="stylesheet" href="${basePath}css/jquery.scrollToTop.css" />

<!-- jQuery -->
<script src="${basePath}bower_components/jquery/jquery.min.js"></script>
<script src="${basePath}js/jquery.form.js"></script>
<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- The fav icon -->
<link rel="shortcut icon" href="${basePath}img/favicon.ico">
</head>
<body>
	
	<a href="#top" id="toTop"></a>

	<!-- topbar starts -->
	<div class="navbar navbar-default" role="navigation">

		<div class="navbar-inner">
			<button type="button" class="navbar-toggle pull-left animated flip">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="admin/homemgr/i"> 
				<img alt="Charisma Logo" src="${basePath}img/logo20.png" class="hidden-xs" /> <span>Charisma</span>
			</a>

			<!-- user dropdown starts -->
			<div class="btn-group pull-right">
				<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i>
					<span class="hidden-sm hidden-xs"> 账户</span> 
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu">
					<li><a href="#" class="btn-setting">个人资料</a></li>
					<li class="divider"></li>
					<li><a href="javascript:void(0);" onclick="javascript:logout();">注销</a></li>
				</ul>
			</div>
			<!-- user dropdown ends -->

			<!-- theme selector starts -->
			<div class="btn-group pull-right theme-container animated tada">
				<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-tint"></i>
					<span class="hidden-sm hidden-xs"> 主题/皮肤</span> 
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" id="themes">
					<li><a data-value="classic" href="#"><i class="whitespace"></i> 经典</a></li>
					<li><a data-value="cerulean" href="#"><i class="whitespace"></i> Cerulean</a></li>
					<li><a data-value="cyborg" href="#"><i class="whitespace"></i> Cyborg</a></li>
					<li><a data-value="simplex" href="#"><i class="whitespace"></i> Simplex</a></li>
					<li><a data-value="darkly" href="#"><i class="whitespace"></i> Darkly</a></li>
					<li><a data-value="lumen" href="#"><i class="whitespace"></i> Lumen</a></li>
					<li><a data-value="slate" href="#"><i class="whitespace"></i> Slate</a></li>
					<li><a data-value="spacelab" href="#"><i class="whitespace"></i> Spacelab</a></li>
					<li><a data-value="united" href="#"><i class="whitespace"></i> United</a></li>
				</ul>
			</div>
			<!-- theme selector ends -->

			<ul class="collapse navbar-collapse nav navbar-nav top-menu">
				<li><a href="${basePath}" title="访问工作流"><i class="glyphicon glyphicon-globe"></i></a></li>
				<li>
					<form class="navbar-search pull-left">
						<input placeholder="搜索" class="search-query form-control col-md-10" name="query" type="text">
					</form>
				</li>
			</ul>
		</div>
	</div>
	<!-- topbar ends -->
	<div class="ch-container">
		<div class="row">

			<!-- left menu starts -->
			<div class="col-sm-2 col-lg-2">
				<div class="sidebar-nav">
					<div class="nav-canvas">
						<div class="nav-sm nav nav-stacked"></div>
						<ul class="nav nav-pills nav-stacked main-menu">
							<li class="nav-header">&nbsp;</li>
							<li><a class="ajax-link" href="admin/homemgr/i"><i class="glyphicon glyphicon-home"></i><span> 首页</span></a></li>
							<li><a class="ajax-link" href="admin/ordermgr/i"><i class="glyphicon glyphicon-calendar"></i><span> 订单管理</span></a></li>
							<li><a class="ajax-link" href="admin/usermgr/i"><i class="glyphicon glyphicon-user"></i><span> 用户管理</span></a></li>
							<li><a class="ajax-link" href="admin/rolemgr/i"><i class="glyphicon glyphicon-th-large"></i><span> 角色管理</span></a></li>
							<li><a class="ajax-link" href="admin/dealer/i"><i class="glyphicon glyphicon-gift"></i><span> 供应商管理</span></a></li>
							<li><a class="ajax-link" href="admin/reportmgr/i"><i class="glyphicon glyphicon-list-alt"></i><span> 报表统计</span></a></li>
							<li><a class="ajax-link" href="admin/flowmgr/i"><i class="glyphicon glyphicon-random"></i><span> 流程管理</span></a></li>
							<li><a class="ajax-link" href="admin/codemgr/i"><i class="glyphicon glyphicon-font"></i><span> 编码表</span></a></li>
							<li><a class="ajax-link" href="admin/reportmgr/i"><i class="glyphicon glyphicon-picture"></i><span> 报表统计</span></a></li>
							<li><a class="ajax-link" href="admin/dealer/dataTable"><i class="glyphicon glyphicon-picture"></i><span>dataTable</span></a></li>
							<li class="accordion">
								<a href="#"><i class="glyphicon glyphicon-wrench"></i><span> 系统管理</span></a>
								<ul class="nav nav-pills nav-stacked">
									<li><a class="ajax-link" href="admin/systemmgr/privilege"><i class="glyphicon glyphicon-eye-open"></i><span> 权限管理</span></a></li>
									<li><a class="ajax-link" href="admin/systemmgr/menu"><i class="glyphicon glyphicon-tasks"></i><span> 菜单管理</span></a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<tiles:insertAttribute name="content" />
			
			<div class="modal fade" id="alertModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" onclick="javascript:reloadPage();">×</button>
							<h3>提示</h3>
						</div>
						<div class="modal-body">
							<input id="isReloadPage" type="hidden" value="yes" />
							<p><span id="alertMsg"></span></p>
						</div>
						<div class="modal-footer">
							<a href="javascript:void(0);" onclick="javascript:reloadPage();" class="btn btn-default" data-dismiss="modal">关闭</a>
						</div>
					</div>
				</div>
			</div>
			
		</div>

		<hr>

		<footer class="row">
			<p class="col-md-9 col-sm-9 col-xs-12 copyright">
				&copy; <a href="http://usman.it" target="_blank">Muhammad Usman</a>
				2012 - 2014
			</p>

			<p class="col-md-3 col-sm-3 col-xs-12 powered-by">
				Powered by: <a href="http://usman.it/free-responsive-admin-template">Charisma</a>
			</p>
		</footer>

	</div>
	<!--/.fluid-container-->

	<!-- external javascript -->

	<script src="${basePath}bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- library for cookie management -->
	<script src="${basePath}js/jquery.cookie.js"></script>
	<!-- calender plugin -->
	<script src="${basePath}bower_components/moment/min/moment.min.js"></script>
	<script src="${basePath}bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
	<!-- data table plugin -->
<!-- 	<script src="${basePath}js/jquery.dataTables.min.js"></script> -->
	
	<!-- select or dropdown enhancer -->
	<script src="${basePath}bower_components/chosen/chosen.jquery.min.js"></script>
	<script src="${basePath}js/jquery.dataTables1.10.4.js"></script>
	<link href="${basePath}css/jquery.dataTables1.10.4.css" rel="stylesheet">
	<!-- plugin for gallery image view -->
	<script src="${basePath}bower_components/colorbox/jquery.colorbox-min.js"></script>
	<!-- notification plugin -->
	<script src="${basePath}js/jquery.noty.js"></script>
	<!-- library for making tables responsive -->
	<script src="bower_components/responsive-tables/responsive-tables.js"></script>
	<!-- tour plugin -->
	<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
	<!-- star rating plugin -->
	<script src="${basePath}js/jquery.raty.min.js"></script>
	<!-- for iOS style toggle switch -->
	<script src="${basePath}js/jquery.iphone.toggle.js"></script>
	<!-- autogrowing textarea plugin -->
	<script src="${basePath}js/jquery.autogrow-textarea.js"></script>
	<!-- multiple file upload plugin -->
	<script src="${basePath}js/jquery.uploadify-3.1.min.js"></script>
	<!-- history.js for cross-browser state change on ajax -->
	<script src="${basePath}js/jquery.history.js"></script>
	<!-- application script for Charisma demo -->
	<script src="${basePath}js/charisma.js"></script>
	
	<script src="${basePath}js/jQuery.stringify.js"></script>
	
	<script src="${basePath}js/jquery.scrollToTop.js"></script>
	
	<script>
		$(function() {
		    $("#toTop").scrollToTop(1000);
		});
	
		function logout() {
			$.ajax({
				type: 'get',
				url: '${basePath}passport/ajaxLogout',
				success: function(data) {
					if (data == 'ok') {
						window.location.href = '${basePath}admin/login';
					}
				}
			});
		}
		
		function openAlertDialog(msg, isReloadPage) {
			$('input#isReloadPage').val(isReloadPage || 'yes')
			$('span#alertMsg').html(msg);
			$('div#alertModal').modal({
				keyboard: false
			});
		}
		
		function reloadPage() {
			if ($('input#isReloadPage').val() == 'yes') {				
				window.location.reload();
			}
		}
		
		function initDataTable(dataTableId) {
			$('table#' + dataTableId).dataTable({
				sDom : "<'row'<'col-md-6'l><'col-md-6'f>r>t<'row'<'col-md-12'i><'col-md-12 center-block'p>>",
				sPaginationType : "bootstrap",
				oLanguage : {
					oPaginate : {
						sFirst : "首页",
						sLast : "末页",
						sNext : "下一页",
						sPrevious : "上一页"
					},
					sEmptyTable : "记录为空",
					sInfo : "第 _START_ 至 _END_ 条 / 共 _TOTAL_ 条",
					sInfoEmpty : "第 0 至 0 条 / 共 0 条",
					sInfoFiltered : "(从 _MAX_ 条记录中过滤)",
					sLengthMenu : "每页 _MENU_ 条记录",
					sLoadingRecords : "加载中...",
					sProcessing : "处理中...",
					sSearch : "搜索:",
					sZeroRecords : "未找到符合条件的记录"
				},
				aLengthMenu: [5,10,25,50,100],
				iDisplayLength : 5
			});
		}
	</script>
</body>
</html>
