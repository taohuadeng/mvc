<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../head.jsp"></jsp:include>
<script type="text/javascript" src="${rc.contextPath}/js/jquery/highcharts/highcharts.js"></script>
<script type="text/javascript" src="${rc.contextPath}/js/jquery/highcharts/modules/thd_exporting.src.js"></script>
<script type="text/javascript">
	var chart;
	$(document).ready(
			function() {
				Highcharts.setOptions({colors: ['#058DC7', '#50B432', '#ED561B', '#DDDF00', '#24CBE5', '#64E572', '#FF9655',  '#FFF263', '#6AF9C4']});
				chart = new Highcharts.Chart(
						{
							chart : {
								renderTo : 'container',
								defaultSeriesType : 'column'
							},
							title : {
								text : '各个地区年降雨量比例'
							},
							subtitle : {
								text : '来源: 国际气象局'
							},
							xAxis : {
								categories : [ 'Jan', 'Feb', 'Mar', 'Apr',
										'May', 'Jun', 'Jul', 'Aug', 'Sep',
										'Oct', 'Nov', 'Dec' ]
							},
							yAxis : {
								min : 0,
								title : {
									text : 'Rainfall (mm)'
								}
							},
							legend : {
								layout : 'vertical',
								backgroundColor : '#FFFFFF',
								align : 'left',
								verticalAlign : 'top',
								x : 100,
								y : 70,
								floating : true,
								shadow : true
							},
							tooltip : {
								formatter : function() {
									return '' + this.x + ': ' + this.y + ' mm';
								}
							},
							credits:{//标签控制
								enabled:false
							},
							exporting:{//导出
								enabled:true, //是否显示导出按钮 默认显示true
								url:$('#export').attr('action')+'/common/exportSvg'
							},
							plotOptions : {
								column : {
									pointPadding : 0.2,
									borderWidth : 0
								}
							},
							series : [
									{
										name : 'Tokyo12',
										data : [ 49.9, 71.5, 106.4, 129.2,
												144.0, 176.0, 135.6, 148.5,
												216.4, 194.1, 95.6, 54.4 ]

									},
									{
										name : 'New York',
										data : [ 83.6, 78.8, 98.5, 93.4, 106.0,
												84.5, 105.0, 104.3, 91.2, 83.5,
												106.6, 92.3 ]

									},
									{
										name : 'London',
										data : [ 48.9, 38.8, 39.3, 41.4, 47.0,
												48.3, 59.0, 59.6, 52.4, 65.2,
												59.3, 51.2 ]

									},
									{
										name : 'Berlin',
										data : [ 42.4, 33.2, 34.5, 39.7, 52.6,
												75.5, 57.4, 60.4, 47.6, 39.1,
												46.8, 51.1 ]

									} ]
						});
			});
</script>
</head>
<body>
<form id="export" action="${rc.contextPath}"></form>
<div id="container" style="width: 1000px; height: 500px; margin: 0 auto"></div>
</body>
</html>
