$(document).ready(function() {

  function bindEvents() {
    $(".like").on("click", incrementLike)
    $(".join").on("click", incrementParticipant)
    $(".fa-square-o").on("click", completeGoal)
    $(".add").on("click", addNewForm)
    $(".followings").on("click", showFollowings)
    $(".followers").on("click", showFollowers)
    $(".hidefollowings").on("click", hideFollowings)
    $(".hidefollowers").on("click", hideFollowers)
  }

  function incrementLike(event) {
    event.preventDefault();
    $like = $(this)
    var goal_id = $(this).parents('div').eq(1).attr('id')
    var user_id = $(this).parents('div').eq(1).attr('class').split(" ")[0]
    $.ajax({
      url: '/users/' +user_id+ '/goals/' +goal_id+ '/likes',
      type: 'post'
    })
    .done(function(data){
      $like.html("<i class='fa fa-thumbs-up'></i> " + data.likes)
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function incrementParticipant(event) {
    event.preventDefault();
    $join = $(this)
    var goal_id = $(this).parents('div').eq(1).attr('id')
    var user_id = $(this).parents('div').eq(1).attr('class').split(" ")[0]

    $.ajax({
      url: '/users/' +user_id+ '/goals/' +goal_id+ '/participants',
      type: 'post'
    })
    .done(function(data){
      $join.parent().next().text(data.participants + " People Are Going")
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function completeGoal(event) {
    event.preventDefault();
    $complete = $(this)
    var id = $(this).parents('div').attr('id')
    $.ajax({
      url: '/users/' +id+ '/goals/completes',
      type: 'get'
    })
    .done(function(data){
      $(window).hide('slow')
      $complete.parent().append(data)
      $complete.parent().find('i').eq(0).remove()
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function addNewForm(event) {
    event.preventDefault();
    $add = $(this)
    var id = $(this).closest('div').data("id")
    $.ajax({
      url: '/users/' +id+ '/newgoal',
      type: 'get'
    })
    .done(function(data){
      $add.remove()
      $(data).appendTo('.new')
      $('.newgoal').show(1000)
      $('.newgoal').on("submit", addGoal)
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function addGoal(event) {
    event.preventDefault();
    var id = $(this).data("id")
    $.ajax({
      url: "/users/" +id+ "/goals/new",
      type: "post",
      data: $(this).serialize()
    })
    .done(function(data){
      var template = "<li><i class='fa fa-square-o'></i>&nbsp " +data.title + "</li>"
      $('.goals').find('ul').append(template)
      $('.newgoal').remove()
      $('.new').append("<button class='add'>Add Goal</button>")
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function showFollowers(event) {
    event.preventDefault();
    var id = $(this).parents('div').data("id")
    $.ajax({
      url: "/users/" +id+ "/followers",
      type: "get",
    })
    .done(function(data){
      $('.new').append(data)
      $('.followlist').slideToggle(1000)
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function showFollowings(event) {
    event.preventDefault();
    var id = $(this).parents('div').data("id")
    $.ajax({
      url: "/users/" +id+ "/followings",
      type: "get",
    })
    .done(function(data){
      $('.new').append(data)
      $('.followlist').slideToggle(1000)
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function hideFollowers(event) {
    event.preventDefault();
    var id = $(this).parents('div').data("id")
    $.ajax({
      url: "/users/" +id+ "/followers/delete",
      type: "get",
    })
    .done(function(data){
      $('.followlist').remove()
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  function hideFollowings(event) {
    event.preventDefault();
    var id = $(this).parents('div').data("id")
    $.ajax({
      url: "/users/" +id+ "/followings/delete",
      type: "get",
    })
    .done(function(data){
      $('.followlist').remove()
    })
    .fail(function(){
      console.log("You Failed!")
    })
  }

  bindEvents();
});
