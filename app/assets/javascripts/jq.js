$(document).ready(function() {
    $("section.cpu-section").hide();
    $("section.ram-section").hide();
    $("section.gfx-section").hide();

    $(".cpu-drop").click(function(event) 
    {
      $("section.cpu-section").slideToggle(500);
      event.preventDefault();
    });

    $(".ram-drop").click(function(event) 
    {
      $("section.ram-section").slideToggle(500);
      event.preventDefault();
    });

    $(".gfx-drop").click(function(event) 
    {
      $("section.gfx-section").slideToggle(500);
      event.preventDefault();
    });
});