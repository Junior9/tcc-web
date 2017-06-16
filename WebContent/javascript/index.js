
var basicUrl = "http://localhost:8080/TCC/";
var app = app || {};
var context;
var canvasHeight;
var tsppp;
var context,context2;
function carrega(){
		var url = basicUrl+"carrega";
		var postData = $("#ajaxTema").serialize();		
		$.ajax({
		    type: "GET",
		    url: url,   
		    data: postData,
		    success: function (data) {		    	
		    	tsppp = JSON.parse(data);
		    	
		    	var c = document.getElementById("TrajetoInicial");
		    	var c2 = document.getElementById("TrajetoFinal");
		    	
		    	context = c.getContext("2d");
		    	context2 = c2.getContext("2d");
		    	
		        context.strokeStyle = '#000';
		        context.beginPath();
		        context.moveTo(tsppp.trajetoInicial[0].x*6, tsppp.trajetoInicial[0].y*6);
		        context.stroke();	  
		        
		        context2.strokeStyle = '#000';
		        context2.beginPath();
		        context2.moveTo(tsppp.trajetoFinal[0].x*6, tsppp.trajetoFinal[0].y*6);
		        context2.stroke();	  
		          
		        
		        $(tsppp.trajetoInicial).each(function (index, point) {		        	
		        	app.drawPoint(point.x*6, point.y*6, context);		            
		        });  	
		        //trajetoInicial
		        $(tsppp.trajetoFinal).each(function (index, point) {		        
		            app.drawPoint(point.x*6, point.y*6, context2);		            
		        });  		        
		    },
		 	error: function (data){
		 		alert(data);
		 	} 
		});		
		
		app.drawPoint = function (x, y, canvas) {
		    canvas.beginPath();
		    canvas.arc(x, y, 3, 0, 2 * Math.PI, true);
		    canvas.fill();
		};
}
	

function desenha(){	
	
	context.strokeStyle = '#000';
    context.beginPath();	
    
	context.moveTo(tsppp.trajetoInicial[0].x*6, tsppp.trajetoInicial[0].y*6);
	
	$(tsppp.trajetoInicial).each(function (index, point) {
		//alert(point.x+" "+ point.y);
		context.lineTo(point.x*6, point.y*6, context);
    });
	 
	context2.strokeStyle = '#FF0000';
	context2.beginPath();	
	
	context2.moveTo(tsppp.trajetoFinal[0].x*6,tsppp.trajetoFinal[0].y*6);	 
	
	$(tsppp.trajetoFinal).each(function (index, point) {		 
		context2.lineTo(point.x*6, point.y*6, context2);
    });  

    context.stroke();
    context2.stroke();
    
    var infoFinalFOI = $("#infoFinalFOI");
    var infoFinalDistI = $("#infoFinalDistI");
    var infoFinalPremioI = $("#infoFinalPremioI");
    
    infoFinalFOI.text("F.O. = "+tsppp.foI);
    infoFinalDistI.text("Distancia = "+tsppp.distanciaTotalI);
    infoFinalPremioI.text("Premio recolhido = "+tsppp.premioTotalI);
    
    var infoFinalFO = $("#infoFinalFO");
    var infoFinalDist = $("#infoFinalDist");
    var infoFinalPremio = $("#infoFinalPremio");
    
    infoFinalFO.text("F.O. = "+tsppp.fo);
    infoFinalDist.text("Distancia = "+tsppp.distanciaTotal);
    infoFinalPremio.text("Premio recolhido = "+tsppp.premioTotal);   
}

