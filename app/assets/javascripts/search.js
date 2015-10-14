// function debounce(func, wait, immediate) {
// 	var timeout;
// 	return function() {
// 		var context = this, args = arguments;
// 		var later = function() {
// 			timeout = null;
// 			if (!immediate) func.apply(context, args);
// 		};
// 		var callNow = immediate && !timeout;
// 		clearTimeout(timeout);
// 		timeout = setTimeout(later, wait);
// 		if (callNow) func.apply(context, args);
// 	};
// };
//
// var myEfficientFn = debounce(function() {
// 	// All the taxing stuff you do
// }, 1000);

// $(document).ready(function()
// {
//   $("#to_search").on("keyup", function()
//   {
//      var definition    = $(this).val();
//
//      $.ajax('/search', {
//        method: 'GET',
//        data: {
//          definition: definition
//        }
//      })
//   });
// });

// $('input.text').keyup( $.debounce( 250, text_2 ) );

$(document).ready(function()
{
  $("#to_search").on("keyup", function()
  {
     var definition    = $(this).val();

     $.ajax('/search', {
       method: 'GET',
       data: {
         definition: definition
       }
     })
  });
});
