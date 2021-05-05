 $(document).ready(function(){
    $('#technical_download').click(function(){
      $( "#test_download" ).toggleClass( "d-none" );
      $( "#technical_solution" ).toggleClass( "d-none" );
   });

    $('#english_download').click(function(){
      $( "#english_test" ).toggleClass( "d-none" );
      $( "#english_solution" ).toggleClass( "d-none" );
   });

   var $table = $('#solutions');

	  $(function() {
	    $table.bootstrapTable();
	  });
});