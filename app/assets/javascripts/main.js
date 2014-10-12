$(document).ready(function(){
  
  $(".add_class_btn").on("click", function(event) {
  	console.log("add course btn");
  	
  })

  $('#create_acc_link').on('click',function(e){
    e.preventDefault();
    $('.hidden').show();
  } )

})
