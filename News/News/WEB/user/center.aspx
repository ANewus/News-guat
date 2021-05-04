<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="center.aspx.cs" Inherits="News.WEB.user.center" %>

<%@ Register Src="~/WEB/home/common/footer.ascx" TagPrefix="uc1" TagName="footer" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>用户中心-桂航校园新闻网</title>
    <link rel="stylesheet" href="/css/index.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="/css/common.css" type="text/css" media="all"/>
    <link rel="stylesheet" href="/css/layui.css" type="text/css" media="all"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../../images/home/logo.ico" />
    <script src="/js/jquery.min.js"></script>
    
</head>
<body class="indexx" id="top">
  <form runat="server">
    <div class="header">
        <div class="header-top">
            <div class="header-important container">
                <div class="tj left">
                    <span>桂航校园新闻网 - 给你最及时的信息传达。</span>
                </div>
                <div class="tg right">
       
                </div>
            </div>
        </div>
        <div class="header-logo container">
            <a href="../../../main.aspx"><img src="../../../images/home/logo.png" /></a>
            <div class="header-logo-search">
                               <input type="text"   id="ssearch" name="ssearch"  runat="server"  placeholder="输入新闻标题关键字" class="focus" />
                <input type="button" class="header-logo-search2" runat="server" onserverclick="click1"/>
                   
            </div>
        </div>
        <div class="header-nav">
            <div class="header-nav-main container">
                <ul class="layui-nav">
                
                     
                    <asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource6" RepeatDirection="Horizontal" RepeatColumns="12">
                        
                        <ItemTemplate>
                            
                           <li class="layui-nav-item ">
                            <a><asp:HyperLink ID="name" runat="server" NavigateUrl='<%#Eval("name", "../home/news/search.aspx?category={0}") %>' 
                                                                                Text='<%#Eval("name").ToString() %>'></asp:HyperLink></a>
                               </li>

                        </ItemTemplate>
                    </asp:DataList>
                          <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT * FROM [news_categore]"></asp:SqlDataSource>
                </ul>
                    
            
            </div>
        </div>
    </div>

   <div class="index-other">
	<div class="other-hot left">
			<div class="other-hot-title">
				<i class="other-xq-title-icon"></i>
					<span>用户中心</span>
			</div>
			<div>
                <ul class="layui-nav" style="background-color:#bcc0c7">

  <li class="layui-nav-item"><a href="contributes.aspx" target="f1">投稿管理</a></li>
    <li class="layui-nav-item" style="float:right;"><a href="../system/exitaccount.aspx">退了</a></li>
     <li class="layui-nav-item layui-this" style="float:right;">
    <a href="javascript:;"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a>
    <dl class="layui-nav-child">
     <dd><a href="user_information.aspx" target="f1">基本资料</a></dd>
          <dd><a href="change_password.aspx" target="f1">修改密码</a></dd>
    </dl>
  </li>
  
</ul>

			</div>
        <div>
            <iframe  name="f1" style="width:100%;height:600px" frameborder="no"></iframe>
        </div>
	</div>

</div>
        <uc1:footer runat="server" ID="footer" />

        </form>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT * FROM [news_categore]"></asp:SqlDataSource>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="select top 8 * from news where category='桂航要闻'"></asp:SqlDataSource>
      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="select top 8 * from news where category='院部动态'"></asp:SqlDataSource>   
		<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="select top 8 * from news where category='通知公告'"></asp:SqlDataSource>  
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="select top 8 * from news where category='信息公开'"></asp:SqlDataSource>  
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="select top 8 * from news where category='桂航大讲坛'"></asp:SqlDataSource>  
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="select top 8 * from news where category='媒体桂航'"></asp:SqlDataSource>  
        
        <script src="/js/common.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/index.js"></script>
        <script src="js/layui.js"></script>
        <script>layui.use("element", function () { layui.element });</script>
    <script>
    layui.use('carousel', function () {
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            , width: '390' //设置容器宽度
            , height: '300' //设置容器宽度
            , arrow: 'hover' //始终显示箭头
            , anim: 'fade'
        });
    });
        </script>
</body>
</html>
