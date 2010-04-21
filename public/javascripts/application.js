$(window).load(function(){
  $('a#test-link').click(function(e){
    e.preventDefault();
    $('p#result').html('The test link was clicked');
  });

  $('form#test-form').submit(function(e){
    e.preventDefault();
    var movie = $('input#movie').val();
    $('p#result').html('You think ' + movie + ' is the best movie ever? Pfff...');
  });
});