<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="News.main" %>

<%@ Register Src="~/WEB/home/common/swiper.ascx" TagPrefix="uc1" TagName="swiper" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>桂航校园新闻网</title>
    <link rel="stylesheet" href="/css/index.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/css/common.css" type="text/css" media="all" />
    <link rel="stylesheet" href="/css/layui.css" type="text/css" media="all" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/swiper-bundle.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/home/logo.ico" />
    <script src="/js/jquery.min.js"></script>

</head>
<body class="indexx" style="background-color: #f6f6f6">
    <form runat="server">
        <div class="header">
            <div class="header-top">
                <div class="header-important container">
                    <div class="tj left">
                        <span>桂航校园新闻网 - 给你最及时的信息传达。</span>
                    </div>
                    <div class="tg right">

                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <a href="WEB/system/login.aspx" target="_blank">登录</a>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                欢迎，<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="WEB/user/center.aspx">[HyperLink1]</asp:HyperLink>&nbsp;&nbsp;<a href="WEB/system/exitaccount.aspx">退出</a>
                            </asp:View>
                        </asp:MultiView>


                    </div>
                </div>
            </div>
            <div class="header-logo container">
                <a href="../../../main.aspx">
                    <img src="../../../images/home/logo.png" /></a>
                <div class="header-logo-search">
                    <input type="text" id="ssearch" name="ssearch" runat="server" placeholder="输入新闻标题关键字" class="focus" />
                    <input type="button" class="header-logo-search2" runat="server" onserverclick="click1" />
                    <div id="tssss" style="display: none; position: absolute; background-color: #f1f1f1; font-size: 14px; z-index: 1111; margin-left: -37px; margin-top: -10px; height: 160px; border-radius: 5px;">
                        <div>
                            <asp:DataList ID="DataList9" runat="server" DataSourceID="SqlDataSource8">
                                <ItemTemplate>

                                    <ul>
                                        <li style="height: 20px;">
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("id", "WEB/home/news/datail.aspx?id={0}") %>'
                                                Text='<%# CutStr3(Eval("title").ToString()) %>' Style="color: #999;"></asp:HyperLink>
                                        </li>
                                    </ul>

                                </ItemTemplate>
                            </asp:DataList>

                            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT top 5 [id], [title], [click] FROM [news] ORDER BY [click] DESC"></asp:SqlDataSource>


                        </div>
                    </div>
                </div>


            </div>
            <div class="header-nav">
                <div class="header-nav-main container">
                    <ul class="layui-nav">


                        <asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource6" RepeatDirection="Horizontal" RepeatColumns="12">

                            <ItemTemplate>

                                <li class="layui-nav-item ">
                                    <a>
                                        <asp:HyperLink ID="name" runat="server" NavigateUrl='<%#Eval("name", "WEB/home/news/search.aspx?category={0}") %>'
                                            Text='<%#Eval("name").ToString() %>'></asp:HyperLink></a>
                                </li>

                            </ItemTemplate>
                        </asp:DataList>

                    </ul>


                </div>
            </div>
        </div>
        <br />

        <div class="index-news container" style="padding-right: 1%; padding-left: 1px;">
            <div class="row">

                <div class="col-md-5">

                    <div class="index-news container">
                        <div class="index-news-tool left">
                            <div class=" layui-carousel dad" id="test1">
                                <!--<a href="" rel="nofollow" target="_blank"><img src="images/home/adzz3.pn" alt="" width="100%" height="100%" title="" align="" style="opacity: 1;"/></a>-->
                                <uc1:swiper runat="server" ID="swiper" />
                            </div>
                            <div class="index-news-tool-container">
                                <a href="WEB/user/add_contribute.aspx" class="noad" target="_blank">我要投稿</a>
                                <a href="http://wpa.qq.com/msgrd?v=3&uin=770041996&site=qq&menu=yes" class="mytg" target="_blank">商务合作</a>
                                <fieldset>
                                    <legend>桂航校园新闻网</legend>
                                </fieldset>
                                <ul class="tequan">
                                    <li class="clearfix">
                                        <div><i style="background-position: center -389px;"></i><span>时效性强</span></div>
                                        <div class="liright"><i style="background-position: center -360px;"></i><span>真实性强</span></div>
                                    </li>
                                    <li class="clearfix">
                                        <div><i style="background-position: center -101px;"></i><span>少量广告</span></div>
                                        <div class="liright"><i style="background-position: center -263px;"></i><span>内容丰富</span></div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- col-md-5 结束 -->




                <div class="col-md-7" style="margin-left: -4.3%">
                    <div class="index-news-article">
                        <div class="news-article-title">
                            <i class="news-article-title-icon"></i>
                            最新新闻
        
                        </div>


                        <div class="news-article_container" id="newslist">
                            <div>
                                <asp:DataList ID="DataList1" runat="server"
                                    Font-Bold="False" Font-Italic="False"
                                    Font-Overline="False"
                                    Font-Strikeout="False" Font-Underline="False" Style="width: 100%; height: 100%;">
                                    <ItemTemplate>

                                        <ul>
                                            <li style="width: 71%;">
                                                <asp:HyperLink ID="HyperLink2" runat="server"
                                                    NavigateUrl='<%# Eval("id", "WEB/home/news/datail.aspx?id={0}") %>'
                                                    Text='<%# CutStr(Eval("title").ToString()) %>'></asp:HyperLink></li>


                                            <span>
                                                <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("createTime") %>' /></span>
                                        </ul>
                                    </ItemTemplate>
                                </asp:DataList>

                            </div>

                        </div>

                        <div class="page layui-clear" data-nowpage="1">

                            <div class="top">
                                <asp:LinkButton ID="lbntUp" runat="server" OnClick="lbntUp_Click">上一页</asp:LinkButton>
                            </div>
                            <asp:Label ID="lblCurrent" runat="server" Text="1" Visible="False"></asp:Label><asp:Label ID="lblTotal" runat="server" Visible="False"></asp:Label>
                            <b class="cfx"></b>
                            <div class="bottom">
                                <asp:LinkButton ID="lbtnDown" runat="server" OnClick="lbtnDown_Click">下一页</asp:LinkButton>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

        </div>


        <div class="index-plate">
            <div class="index-plate-title">
                <i class="index-plate-title-icon"></i>
                <span>综合板块</span>
                <div class="type">
                    <a>桂航要闻 / 院部动态 / 通知公告</a>
                </div>
            </div>
            <div class="row" style="margin: 1%">
                <div class="col-md-4">
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <ul>

                                <li><font>[ <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /> ]</font><span>
                                    <asp:HyperLink ID="HyperLink3" runat="server"
                                        NavigateUrl='<%# Eval("id", "WEB/home/news/datail.aspx?id={0}") %>'
                                        Text='<%# CutStr2(Eval("title").ToString()) %>'></asp:HyperLink></span></li>
                            </ul>

                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-4">
                    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <ul>

                                <li><font>[ <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /> ]</font><span>
                                    <asp:HyperLink ID="HyperLink4" runat="server"
                                        NavigateUrl='<%# Eval("id", "WEB/home/news/datail.aspx?id={0}") %>'
                                        Text='<%# CutStr2(Eval("title").ToString()) %>'></asp:HyperLink></span></li>
                            </ul>

                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-4">
                    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource3">
                        <ItemTemplate>
                            <ul>

                                <li><font>[ <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /> ]</font><span>
                                    <asp:HyperLink ID="HyperLink5" runat="server"
                                        NavigateUrl='<%# Eval("id", "WEB/home/news/datail.aspx?id={0}") %>'
                                        Text='<%# CutStr2(Eval("title").ToString()) %>'></asp:HyperLink></span></li>
                            </ul>

                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
        <div class="index-plate">
            <div class="index-plate-title">
                <i class="index-activity-title-icon"></i>
                <span>其他板块</span>
                <div class="type">
                    <a>信息公开 / 桂航大讲坛 / 媒体桂航</a>
                </div>
            </div>
            <div class="row" style="margin: 1%">
                <div class="col-md-4">
                    <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                            <ul>

                                <li><font>[ <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /> ]</font><span>
                                    <asp:HyperLink ID="HyperLink6" runat="server"
                                        NavigateUrl='<%# Eval("id", "WEB/home/news/datail.aspx?id={0}") %>'
                                        Text='<%# CutStr2(Eval("title").ToString()) %>'></asp:HyperLink></span></li>
                            </ul>

                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-4">
                    <asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource5">
                        <ItemTemplate>
                            <ul>

                                <li><font>[ <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /> ]</font><span>
                                    <asp:HyperLink ID="HyperLink7" runat="server"
                                        NavigateUrl='<%# Eval("id", "WEB/home/news/datail.aspx?id={0}") %>'
                                        Text='<%# CutStr2(Eval("title").ToString()) %>'></asp:HyperLink></span></li>
                            </ul>

                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-4">
                    <asp:DataList ID="DataList8" runat="server" DataSourceID="SqlDataSource7">
                        <ItemTemplate>
                            <ul>

                                <li><font>[ <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' /> ]</font><span>
                                    <asp:HyperLink ID="HyperLink8" runat="server"
                                        NavigateUrl='<%# Eval("id", "WEB/home/news/datail.aspx?id={0}") %>'
                                        Text='<%# CutStr2(Eval("title").ToString()) %>'></asp:HyperLink></span></li>
                            </ul>

                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>




        <div class="footer">
            <div class="footer-container">
                <div class="footer-top">
                    <div class="pull-left left">
                        <div class="flogo">
                            <img src="../../../images/home/flogo.png" alt="桂航新闻网" />
                        </div>
                    </div>
                    <div class="pull-right right">
                        <div class="about">
                            <a href="https://jq.qq.com/?_wv=1027&k=0j2bjz4Z" style="" class="font1_1" target="_blank">官方QQ群</a> - <a href="http://wpa.qq.com/msgrd?v=3&uin=770041996&site=qq&menu=yes" style="" class="font1_1" target="_blank">广告投放</a> - <a href="WEB/user/add_contribute.aspx" style="" class="font1_1" target="_blank">我要投稿</a>  - <a href="WEB/system/admin_login.aspx" style="" class="font1_1" target="_blank">管理员后台</a>
                        </div>
                    </div>
                </div>
                <div class="flink">
                    <span>友情链接：</span>
                    <ul class="layui-clear container">

                        <li><a href='https://www.guat.edu.cn/' target='_blank'>桂林航天工业学院</a> </li>

                        <li><a href='http://www.moe.gov.cn/' target='_blank'>教育部</a> </li>

                        <li><a href='http://www.gxzf.gov.cn/' target='_blank'>广西区政府</a> </li>

                        <li><a href='http://jyt.gxzf.gov.cn/' target='_blank'>广西区教育厅</a> </li>




                    </ul>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    <div class="pull-left left">
                        <!--CopyRight  2019 /  All Rights Reserved.--->
                        本站资源来自互联网收集，仅供用于学习和交流。如有侵权之处，请联系站长并出示版权证明以便删除。敬请谅解！联系邮箱：770041996@qq.com
                    </div>

                    <div class="pull-right right">
                        <!---<a><img src="/cssjs/images/beian.png"/> <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=45030502000159">桂公网安备45030502000159号</a></a>--->
                    </div>

                </div>
            </div>
        </div>

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

        <script language="javascript" type="text/javascript">
            function $(id) { return document.getElementById(id); }
            window.onload = function () {
                document.onclick = function (e) {
                    $("tssss").style.display = "none";
                }

                $("ssearch").onclick = function (e) {
                    if ($("tssss").style.display == "none") {
                        $("tssss").style.display = "block";
                    } else {
                        $("tssss").style.display = "none";
                    }

                    stopFunc(e);
                }

                $("tssss").onclick = function (e) {
                    stopFunc(e);
                }
            }
            function stopFunc(e) {
                document.all ? event.cancelBubble = true : e.stopPropagation();
            }
</script>

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

    </form>
</body>
</html>
