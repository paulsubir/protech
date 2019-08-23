$(function(){
    $(".menu-btn").click(function(){
        $(".menu").slideToggle(500);
    })
})

$(function(){
    var get_header = $(".header").outerHeight(); //Header is a variable.
  //console.log(get_header);
    $(".menu a").click(function(e){
      e.preventDefault();
        var a = $(this).attr("href");
        $("html, body").animate({
            scrollTop:$(a).offset().top - get_header
        },1000)
        
        $(".menu a li").removeAttr("class");
        $(this).find("li").attr("class","active");
    })
    
  })