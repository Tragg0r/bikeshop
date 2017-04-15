$(document).on('turbolinks:load', function(){
    //Raty Plugin
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' } );
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });

    //Elevate Zoom Plugin
    $('.img-zoom').elevateZoom();
});
