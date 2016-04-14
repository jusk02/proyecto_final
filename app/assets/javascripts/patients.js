$(document).on('ready page:load', function(e) {
  
  
  $.ajax({
    url: '/users',
    method: 'GET',
    success: function (response) {
      $('#list').html(response);
      
    	}
    

  });

});