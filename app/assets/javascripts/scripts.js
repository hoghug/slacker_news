$( document ).ready(function() {
  $(".upvote").click(function() {
    upvalue = $(this).data("upvalue");
    $(this).next().next().find('.anarchy').val(upvalue);
    $(this).next().next().find('form').submit();
  });

  $(".downvote").click(function() {
    downvalue = $(this).data("downvalue");
    $(this).next().find('.anarchy').val(downvalue);
    $(this).next().find('form').submit();
  });
});
