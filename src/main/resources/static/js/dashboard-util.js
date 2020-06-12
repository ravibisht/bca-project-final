/**
 * 
 */
//FOR SEARCHING THE DATA IN TABLES 


$(document).ready(function(){
  $("#search_data").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#info_table tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});