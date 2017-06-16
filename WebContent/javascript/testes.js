angular.module('MyAppHome',[]).controller('MyContHome',function($scope){
	
	var basicUrl = "http://localhost:8080/TCC/";
	
	$( document ).ready(function() {	
		
		$.loading = true;
		var url = basicUrl+"testeController";
		
		$.get(url).success(function (data){							
			$scope.json = JSON.parse(data);
			$scope.$digest();
			graficoEil101(data,"#graficoEil101","Eil101");
			graficokroC100(data,"#graficoKroC100","KroA100");
			graficoEil51(data,"#graficoEil51","Eil51");
			graficoBerlin52(data,"#graficoBerlin52","Berlin52");
			graficoSt70(data,"#graficoSt70","St70");
		    graficoEil76(data,"#graficoEil76","eil76");
			graficoPr76(data,"#graficoPr76","Pr76");
			graficoKroB100(data,"#graficoKroB100","KroB100");			
			graficoLin105(data,"#graficoLin105","Lin105");		
			graficoPr144(data,"#graficoPr144","Pr144");
		});
	});	
	
	
	function graficoEil101(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'TSPLIB',		            
	            data: [629,629,629,629,629,629,629,629,629,629,629,629,629,629,629,629,629,629,629,629,629,629]
	        
	        },{
	            name: title,
	            data: [742.463218,732.773822,724.402892,718.149546,	726.8079,739.108934,758.946384,721.26014,739.108934,759.108934,748.301307,721.340834,731.340834,721.340834,749.108934,776.799678,741.340834,728.728703,718.301307,739.779882]
	        }
	        ]
	    });					
	}
	
	
	function graficokroC100(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
		  	  series: [{
	          name: 'TSPLIB',		            
	          data: [21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282,21282]
	      
		      },{
		          name: title,
		          data: [24618.570606,24618.570606,24618.570606,24618.570606,24088.346058,24062.960892,24510.610014,24243.613253,24600.967105,23647.583622,23729.283993,24107.887337,23647.189935,23819.048589,23569.176324,24287.581476,23290.294578,23417.95813,23849.321419,23430.363042,23413.32313]
		      } ]
	    });					
	}

	
	function graficoEil51(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'TSPLIB',		            
	            data: [426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426,426]
	        
	        },{
	            name: title,
	            data: [457.098379,457.661929,457.098379,454.570118,454.259606,457.098379,457.098379,454.259606,457.098379,457.098379,454.570118,454.570118,457.098379,457.098379,458.527301,457.098379,463.407982,457.661929,454.753699,459.872663,457.661929,458.507171,458.5273017,457,457]
	        }
	        ]
	    });					
	}
	

	function graficoBerlin52(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'TSPLIB',		            
	            data: [7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542,7542]
	        
	        },{
	            name: title,
	            data: [8136.438357,8131.811549,8231.114223,7956.833905,8131.811549,7885.200604,7976.682808,8168.517409,7833.036905,8231.114223,7950.362515,8136.438357,8131.811549,8137.336943,8168.477859,8126.210448,7833.036905,8182.926769,8174.887025,8131.811549,8148.18530]
	        }
	        ]
	    });					
	}
	
	
	function graficoSt70(data,id,title){
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
		  	  series: [{
	          name: 'TSPLIB',		            
	          data: [675,675,675,675,675,675,675,675,675,675,675,675,675,675,675,675,675,675,675,675,675]
	      
		      },{
		          name: title,
		          data: [707.281216,705.785262,707.281216,707.281216,707.281216,703.66669,707.281216,701.406554,707.281216,702.356806,693.42785,703.66669,690.143465,707.281216,707.281216,706.391134,699.948853,701.248457,707.281216,692.117202,690.143465]
		      } ]
	    });					
	}
	
	
	function graficoEil76(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'TSPLIB',		            
	            data: [538,538,538,538,538,538,538,538,538,538,538,538,538,538,538,538,538,538,538,538,538,538,538]
	        
	        },{
	            name: title,
	            data: [645.519211,625.519211,635.519211,573.607714,621.768279,599.588227,612.253234,599.386368,590.386368,593.786368,652.143234,590.276634,593.386368,593,593,622.253234,632.253234,612.253234,593.386368,593.386368,593.386368,590.276634,593.386368]
	        }
	        ]
	    });					
	}
	
	
	function graficoPr76(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
		  	  series: [{
	          name: 'TSPLIB',		            
	          data: [108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159,108159]
	      
		      },{
		          name: title,
		          data: [135212.151491,135212.151491,127456.200077,130462.135648,130447.538104,126092.900067,129256.731211,126092.900067,122677.810362,124734.373799,121992.019382,130462.135648,129669.546488,129350.172765,129242.78187,129350.172765,129418.08256,130462.135648,131632.125104,127668.54365]
		      } ]
	    });					
	}
	
	
	function graficoKroB100(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'TSPLIB',		            
	            data: [22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141,22141]
	        
	        },{
	            name: title,
	            data: [	25770,25746,25491,23508,23503,23030,23199,23199,23429,23429,23429,23782,23782,23782,23782,24429,24782,24429,24429,24782,24782,24429,24782]
	        }
	        ]
	    });					
	}
	
	
	function graficoLin105(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'TSPLIB',		            
	            data: [14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379,14379]
	        
	        },{
	            name: title,
	            data: [16042.003383,16042.003383,16453.158934,16693.922135,	16553.158934,16493.922135,16453.158934,16653.158934,16493.922135,16753.158934,16493.922135,	16853.158934,16753.158934,16448.309426,	16353.158934,16253.158934,16493.922135,	16493.922135,16153.158934,16493.922135,	16393.922135]
	        }
	        ]
	    });					
	}
	
	function graficoPr144(data,id,title){						
		var chart;		
		$(id).highcharts({
	        title: {
	            text: title,
	            x: -20 //center
	        },
	        subtitle: {
	            text: '',
	            x: -20
	        },
	        xAxis: {		            
	        	categories: []        
	        },
	        yAxis: {
	            title: {
	                text: 'Distancia'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#808080'
	            }]
	        },
	        tooltip: {
	            valueSuffix: ''
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: 'TSPLIB',		            
	            data:[58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537,58537]
	        
	        },{
	            name: title,
	            data: [61531.054895,61984.054895,62081.054895,62438.811752,61498.811752,61478.811752,61244.351269,61161.054895,	62426.811752,61758.811752,61581.054895,62028.811752,61064.351269,61541.054895,61426.811752,	61028.811752,61008.811752,61221.811752,62111.054895,61948.811752]
	        }
	        ]
	    });					
	}
	
});