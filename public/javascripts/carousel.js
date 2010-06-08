$(document).ready(function(){
	$("#steps .step").css({opacity:0.1,color:'black'})
	$("#steps .step").eq(0).css({opacity:1,borderColor:'rgb(147,184,118)'})
	n = $("#carousel-content .carousel-slide").size()
	w = $("#steps").outerWidth()
	$("#steps .step").css({width:w/n});
	$("#carousel-content .carousel-slide").css({width:$("#carousel-wrapper").outerWidth()});
	$("#carousel-content").css({width:$("#carousel-wrapper").outerWidth()*(n+1)});
});
function step(s) {
	loff = $("#carousel-wrapper").position().left-$("#carousel-content").position().left
	slide = $("#carousel-content .carousel-slide").eq(0);
	i = Math.round(loff/slide.width())
	if(s < 0){
		i--;
		if(loff > 0) $("#carousel-content").animate({left:'+='+slide.outerWidth()},'slow')
	}else{
		i++
		n = $("#carousel-content .carousel-slide").size()
		$("#carousel-content").animate({color:'green',left:'-='+slide.outerWidth()},'slow')
	}
	$("#steps .step").not(i).animate({opacity:0.1},'fast')
	$("#steps .step").not(i).css({borderColor:'#000000'})
	$("#steps .step").eq(i).css({borderColor:'rgb(147,184,118)'})
	$("#steps .step").eq(i).animate({opacity:1.0},'slow')

}
