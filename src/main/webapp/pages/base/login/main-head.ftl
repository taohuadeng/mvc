<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"]/>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]/>
<!--标题开始-->
<div class="head">
	<span class="l"><img src="${rc.contextPath}/images/head-logo.gif"/></span>
   	<span class="r"><img src="${rc.contextPath}/images/head-pic.gif"/></span>
</div>
<!--标题结束-->
<!--菜单开始-->
<div class="nav_box" >
	<ul>
 		<li onmouseover="main.showMenu(1);" onmouseout="main.hideMenu(1);">
 			<div style="text-align:center;"><a class="item" href="#">试题管理</a></div>
 			<div  class="droplisthide_div" id="droplist_div_1">
 				<div class="droplist_top"></div>
 				<div  class="droplist_cont">
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toCategoryManager', '类别管理', '${rc.contextPath}/item/toCategoryManager', true);" title="类别管理">类别管理</a>

                    <a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toUpload', '上传附件', '${rc.contextPath}/file/toUpload', true);" title="上传附件">上传附件</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toUploadFile', '上传附件2', '${rc.contextPath}/file/toUpload2', true);" title="上传附件2">上传附件2</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('attachmentList', '查看附件', '${rc.contextPath}/common/attachmentList', true);" title="查看附件">查看附件</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toSendMailForm', '发送邮件', '${rc.contextPath}/mail/toSendMailForm', true);" title="发送邮件">发送邮件</a>
                    <@sec.authorize ifAllGranted="ROLE_ADMIN,ROLE_USER">
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="" title="投诉回访">投诉回访</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="" title="投诉调查">投诉调查</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="" title="投诉分析">投诉分析</a>
 					</@sec.authorize>
 				</div>
 				<div class="droplist_bottom"></div>
 			</div>
 		</li>
 		
 		<li onmouseover="main.showMenu(2);" onmouseout="main.hideMenu(2);">
 			<div style="text-align:center;"><a class="item" href="#">系统管理</a></div>
 			<div  class="droplisthide_div" id="droplist_div_2">
 				<div class="droplist_top"></div>
 				<div  class="droplist_cont">
 					<@sec.authorize ifAllGranted="ROLE_/system/role/*">
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('roleListForm', '角色管理', '${rc.contextPath}/system/role/roleListForm', true);" title="角色管理">角色管理</a>
 					</@sec.authorize>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('functionListForm', '权限管理', '${rc.contextPath}/system/function/functionListForm', true);" title="权限管理">权限管理</a>
 					<@sec.authorize ifAllGranted="ROLE_/system/operator/*">
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('operatorListForm', '用户管理', '${rc.contextPath}/system/operator/operatorListForm', true);" title="用户管理">用户管理</a>
 					</@sec.authorize>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('organizationListForm', '机构管理', '${rc.contextPath}/system/organization/organizationListForm', true);" title="机构管理">机构管理</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toOrgTreeForm', '异步树', '${rc.contextPath}/system/organization/toTestTreeForm', true);" title="异步树">异步树</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toOrgTreeForm', '机构树', '${rc.contextPath}/system/organization/toOrgTreeForm', true);" title="机构树">机构树</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('paramListForm', '参数管理', '${rc.contextPath}/param/paramListForm', true);" title="参数管理">参数管理</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('supplierListForm', '供应商维护', '${rc.contextPath}/supplier/supplierListForm', true);" title="供应商维护">供应商维护</a>
 				</div>
 				<div class="droplist_bottom"></div>
 			</div>
 		</li>
 		<li onmouseover="main.showMenu(3);" onmouseout="main.hideMenu(3);">
 			<div style="text-align:center;"><a class="item" href="#">示例</a></div>
 			<div  class="droplisthide_div" id="droplist_div_3">
 				<div class="droplist_top"></div>
 				<div  class="droplist_cont">
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('0000', '测试Tab1', '${rc.contextPath}/sample/sampleGridList', true);" title="测试Tab1">测试Tab1</a>
 				</div>
 				<div class="droplist_bottom"></div>
 			</div>
 		</li>
 		
 		<li onmouseover="main.showMenu(4);" onmouseout="main.hideMenu(4);">
 			<div style="text-align:center;"><a class="item" href="#">报表管理</a></div>
 			<div  class="droplisthide_div" id="droplist_div_4">
 				<div class="droplist_top"></div>
 				<div  class="droplist_cont">
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toOperatorListReport', '用户报表', '${rc.contextPath}/report/toOperatorListReport', true);" title="用户报表">用户报表</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toTestReport', '测试报表', '${rc.contextPath}/report/toTestReport', true);" title="测试报表">测试报表</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toOperatorSexReport', '用户性别报表', '${rc.contextPath}/report/toOperatorSexReport', true);" title="用户性别报表">用户性别报表</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toColumn_basictReport', '测试柱状图', '${rc.contextPath}/report/toColumn_basictReport', true);" title="测试柱状图">测试柱状图</a>
 					<a class="l_f1" onmouseover="this.className='droplist_cont_l_f1_hover'" onmouseout="this.className='droplist_cont_l_f1'" onclick="javascript:tabs.addTab('toOperatorSexColumnReport', '性别柱状图', '${rc.contextPath}/report/toOperatorSexColumnReport', true);" title="性别柱状图">性别柱状图</a>
 				</div>
 				<div class="droplist_bottom"></div>
 			</div>
 		</li>
	</ul>
 	<!--个人信息开始-->
 	<span class="user_box">欢迎 ${uname }<a onclick="" href="${rc.contextPath}/spring_security_logout">退出</a></span>
 	<!--个人信息结束-->
</div>
<!--菜单结束-->