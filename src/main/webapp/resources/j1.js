$( document ).ready(function() {
	//alert($( "div.demo-container" ).html());
});

/* */

function showMore( ) {	
	var episode = document.getElementById("episode") ;
	//alert("showMore/"+episode.innerHTML);
	$.ajax({
        type: "GET",
        url: "showMore/"+episode.innerHTML,
        dataType: 'json',
        async: false,
        contentType: 'application/json',
        success: function(result){

            //alert(result.length);
            //alert(JSON.stringify(result));
            
        	episode.innerHTML = Number(episode.innerHTML) +  Number(result.length);      	
       
        	if ( result.length == 0 ){
        		
        		document.getElementById('showMore').style.display = "none" ;
        	}
        	
        	//alert(result[i]['imageName']) ;
        	var episodeView ;
        	for (var i = 0; ; i+=3) {
        		
        		episodeView = "<div class='row'>" ;
        		
        		for ( var j = 0 ; j+i < result.length && j < 3 ; j++ ){
        			
        			//alert(j);
		    		episodeView += "<div class='col-sm-4'>" ;
		        	episodeView += "<a href='sections/" + result[j+i]['id']+ "' class='thumbnail'>";
		        	episodeView += "<img src='" + result[j+i]['imageName']+ "' class='img-responsive' style='width:95%' alt='Image' /></a>";
		        	episodeView += "</div>" ;
		        	
		    	}
        		
        		episodeView += "</div>" ;
        		//alert(episodeView) ;
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