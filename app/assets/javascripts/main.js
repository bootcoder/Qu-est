$(document).ready(function(){

  $('#create_acc_link').on('click', function(e){
    e.preventDefault();
    // console.log('create_btn');
    $('#hidden-signups').show();
    $('#create_acc_link').hide();
    $('#login-form').hide();
  });

});
