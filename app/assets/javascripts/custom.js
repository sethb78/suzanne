

$(document).ready(function(){

  // $('.navbar-default .navbar-toggle').css({"margin-right": "0"}).closest('.navbar-default').css({
  //   "margin-top": "0px",
  //   "z-index": "0",
  //     "background": "-moz-linear-gradient(left, #ffffff 0%, #f5f5f5 25%, #a1dbe3 50%, #3e5657 75%)", 
  //   "background": "-webkit-gradient(linear, left top, right top, color-stop(0%,#ffffff), color-stop(25%,#f5f5f5), color-stop(50%,#a1dbe3), color-stop(75%,#3e5657))", 
  //   "background": "-webkit-linear-gradient(left, #ffffff 0%,#f5f5f5 25%,#a1dbe3 50%,#3e5657 75%)",
  //   "background": "-o-linear-gradient(left, #ffffff 0%,#f5f5f5 25%,#a1dbe3 50%,#3e5657 75%)", 
  //   "background": "-ms-linear-gradient(left, #ffffff 0%,#f5f5f5 25%,#a1dbe3 50%,#3e5657 75%)",
  //   "background": "linear-gradient(to right, #ffffff 0%,#f5f5f5 25%,#a1dbe3 50%,#3e5657 75%)",  
  //   "filter": "progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#3e5657',GradientType=1 )" 
  // }).closest('header').find('.tagline').css({"padding-bottom": "2px"});

$('div').scrollspy({ target: '#navbar-resume-scrollspy' })

$('[data-spy="scroll"]').each(function () {
  var $spy = $(this).scrollspy('refresh')
})

});

