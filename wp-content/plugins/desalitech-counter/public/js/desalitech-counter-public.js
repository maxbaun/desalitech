(function( $ ) {
	'use strict';

	/**
	 * All of the code for your public-facing JavaScript source
	 * should reside in this file.
	 *
	 * Note: It has been assumed you will write jQuery code here, so the
	 * $ function reference has been prepared for usage within the scope
	 * of this function.
	 *
	 * This enables you to define handlers, for when the DOM is ready:
	 *
	 * $(function() {
	 *
	 * });
	 *
	 * When the window is loaded:
	 *
	 * $( window ).load(function() {
	 *
	 * });
	 *
	 * ...and/or other possibilities.
	 *
	 * Ideally, it is not considered best practise to attach more than a
	 * single DOM-ready or window-load handler for a particular page.
	 * Although scripts in the WordPress core, Plugins and Themes may be
	 * practising this, we should strive to set a better example in our own work.
	 */
	 $(document).ready(function() {
		 init();

		 function init(){
			 $('.desalitech-counter').each(function() {
				 $(this).bsf_appear(function(){
						 var endNum = parseFloat(jQuery(this).find('.stats-number').data('counter-value'));
						 var startValue = (jQuery(this).find('.stats-number').data('startValue'))+' ';
						 var startDate = moment((jQuery(this).find('.stats-number').data('startDate'))+' ');
						 var speed = parseFloat(jQuery(this).find('.stats-number').data('changeRate'));
						 var speedStr = speed.toString();
						 var ID = jQuery(this).find('.stats-number').data('id');
						 var sep = jQuery(this).find('.stats-number').data('separator');
						 var dec = jQuery(this).find('.stats-number').data('decimal');
						 var dec_count = speedStr.split(".");
						 if(dec_count[1]){
							 dec_count = dec_count[1].length-1;
						 } else {
							 dec_count = 0;
						 }
						 var grouping = true;
						 if(dec == "none"){
							 dec = "";
						 }
						 if(sep == "none"){
							 grouping = false;
						 } else {
							 grouping = true;
						 }
						 var settings = {
							 useEasing : true,
							 useGrouping : grouping,
							 separator : sep,
							 decimal : dec
						 };
						 var counter = new desalitechCounterInit(ID, startValue, startDate, dec_count, speed, settings);
						 setTimeout(function(){
							 counter.start();
						 },500);
					 });
			 });
		 }
	 });

})( jQuery );


function desalitechCounterInit(target, startVal, startDate, decimals, speed, options) {
    // default options
    this.options = options || {
        useEasing : true, // toggle easing
        useGrouping : true, // 1,000,000 vs 1000000
        separator : ',', // character to use as a separator
        decimal : '.' // character to use as a decimal
    }
    // make sure requestAnimationFrame and cancelAnimationFrame are defined
    // polyfill for browsers without native support
    // by Opera engineer Erik Möller
    var lastTime = 0;
    var vendors = ['webkit', 'moz', 'ms'];
    for(var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
        window.requestAnimationFrame = window[vendors[x]+'RequestAnimationFrame'];
        window.cancelAnimationFrame =
          window[vendors[x]+'CancelAnimationFrame'] || window[vendors[x]+'CancelRequestAnimationFrame'];
    }
    if (!window.requestAnimationFrame) {
        window.requestAnimationFrame = function(callback, element) {
            var currTime = new Date().getTime();
            var timeToCall = Math.max(0, 16 - (currTime - lastTime));
            var id = window.setTimeout(function() { callback(currTime + timeToCall); },
              timeToCall);
            lastTime = currTime + timeToCall;
            return id;
        }
    }
    if (!window.cancelAnimationFrame) {
        window.cancelAnimationFrame = function(id) {
            clearTimeout(id);
        }
    }
    var self = this;
    this.d = (typeof target === 'string') ? document.getElementById(target) : target;
    this.startVal = Number(startVal);
	this.startDate = startDate;
    this.frameVal = this.startVal;
    this.rAF = null;
    this.decimals = Math.max(0, decimals || 0);
    this.speed = speed;
    // Robert Penner's easeOutExpo
    this.easeOutExpo = function(t, b, c, d) {
        return c * (-Math.pow(2, -10 * t / d) + 1) * 1024 / 1023 + b;
    }
	this.secondsSinceStart = function(){
		var cur = moment();
		var timePassed = cur.diff(self.startDate);
		var duration = moment.duration(timePassed).asSeconds();
		return duration;
	}
	this.valueSinceStart = function(seconds){
		var value = self.startVal + (seconds * self.speed);
		return Math.round(value);
	}
    this.count = function(timestamp) {
		var seconds = self.secondsSinceStart();
		self.frameVal = self.valueSinceStart(seconds);
		var formattedValue = self.formatNumber(self.frameVal.toFixed(self.decimals));

        self.d.innerHTML = formattedValue;

		self.rAF = requestAnimationFrame(self.count);
    }
    this.start = function(callback) {
        self.callback = callback;
        // make sure values are valid
        if (!isNaN(self.startVal)) {
            self.rAF = requestAnimationFrame(self.count);
        } else {
            console.log('countUp error: startVal is not a number');
            self.d.innerHTML = '--';
        }
        return false;
    }
    this.stop = function() {
        cancelAnimationFrame(self.rAF);
    }
    this.reset = function() {
        self.startTime = null;
        cancelAnimationFrame(self.rAF);
        self.d.innerHTML = self.formatNumber(self.startVal.toFixed(self.decimals));
    }
    this.resume = function() {
        self.startTime = null;
        self.startVal = self.frameVal;
        requestAnimationFrame(self.count);
    }
    this.formatNumber = function(nStr) {
        nStr += '';
        var x, x1, x2, rgx;
        x = nStr.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? self.options.decimal + x[1] : '';
        rgx = /(\d+)(\d{3})/;

        if (self.options.useGrouping) {
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + self.options.separator + '$2');
            }
        }
        return x1 + x2;
    }
    // format startVal on initialization
	var seconds = self.secondsSinceStart();
	var initialValue = self.valueSinceStart(seconds);
    self.d.innerHTML = self.formatNumber(initialValue.toFixed(self.decimals));
}
// Example:
// var numAnim = new countUp("SomeElementYouWantToAnimate", 0, 99.99, 2, 2.5);
// numAnim.start();
// with optional callback:
// numAnim.start(someMethodToCallOnComplete);
