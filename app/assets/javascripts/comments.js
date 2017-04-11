$.onmount('[role~=request-comment]', function(){
	
	var $comment = $(this).parent().parent().find();


	$create_comment.on('click', function(){
	 var id = $(this).data('id');
	 var url = 'articles' + id + '/createcomment';

	$.ajax({
	  url: url,
	  method: 'PUT',
	  data: {},
	  success: function(data){

	  },
	  error: function(err, data){
	  console.error(data);
	  console.error(err);
	  }
	});

	});

});


	