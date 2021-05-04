$(window).scroll(function () {
	var bodyTop = 0,
		//bodyHeight = $(window).height(),
		sideTop = $('.header-nav  .header-nav-main').eq(0).height() + 0;
	if (typeof window.pageYOffset != 'undefined') {
		bodyTop = window.pageYOffset;
	} else if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
		bodyTop = document.documentElement.scrollTop;
	} else if (typeof document.body != 'undefined') {
		bodyTop = document.body.scrollTop;
	}
	if (bodyTop > sideTop) {
		$('.header-nav').css({ 'position': 'fixed', 'top': '0', 'z-index': '99' });

	} else {
		$('.header-nav').css({ position: 'relative' });


	}
});


/* 侧边浮动内容 */
lastScrollY = 0;

function gotop() {
	var diffY;
	if (document.documentElement && document.documentElement.scrollTop) diffY = document.documentElement.scrollTop;
	else if (document.body) diffY = document.body.scrollTop;
	else {
	}
	percent = .1 * (diffY - lastScrollY);
	if (percent > 0) percent = Math.ceil(percent);
	else percent = Math.floor(percent);
	lastScrollY = lastScrollY + percent;
	if (lastScrollY < 50) {
		$("#gotop").fadeOut('fast');
	} else {
		$("#gotop").fadeIn('fast');
	}
}
gotopcode = " \
	<div id=\"side_func\"> \
	 \
	<a class=\"sfa block1 tougao\" href=\"WEB/user/add_contribute.aspx\" target=\"_blank\" title=\"点击投稿\"><span>投稿</span></a> \
	<a class=\"sfa block2\"  href=\"#SOHUCS\"><span>评论</span></a> \
	<a class=\"sfa block3\" id=\"gotop\" href=\"#top\"><span>顶部</span></a> \
	</div> \
"
document.write(gotopcode);
$('#side_func').prependTo('body');
window.setInterval("gotop()", 1);

$('#side_func a.joinus').hover(

	function () {
		$(this).find('span.text1').css({
			'display': 'none'
		});
		$(this).find('span.text2').css({
			'display': 'block'
		});
	}, function () {
		$(this).find('span.text2').css({
			'display': 'none'
		});
		$(this).find('span.text1').css({
			'display': 'block'
		});
	});

$("#gotop").click(function () {
	$("html,body").animate({
		scrollTop: 0
	}, 200);
	return false;
});

$('#gocomm,.pti_comm').click(function () {
	var href = $(this).attr("href");
	var pos = $(href).offset().top - 35;
	$("html,body").animate({
		scrollTop: pos
	}, 200);
	return false;
});