<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="News.WEB.home.news.search" %>

<%@ Register Src="~/WEB/home/common/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>桂航校园新闻网</title>
    <link rel="stylesheet" href="/css/index.css" type="text/css" media="all"/>
<link rel="stylesheet" href="/css/common.css" type="text/css" media="all"/>
<link rel="stylesheet" href="/css/layui.css" type="text/css" media="all"/>
    <link rel="shortcut icon" href="../../../images/home/logo.ico" />
<script src="/js/jquery.min.js"></script>
    <link href="../../../css/list.css" rel="stylesheet" />
</head>
<body class="indexx">
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
<br />
    
       <div class="index-container layui-clear">
	<div class="list-container">
		<div>
			<ul class="list-ul">
			
					 <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
					<li class="layui-clear">
				<div class="list-info">
					<br />
					<a class="soft-title" ><i class="rj"><asp:Label ID="Label1" runat="server" Text='<%# Eval("category") %>' /></i></a>					<br />					<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("id", "datail.aspx?id={0}") %>' Text='<%# Eval("title").ToString() %>' class="soft-title"></asp:HyperLink>
					<div class="list-ca">
					  发布时间：<asp:Label ID="createTimeLabel" runat="server" Text='<%# Eval("createTime") %>' />
						<i class="jd"></i> 作者：  <asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' />
					</div>
					</div>
				</li>
					</ItemTemplate>
            </asp:DataList>

			</ul>
           
	
                        
 
			</div>
		</div>
	</div>

    <uc1:footer runat="server" ID="footer" />
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT * FROM [news] ORDER BY [createTime] DESC"></asp:SqlDataSource>
			</form>
</body>
</html>
