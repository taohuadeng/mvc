<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../head.jsp"></jsp:include>
<script type="text/javascript" src="${rc.contextPath}/js/report/operatorListReport.js"></script>
	<script>	
		 $(document).ready(function() {
		    //	加载适应窗口
		    base.fitGrid('reportOperator');
		}); 
	</script>
  </head>
  <body>
  		<table id="reportOperator" style="width:auto"></table>
  		<form id="reportOperatorFrom" action="${rc.contextPath}/report/operatorReportExport" method="post"></form>
  		<form id="path" action="${rc.contextPath}"></form>
  </body>
</html>
