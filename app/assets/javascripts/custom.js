$('document').ready(function(){
  if((navigator.userAgent.indexOf('Safari') == -1) && (document.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#Image", "1.1"))) {
  document.documentElement.className = "svg";
};
// $(".tagline").fitText(1, { minFontSize: '8px', maxFontSize: '26px' }); 
});
