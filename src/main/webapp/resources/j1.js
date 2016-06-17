$( document ).ready(function() {
	//alert($( "div.demo-container" ).html());
});

/* */

function showMore( ) {
	//alert("gd");
	var episode = document.getElementById("episode") ;
	$.ajax({
        type: "GET",
        url: "mediaListWithOffset/"+episode.innerHTML,
        dataType: 'json',
        async: false,
        contentType: 'application/json',
        success: function(result){

        	episode.innerHTML = Number(episode.innerHTML) +  Number(result.length);
       
        	if ( result.length == 0 ){
        		
        		document.getElementById('showMore').style.display = "none" ;
        	}
        	
			var episodeView ;
        	for (var i = 0; ; i+=3) {
        		
        		episodeView = "<div class='row'>" ;
        		
        		for ( var j = 0 ; j+i < result.length && j < 3 ; j++ ){

		    		episodeView += "<div class='col-sm-4'>" ;
		        	episodeView += "<a href='sections/" + result[j+i]['id']+ "' class='thumbnail'>";
		        	episodeView += "<img src='" + result[j+i]['imageName']+ "' class='img-responsive' style='width:95%' alt='Image' /></a>";
		        	episodeView += "</div>" ;
		        	
		    	}
        		
        		episodeView += "</div>" ;
        		$('.episode-container').append(episodeView);
        		
        		if ( j != 3 ){
        			
        			break;
        		}
        		
        	}	
        },
        error: function(xhr){
        		alert("error");
        }
	});
	
}