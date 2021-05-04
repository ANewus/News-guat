<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datail.aspx.cs" Inherits="News.WEB.home.news.datail" %>

<%@ Register Src="~/WEB/home/common/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> </title>
<link rel="stylesheet" href="../../../css/article.css"  type="text/css" media="all"/>
<link rel="stylesheet" href="../../../css/common.css" type="text/css" media="all"/>
<link rel="stylesheet" href="../../../css/layui.css" type="text/css" media="all"/>
<link rel="shortcut icon" href="../../../images/home/logo.ico" />
<script src="../../../js/jquery.min.js"></script>
</head>
<body  id="top">
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
                            <a><asp:HyperLink ID="name" runat="server" NavigateUrl='<%#Eval("name", "search.aspx?category={0}") %>' 
                                                                                Text='<%#Eval("name").ToString() %>'></asp:HyperLink></a>
                               </li>

                        </ItemTemplate>
                    </asp:DataList>
                          <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT * FROM [news_categore]"></asp:SqlDataSource>
                </ul>
                    
            
            </div>
        </div>
    </div>

<div class="index-container layui-clear">
	<div class="article_content layui-clear">
		<div class="left"><asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
			<h3 class="article-title"><asp:Label ID="Label1" runat="server"></asp:Label></h3>
			<div class="article-bq layui-clear">
				<time><i class="iconfont icon-zz" ></i></time><asp:Label ID="Label4" runat="server" alt="作者"></asp:Label>
				<time><i class="iconfont icon-time"></i></time><asp:Label ID="Label2" runat="server"></asp:Label>
				<b class="bq-wg"><i class="iconfont icon-fl"></i></b><asp:Label ID="Label5" runat="server"></asp:Label>
                <b class="bq-wg">点击量：</b><asp:Label ID="Label7" runat="server"></asp:Label>
                <b class="bq-wg" style="float:right;">
                    <img src="../../../images/home/jubao.png" /><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >举报新闻</asp:LinkButton></b>
			</div>
          <div class="ad"></div>
			<div class="article-content">
				<asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:Image ID="Image1" runat="server" Height="376px"  Width="696px" />
			</div>

<div class="article-pl">
	<div class="article-pl-title">
		<i class="article-pl-title-icon"></i>
		<span>评论列表</span>
	</div>
	<div>
		<script type="text/javascript" charset="utf-8" src="//cy-cdn.kuaizhan.com/js/lib/jquery.js"></script>
		
        

      <div id="SOHUCS" sid="<%= k %>"></div>
        

	</div>
</div>
		</div>
		               <div class="right">
      <div class="article-hot">
        <div class="article-hot-title">
          <i class="article-hot-title-icon"></i>
          <span>热门新闻</span>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>

<ul class="list">
              <li><font><asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%# Eval("id", "datail.aspx?id={0}") %>' 
                                                                                Text='<%# CutStr(Eval("title").ToString()) %>'></asp:HyperLink></font></li>
                    </ul>

                        </ItemTemplate>
               </asp:DataList>

          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT top 10 [id], [title], [click] FROM [news] ORDER BY [click] DESC"></asp:SqlDataSource>


      </div>
  <div class="article-sj">
        <div class="article-sj-title">
          <i class="article-sj-title-icon"></i>
          <span>随机推荐</span>
        </div>
         <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>

<ul class="list">
              <li><font><asp:HyperLink ID="HyperLink1" runat="server"  NavigateUrl='<%# Eval("id", "datail.aspx?id={0}") %>' 
                                                                                Text='<%# CutStr(Eval("title").ToString()) %>'></asp:HyperLink></font></li>
                    </ul>

                        </ItemTemplate>
               </asp:DataList>

          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT top 10 [id], [title], [click] FROM [news] ORDER BY NEWID()"></asp:SqlDataSource>

      </div>
    </div>
	</div> 
     
	</div>
</div>
    <script type="text/javascript" charset="utf-8" src="//cy-cdn.kuaizhan.com/js/changyan.labs.https.js?appid=cyviRaJ3s"></script>
    <script charset="utf-8" type="text/javascript" src="https://cy-cdn.kuaizhan.com/upload/changyan.js" ></script>
<script type="text/javascript">
    window.changyan.api.config({
        appid: 'cyviRaJ3s',
        conf: 'prod_d679079471300701a9b6660a7cc93b42'
    });
</script>
    <uc1:footer runat="server" ID="footer" />

   <script src="../../../js/common.js"></script>
        
      
   </form>
</body>
</html>
