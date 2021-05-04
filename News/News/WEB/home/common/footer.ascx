<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="footer.ascx.cs" Inherits="News.WEB.home.common.footer" EnableTheming="True" %>
 <link rel="stylesheet" href="../../../css/index.css" type="text/css" media="all"/>
<link rel="stylesheet" href="../../../css/common.css" type="text/css" media="all"/>
<link rel="stylesheet" href="../../../css/layui.css" type="text/css" media="all"/>
<script src="../../../js/jquery.min.js"></script>

<div class="indexx">

<div class="footer">
	<div class="footer-container">
		<div class="footer-top">
			<div class="pull-left left">
				<div class="flogo">
					<img src="../../../images/home/flogo.png" alt="桂航新闻网">
				</div>
			</div>
			<div class="pull-right right">
				<div class="about">
					<a href="https://jq.qq.com/?_wv=1027&k=0j2bjz4Z" style="" class="font1_1" target="_blank">官方QQ群</a> - <a href="http://wpa.qq.com/msgrd?v=3&uin=770041996&site=qq&menu=yes" style="" class="font1_1" target="_blank">广告投放</a> - <a href="../../system/login.aspx" style="" class="font1_1" target="_blank">我要投稿</a> - <a href="../../system/admin_login.aspx" style="" class="font1_1" target="_blank">管理员后台</a>
					<div class="us">
						<a rel="nofollow" class="email" href="/tg.html" title="我要投稿"></a>
					</div>
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