
$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
});

$(document).on('turbolinks:load', function(){
  
  $(".img-zoom").elevateZoom({
   zoomWindowFadeIn: 500,
    zoomWindowFadeOut: 500,
    lensFadeIn: 500,
    lensFadeOut: 500,
  zoomType				: "lens",
  lensShape : "round",
  lensSize    : 200
  }



  	);
  
});



