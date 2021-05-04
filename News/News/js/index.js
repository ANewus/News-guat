


$(".type a").hover(function (a)
{
    $(".type .hover").removeClass("hover");
    $(this).addClass("hover");
    a = $(".type .hover").index();
    a = $(".index-plate-title").width() * a + parseInt($(".index-plate-title").css("margin-right")) * a;
    $(".list-tr").css("transform", "translateX(-" + a + "px)")
});
$(".types a").hover(function (a) {
    $(".types .hover").removeClass("hover");
    $(this).addClass("hover"); a = $(".types .hover").index();
    a = $(".list-fy ul").width() * a + parseInt($(".list-fy ul").css("margin-right")) * a;
    $(".list-fy").css("transform", "translateX(-" + a + "px)")
});
$(".typess a").hover(function (a) {
    $(".typess .hover").removeClass("hover");
    $(this).addClass("hover"); a = $(".typess .hover").index();
    a = $(".hot-list-fy ul").width() * a + parseInt($(".hot-list-fy ul").css("margin-right")) * a;
    $(".hot-list-fy").css("transform", "translateX(-" + a + "px)")
});
/*$(function () {
    for (var a = document.getElementById("newslist").getElementsByTagName("ul"), e = document.getElementById("last"), f = document.getElementById("next"), b = 0, d = 1;
        d < a.length; d++)a[d].style.display = "none";
    e.onclick = function () {
        b--; 0 > b && (b = 0);
        for (var c = 0; c < a.length; c++)a[c].style.display = "none";
        a[b].style.display = "block"
    };
    f.onclick = function () {
        b++; b > a.length - 1 && (b = a.length - 1);
        for (var c = 0; c < a.length; c++)a[c].style.display = "none";
        a[b].style.display = "block"
    }
});*/