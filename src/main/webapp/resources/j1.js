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

		    		episodeView += "<div class='col-sm-4 prl0'>" ;
					episodeView += "<p class='ep'>"+result[j+i]['name']+"</p>" ;
		        	episodeView += "<a href='sections/" + result[j+i]['id']+ "' >";
		        	episodeView += "<img src='" + result[j+i]['imageName']+ "' class='img-responsive' style='width:100%' alt='Image' /></a>";
					episodeView += "<p class='ep1'>"+result[j+i]['name']+"</p>" ;
					episodeView += "<p class='ps'>"+result[j+i]['data']+"</p>" ;
					episodeView += "</div>" ;
		        	
		    	}

				/*
				* <div class="col-sm-4 prl0">
				 <p class="ep">${media.name}</p>
				 <a href="sections/${media.id}">
				 <img src="${media.imageName}" class="img-responsive" style="width:100%" alt="Image" />
				 </a>
				 <p class="ep1">${media.name}</p>
				 <p class="ps">${media.data}</p>
				 </div>
				*
				* */

        		episodeView += "</div>" ;
				//alert(episodeView);
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