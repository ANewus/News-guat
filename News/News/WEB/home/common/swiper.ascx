<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="swiper.ascx.cs" Inherits="News.WEB.home.common.swiper" %>
<link href="../../../swiper/css/swiper-bundle.min.css" rel="stylesheet" />
<style type="text/css">
			.swiper-container {
				width: 100%;
				height: 100%;
			}
		</style>
<!-- Swiper -->
<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><a href="https://www.guat.edu.cn/info/1004/15616.htm" target="_blank"><img src="../../../swiper/images/1.jpg" /></a></div>
				<div class="swiper-slide"><a href="http://www.moe.gov.cn/jyb_xwfb/xw_zt/moe_357/s7865/s8417/" target="_blank"><img src="../../../swiper/images/2.gif" /></a></div>
				<div class="swiper-slide"><a href="https://www.guat.edu.cn/info/1002/15640.htm" target="_blank"><img src="../../../swiper/images/3.jpg" /></a></div>
				<div class="swiper-slide"><a href=""><img src="../../../swiper/images/4.jpg" /></a></div>
				<div class="swiper-slide"><a href=""><img src="../../../swiper/images/5.jpg" /></a></div>
			</div>
			<!-- 如果需要分页器 -->
			<div class="swiper-pagination"></div>
 
			<!-- 如果需要导航按钮 -->
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
 
		</div>

<script src="../../../swiper/js/swiper-bundle.min.js"></script>
<script type="text/javascript">
    // 调用swiper效果，并进行配置
    var mySwiper = new Swiper('.swiper-container', {
        /*常用配置：开启轮播、无缝轮播、左右按钮控制、分液器指示、分页器控制、操作后再次自动轮播*/
        //自动轮播
        autoplay: 1500,
        //无缝轮播
        loop: true,
        // 如果需要前进后退按钮
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        // 如果需要分页器
        pagination: '.swiper-pagination',
        //用户操作以后 依旧可以自动轮播
        disableOnInteraction: false,
        //分页器可以点击切换图片
        paginationClickable: true

    })
</script>
