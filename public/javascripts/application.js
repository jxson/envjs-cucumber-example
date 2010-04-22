$(window).load(function(){
  $('a#test-link').click(function(e){
    e.preventDefault();
    $('p#result').html('The test link was clicked');
  });

  $('form#test-form').submit(function(e){
    e.preventDefault();
    var movie = $('input#movie').val();
    $.ajax({
      type: 'POST',
      data: {movie: movie},
      url: '/is_it_the_best',
      success: function(data) {
        $('p#result').html(data);
      }
    });
  });
});