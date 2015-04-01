$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

$(".range_form").hide()
$(".scorecard").hide()

$(".new_round_link").click(function(event){
  event.preventDefault();
    $(this).hide();
    $(".range_form").show();
  });

 $(".submit_range_form").click(function(event){
    event.preventDefault();
    $(".scorecard").show();
    $(".range_form").hide();

  });
});

