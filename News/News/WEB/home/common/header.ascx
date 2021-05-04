<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="News.WEB.home.common.header" EnableTheming="True"%>
 <link rel="stylesheet" href="../../../css/index.css" type="text/css" media="all"/>
<link rel="stylesheet" href="../../../css/common.css" type="text/css" media="all"/>
<link rel="stylesheet" href="../../../css/layui.css" type="text/css" media="all"/>
<script src="../../../js/jquery.min.js"></script>
<link href="../../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />

<div class="indexx">
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
            <div class="header-logo-search" >
                               <input type="text"   id="search" name="search"  runat="server"  placeholder="输入新闻标题关键字" class="focus" />
                <input type="button" class="header-logo-search2" runat="server" onserverclick="click1"/>
  
            </div>
        </div>
        <div class="header-nav">
            <div class="header-nav-main container">
                <ul class="layui-nav">
                <li class="layui-nav-item layui-this"><a href="../../../main.aspx">网站首页</a></li>
                    
                     <li class="layui-nav-item ">
                <a href="/html/106.html">桂航要闻</a>
                
              
                </li><li class="layui-nav-item ">
                <a href="/html/117.html">院部动态</a>
                
                </li><li class="layui-nav-item ">
                <a href="/html/121.html">通知公告</a>
                
                </li><li class="layui-nav-item ">
                <a href="/html/112.html">信息公开</a>
                
                </li><li class="layui-nav-item ">
                <a href="/html/124.html">桂航大讲坛</a>
            

                </li>
            </ul>
            </div>
        </div>
    </div>
<br />




<script src="../../../js/common.js"></script>
<script src="../../../js/layui.js"></script>

<script>layui.use("element",function(){layui.element});</script>
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

    <script src="../../../js/index.js"></script>
</div>