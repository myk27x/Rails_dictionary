$(document).ready(function()
{
  $("#to_search").change(function()
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
