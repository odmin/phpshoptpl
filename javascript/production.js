jQuery(document).ready(function($) {
    $('.menu-cat__item').hover(
        function () {$(this).find('.menu-cat-child').css('display', 'inline-block');},
        function () {$(this).find('.menu-cat-child').css('display', 'none')}
      )
  })