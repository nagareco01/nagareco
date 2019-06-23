// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
  //= require jquery
  //= require bootstrap-sprockets
  //= require_tree .
  //= require cocoon
  //= require bxslider
  //= require rails-ujs

jQuery(window).load(function(){
	$('.bxslider').bxSlider({
		auto: true,
		speed: 1000,
		moveSlide: 1,
		pause: 6000,
		minSlides: 5,
		maxSlides: 5,
		slideWidth: 250,
		randomStart: true,
		autoHover: true,
		touchEnabled: false
	});
});

$(function(){

	$("#back a").on("click",function(){
		$("body, html").animate({
			scrollTop:0
		}, 800);
		return false;
	});
	$(".way").waypoint(function(direction){
		var activePoint = $(this.element);
		if (direction === "down"){ //scroll down
			activePoint.addClass("active");
		}
		else{ //scroll up
			activePoint.removeClass("active");
		}
	},{offset : "95%"});
});

$(function(){
	jQuery(document).snowfall({
	flakeCount:3,
	flakeColor:"#fff",
	flakeIndex:-1,
	minSize:30,
	maxSize:50,
	round:true,
	shadow:false,
	image: '/assets/onpu.png'
});
});
$(function(){
	jQuery(document).snowfall({
	flakeCount:3,
	flakeColor:"#fff",
	flakeIndex:-1,
	minSize:30,
	maxSize:50,
	round:true,
	shadow:false,
	image: '/assets/onpu1.png'
});
});
$(function(){
	jQuery(document).snowfall({
	flakeCount:3,
	flakeColor:"#fff",
	flakeIndex:-1,
	minSize:30,
	maxSize:50,
	round:true,
	shadow:false,
	image: '/assets/onpu2.png'
});
});
$(function(){
	jQuery(document).snowfall({
	flakeCount:3,
	flakeColor:"#fff",
	flakeIndex:-1,
	minSize:30,
	maxSize:50,
	round:true,
	shadow:false,
	image: '/assets/onpu3.png'
});
});
$(function(){
	jQuery(document).snowfall({
	flakeCount:3,
	flakeColor:"#fff",
	flakeIndex:-1,
	minSize:30,
	maxSize:50,
	round:true,
	shadow:false,
	image: '/assets/onpu4.png'
});
});
$(function(){
	jQuery(document).snowfall({
	flakeCount:3,
	flakeColor:"#fff",
	flakeIndex:-1,
	minSize:30,
	maxSize:50,
	round:true,
	shadow:false,
	image: '/assets/onpu5.png'
});
});
$(function(){
	jQuery(document).snowfall({
	flakeCount:3,
	flakeColor:"#fff",
	flakeIndex:-1,
	minSize:30,
	maxSize:50,
	round:true,
	shadow:false,
	image: '/assets/onpu6.png'
});
});