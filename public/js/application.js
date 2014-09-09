$(document).ready(function() {

  function bindEvents() {
    $(".like").on("click", incrementLike)
    $(".join").on("click", incrementParticipant)
  }

  function incrementLike(event) {
    event.preventDefault();
    var id = $(this).parents('div').eq(1).attr('id')
    $.ajax({
      url: '/goals/'+id+'/likes',
      type: 'post'
    })
    .done(function(data){
      debugger
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function incrementParticipant(event) {
    event.preventDefault();
    var id = $(this).parents('div').eq(1).attr('id')
    $.ajax({
      url: '/goals/'+id+'/participants',
      type: 'post'
    })
    .done(function(data){
      debugger
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  bindEvents();
});
