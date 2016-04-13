

function login_business(form, e) {
  e.preventDefault();

  $.ajax({
    url: '/businesses/sign_in',
    dataType: 'json',
    data: form.serialize(),
    method: 'POST',
    success: function (data) {
      $('#myModal').modal('hide');
      location.href = '/';
    },
    error: function (data){
      console.log(data)
      form.find(".errors").html(data.responseJSON.error).show();
    }
  });
}

$(document).on('ready page:load', function(event) {
  
  
  $(".modal .new_business").on("submit", function (e) {
    var form = $(this);
    login_business(form, e);
  });

  $(".panel-b .new_business").on("submit", function (e) {
    var form = $(this);
    login_business(form, e);
  });
 


});