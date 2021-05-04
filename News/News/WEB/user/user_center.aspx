<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_center.aspx.cs" Inherits="News.WEB.user.user_center" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>用户中心 - 桂航新闻网</title>
    <link href="../../css/layui.css" rel="stylesheet" />
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../../images/home/logo.ico" />
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">桂航新闻网 - 用户中心</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="../../main.aspx">首页</a></li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </a>
        <dl class="layui-nav-child">
          <dd><a href="user_information.aspx" target="f1">基本资料</a></dd>
          <dd><a href="change_password.aspx" target="f1">修改密码</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="../system/exitaccount.aspx">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">功能界面</a>
          <dl class="layui-nav-child">
              
            <dd><a href="contributes.aspx" target="f1">投稿管理</a></dd>
          </dl>
        </li>
       
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div class="embed-responsive embed-responsive-16by9">
  <iframe  class="embed-responsive-item" name="f1"></iframe>
</div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © 桂航新闻网 - 2017070030128周文强
  </div>
</div>
    <script src="../../js/jquery.min.js"></script>
    <script src="../../js/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
</script>
</body>
</html>
