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


function goclients(){

	var $clientcarousel = $('#clients-list');
	var clients = $clientcarousel.children().length;
	var clientwidth = (clients * 140); // 140px width for each client item 
	$clientcarousel.css('width',clientwidth);
	alert(clients);
	 
	var rotating = true;
	var clientspeed = 1800;
	var seeclients = setInterval(rotateClients, clientspeed);

};


 $(document).on({
    mouseenter: function(){
      rotating = false; // turn off rotation when hovering
      alert("in")
    },
    mouseleave: function(){
      rotating = true;
    }
  }, '#clients');
   
  function rotateClients() {
    if(rotating != false) {
      var $first = $('#clients-list li:first');
      $first.animate({ 'margin-left': '-140px' }, 600, function() {
        $first.remove().css({ 'margin-left': '0px' });
        $('#clients-list li:last').after($first);
      });
    }
  };
