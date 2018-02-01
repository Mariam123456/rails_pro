  
var refreshRating = function() {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};


$(document).on('turbolinks:load ajaxSuccess', function() {
  alert('action cable doing');
  refreshRating()
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



