$(document.ready(function() {
    $("bg.jpg").rotate({ 
       bind: 
         { 
            mouseover : function() { 
                $(this).rotate({animateTo:180})
            },
            mouseout : function() { 
                $(this).rotate({animateTo:0})
            }
         } 
       
    });
});

