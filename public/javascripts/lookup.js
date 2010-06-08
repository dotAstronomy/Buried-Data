function getLookUPResults(jData) {
	if(jData == null) return false;
	var equinox = jData.equinox;
	var target = jData.target;
	var coordsys = jData.coordsys;
	var ra = jData.ra;
	var dec = jData.dec;
	var gal = jData.galactic;
	var category = jData.category;
	var service = jData.service;
	var message = jData.message;
	lookup_done = true;
	if(target.suggestion){
		//$('#lookupmessages').html("Not found. Did you mean <a href=\"#\" onClick=\"$('#lookupobject').val('"+escape(target.suggestion)+"');lookUP();\">"+target.suggestion+"</a>?");
		// Could return a spelling correction here?
	}else{
		
		if(ra){			
			var str = ra.decimal+','+dec.decimal;
			var msg = ra.h+":"+ra.m+":"+ra.s+", "+dec.d+":"+dec.m+":"+dec.s+' ('+coordsys+' '+equinox+')';
			$('#lookupresult').html('<em>'+ msg+ '</em>')
		}else{
			// Nothing found
		}
	}
	return false;
}
function lookUP(div) {
	var object = $(div).val();
	if(object){ $.getJSON('http://www.jodcast.net/lookUP/json/?name='+object+'&callback=?', getLookUPResults); }
}