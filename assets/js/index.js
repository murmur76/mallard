(function ($) {
  var backgrounds = $('.background .img');
  function changeBackground() {
    var $current = $(backgrounds.filter('.shown')[0]);
    $current.removeClass('shown');
    var $next = $current.next();
    if ($next.length > 0) {
      $next.addClass('shown');
    } else {
      $(backgrounds[0]).addClass('shown');
    }
  }

  $(function () {
    var contentHeight = $(window).height() - $('#nav').height();
    $('#content').height(contentHeight);

    setInterval(changeBackground, 5000);
  });
})(jQuery);
