$( document ).ready(function() {
  $(".upvote").click(function() {
    upvalue = $(this).data("upvalue");
    $(this).next().next('.vote-form').find('.anarchy').val(upvalue);
    $(this).next().next('.vote-form').find('form').submit();
  });

  $(".downvote").click(function() {
    downvalue = $(this).data("downvalue");
    $(this).next('.vote-form').find('.anarchy').val(downvalue);
    $(this).next('.vote-form').find('form').submit();
  });
});
