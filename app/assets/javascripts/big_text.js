 "use strict";

(function($){
    var defaultOptions = {
        rotateText: null,
        padding: null,
        fontSizeFactor: 0.8,
maximumFontSize: null,
        limitingDimension: "both"
    }
    
    $.fn.bigText = function(options) {
        return this.each(function() {
            options = $.extend({}, defaultOptions, options);
            var $this= $(this);
            $this.css('display', "inline-block");
            $this.css('clear', "both");
            $this.css('float', "left"); //the need to set this is very odd, its due to margin-collapsing. See https://developer.mozilla.org/en-US/docs/Web/CSS/margin_collapsing
            $this.css('font-size', (1000 * options.fontSizeFactor) + "px");
            $this.css('line-height', "1000px");
            $this.css('position', "relative");
            $this.css('white-space', "nowrap");
            $this.css('top', "50%");
            $this.css('left', "50%");
            $this.css('padding', 0);
            $this.css('margin', 0);
            
$this.parent().css("overflow", "hidden");

            if (options.padding !== null) {
                if (typeof options.padding === "number") {
                    options.padding = options.padding;
                } else {
                    throw "bigText error: Padding value must be a number";
                }
                $this.parent().css("padding", options.padding + "px");
            }


            var box = {};
            if (options.rotateText !== null) {
                if (typeof options.rotateText !== "number") {
                    throw "bigText error: Rotate value must be a number";
                }
                var rotate = "rotate(" + options.rotateText + "deg)";
                $this.css("-webkit-transform", rotate);
                $this.css("-ms-transform", rotate);
                $this.css("-moz-transform", rotate);
                $this.css("-o-transform", rotate);
                $this.css("transform", rotate);
                //calculating bounding box of the rotated element
                var w = $this.width();
                var h = $this.height();
                var sin = Math.abs(Math.sin(options.rotateText * Math.PI / 180));
                var cos = Math.abs(Math.cos(options.rotateText * Math.PI / 180));
                box.width = w * cos + h * sin;
                box.height = w * sin + h * cos;
            } else {
                box.width = $this.outerWidth();
                box.height = $this.outerHeight();
                //box.height = 1000; //we know this for sure because of line-height
            }

            var padding = {
                left: parseInt($this.css('padding-left')),
                top: parseInt($this.css('padding-top')),
                right: parseInt($this.css('padding-right')),
                bottom: parseInt($this.css('padding-bottom'))
            };
            var foo = ($this.parent().innerWidth() - padding.left - padding.right) / box.width;
            var bar = ($this.parent().innerHeight() - padding.top - padding.bottom) / box.height;
            var lineHeight;

if (options.limitingDimension.toLowerCase() === "width") {
                lineHeight = Math.floor(foo * 1000);
$this.parent().height(lineHeight);
} else if (options.limitingDimension.toLowerCase() === "height") {
                lineHeight = Math.floor(bar * 1000);
} else if (foo < bar) {
                lineHeight = Math.floor(foo * 1000);  
} else if (foo >= bar) {
                lineHeight = Math.floor(bar * 1000);
}

var fontSize= lineHeight * options.fontSizeFactor;
if (options.maximumFontSize !== null && fontSize > options.maximumFontSize) {
fontSize= options.maximumFontSize;
lineHeight= fontSize / options.fontSizeFactor;
}
            $this.css('font-size', fontSize + "px");
            $this.css('line-height', lineHeight + "px");
            //centralizing text, top and left are defined as 50% on the CSS
            $this.css('margin-left', (-$this.width() / 2) + "px");
            $this.css('margin-top', (-$this.height() / 2) + "px");
            $this.css('margin-right', 0);
            $this.css('margin-bottom', 0);
if (options.limitingDimension.toLowerCase() === "height") {
$this.parent().width($this.width());
}
        });
    }
})(jQuery);