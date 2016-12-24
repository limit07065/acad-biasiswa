$(function(){
  
  var overlay = {
    modal: '#modal',
    button :'#btn',
    m2: '#modal2',
    btn2: '#btn2',
    m3: '#modal3',
    btn3: '#btn3',

    action_over: function(){
      $(overlay.modal).show();
      
      $(overlay.button).hide();
      
      $(overlay.overlay_back).show();
  },
    action_over2: function(){
      $(overlay.m2).show();
      
      $(overlay.btn2).hide();
      
      $(overlay.overlay_back).show();
  },

  action_over3: function(){
      $(overlay.m3).show();
      
      $(overlay.btn3).hide();
      
      $(overlay.overlay_back).show();   
    }
    }

$(overlay.button).mouseover(function () { $(overlay.button).addClass('effect');} );
   $(overlay.button).mouseleave(function(){  $(overlay.button).removeClass('effect'); });
 $(overlay.button).click(function () { overlay.action_over(); });
     $(overlay.modal).click(function(){
    $(overlay.modal).hide();
    $(overlay.overlay_back).hide();
    $(overlay.button).show();
});

$(overlay.btn2).mouseover(function () { $(overlay.btn2).addClass('effect'); });
   $(overlay.btn2).mouseleave(function () { $(overlay.btn2).removeClass('effect'); });
$(overlay.btn2).click(function () { overlay.action_over2(); });
  
$(overlay.m2).click(function () {
    $(overlay.m2).hide();
    $(overlay.overlay_back).hide();
    $(overlay.btn2).show();
});

$(overlay.btn3).mouseover(function () { $(overlay.btn3).addClass('effect'); });
$(overlay.btn3).mouseleave(function () { $(overlay.btn3).removeClass('effect'); });
$(overlay.btn3).click(function () { overlay.action_over3(); });

$(overlay.m3).click(function () {
    $(overlay.m3).hide();
    $(overlay.overlay_back).hide();
    $(overlay.btn3).show();
});
   
});