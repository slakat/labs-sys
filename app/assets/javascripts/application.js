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
      alert("in")
    },
    mouseleave: function(){
      rotating = true;
    }
  }, "#clients");
   
  function rotateClients() {
    if(rotating != false) {
      var first = $("#clients-list li:first");
      first.animate({ 'margin-left': '-148px' }, 600, function() {
        first.remove().css({ 'margin-left': '0px' });
        $('#clients-list li:last').after(first);
      });
    }
  };
