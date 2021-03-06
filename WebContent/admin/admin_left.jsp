<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<link href="images/left.css" rel="stylesheet" type="text/css"/>
</head>

<body>

<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top"><div id="container">
      <h1 class="type"><a href="javascript:void(0)">菜单管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
        
        <li><a href="../admin/menus_add.jsp" target="main">添加新菜单</a></li>
        <li><a href="../admin/menus.jsp" target="main">菜单信息列表</a></li>
      
        <%ArrayList menus = (ArrayList)session.getAttribute("menus");
		if ( menus!=null){
			for (int i=0 ;i< menus.size();i++){
				ArrayList alRow = (ArrayList)menus.get(i);
				%>
          <li><a href="../servlet/MenuUpdateServlet?id=<%=alRow.get(0) %>" target="main"><%=alRow.get(1)%></a></li>
          <%
		  }}%>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">菜单类别管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
           
            <li><a href="../admin/type_add.jsp" target="main">添加新类别</a></li>
            <li><a href="../admin/type.jsp" target="main">类别信息列表</a></li>
      
          <%ArrayList type = (ArrayList)session.getAttribute("type");
		  if ( type!=null){
			for (int i=0 ;i< type.size();i++){
				ArrayList alRow = (ArrayList)type.get(i);
				%>
          <li><a href="../servlet/TypeUpdateServlet?id=<%=alRow.get(0) %>" target="main"><%=alRow.get(1) %></a></li>
          <%
		  }}%>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">公告信息管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		   <li><a href="../admin/notice_add.jsp" target="main">添加新通告</a></li>
            <li><a href="../admin/notice.jsp" target="main">通告信息列表</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">销售订单管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="../admin/order.jsp" target="main">销售订单信息列表</a></li>
          <li><a href="../admin/order_search.jsp" target="main">销售订单查询</a></li>
          <li><a href="../OrderServlet?&reqtype=statistic" target="main">本日销售额统计</a></li>
        </ul>
      </div>
    </div>

    <h1 class="type"><a href="../admin/admin_update.jsp" target="main">系统用户管理</a></h1>
    <h1 class="type"><a href="../AdminServlet" target="main">注销退出</a></h1>
      </td>
  </tr>
</table>
<script type="text/javascript">
	var contents = document.getElementsByClassName('content');
	var toggles = document.getElementsByClassName('type');
	var myAccordion = new fx.Accordion(toggles, contents, {opacity: true, duration: 500});
	myAccordion.showThisHideOpen(contents[0]);
</script>

</body>
</html>
