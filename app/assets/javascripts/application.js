// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// Loads all Bootstrap javascripts

//= require bootstrap


function CheckedValues(){
	var images =  $(".imgType");
    for (i=0; i<images.length;i++){
    images[i].onmouseover = function(){descriptionChecked(this);}}
}

function descriptionChecked(v){

		var h=v.getElementsByTagName('p')[0].innerHTML;
		var c = $(".info-type")[0];
		var r = c.getElementsByTagName('p')[0];
		r.innerHTML = h;

}
var rotating = true;

function goclients(){

	var clientcarousel = $("#clients-list");
	var clients = clientcarousel.children().length;
	var clientwidth = (clients * 180); // 140px width for each client item 
	clientcarousel.css('width',clientwidth);

	 
	
	var clientspeed = 1800;
	var seeclients = setInterval(rotateClients, clientspeed);

};


 $(document).on({
    mouseenter: function(){
      rotating = false; // turn off rotation when hovering

    },
    mouseleave: function(){
      rotating = true;
    }
  }, "#clients");
   
  function rotateClients() {
    if(rotating != false) {
      var first = $("#clients-list li:first");
      first.animate({ 'margin-left': '-148px' }, 400, function() {
        first.remove().css({ 'margin-left': '0px' });
        $('#clients-list li:last').after(first);
      });
    }
  };


var marker;
var map;

function initialize() {
  var myLatlng = new google.maps.LatLng(-33.4442267,-70.62773520000002);
  var mapOptions = {
    zoom: 17,
    center: myLatlng
  };

   map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h2 id="firstHeading" class="firstHeading">Oficina Sistemas y Suministros</h2>'+
      '<div id="bodyContent">'+
      '<p><b>Dirección:</b> Marín #0319, Providencia, Santiago'+
      '<p><b>t:</b> (02) 222 0320</p>'+
      '</div>'+
      '</div>';

  var infowindow = new google.maps.InfoWindow({
      content: contentString
  });

   marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'Oficina Sistemas y Suministros',
      animation: google.maps.Animation.DROP
  });
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });

   google.maps.event.addListener(marker, 'click', toggleBounce);
}

  function toggleBounce() {

    if (marker.getAnimation() != null) {
      marker.setAnimation(null);
    } else {
      marker.setAnimation(google.maps.Animation.BOUNCE);
    }
  }

$(document).on('page:load',initialize);