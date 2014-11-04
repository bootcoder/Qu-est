$(document).ready(function(){

  $('#create_acc_link').on('click', function(e){
    e.preventDefault();
    // console.log('create_btn');
    $('#hidden-signups').show();
    $('#create_acc_link').hide();
    $('#login-form').hide();
  });

  $(window).bind("load", function () {
    var footer = $("#footer");
    var pos = footer.position();
    var height = $(window).height();
    height = height - pos.top;
    height = height - footer.height();
    if (height > 0) {
        footer.css({
            'margin-top': height + 'px'
        });
    }
	});

});
