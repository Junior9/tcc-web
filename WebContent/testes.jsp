 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>TCC-TSPPP</title>
		<link rel="stylesheet" href="css/bootstrap.css">	
		<script src="javascript/index.js"></script>
		<script src="javascript/jquery.min.js"></script>
		<script src="javascript/angular.min.js"></script>
		<script src="javascript/bootstrap.js"></script>		
		<script src="javascript/highcharts.js"></script>
		<script src="javascript/highcharts-more.js"></script>
		<script src="javascript/export.js"></script>	
		<script src="javascript/testes.js"></script>	
	</head>

	<body class="row" ng-app="MyAppHome" ng-controller="MyContHome" >	
			
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"  data-target="#bs-example-navbar-collapse-1 collapse" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>										
					<div class="nav-logo"></div>
				</button>
				<div class="nav-logo"></div> 
			</div>		
		   <ul class="nav">	       			
		   </ul>					
		</nav>	
		
		
		<div class="container">		
		
<!-- 		{{json.lin105}} -->
				
		  <center><h2>Trabalho de Conclusão de Curso</h2></center>
		  <ul class="nav nav-tabs">
		    <li class="active"><a data-toggle="tab" href="#home">Eil101</a></li>
		    <li><a data-toggle="tab" href="#menu1">kroA100</a></li>
		    <li><a data-toggle="tab" href="#menu2">eil51</a></li>
		    <li><a data-toggle="tab" href="#menu3">Berlin52</a></li>
		    <li><a data-toggle="tab" href="#menu4">St70</a></li>
		    <li><a data-toggle="tab" href="#menu5">Eil76</a></li>
		    <li><a data-toggle="tab" href="#menu6">Pr76</a></li>
		    <li><a data-toggle="tab" href="#menu7">KroB100</a></li>
		    <li><a data-toggle="tab" href="#menu8">Lin105</a></li>	
		    <li><a data-toggle="tab" href="#menu10">Pr144</a></li>
		  </ul>
		
		  <div class="tab-content">		  
		  
		    <div id="home" class="tab-pane fade in active">		   
		    	<table id="tableburmaR" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.eil101.piorS}}</td>
					    <td>{{json.eil101.mediaS}}</td> 
					    <td>{{json.eil101.melhorS}}</td>
					    <td>{{json.eil101.tspLib}}</td>		
					    <td>{{json.eil101.diferenca}}</td>				
					    <td>{{(json.eil101.diferenca * 100)/json.eil101.tspLib}}</td>	
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.eil101.size}}  </p>	
				<p>Desvio Padrão = {{json.eil101.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoEil101" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	
		      	
		      	<script type="text/javascript">
					$(function () {
					    $('#boxplotEil101').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot Eil101'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [718.149546, 722.871863, 735.941378, 748.301307, 776.799678],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotEil101" style="min-width: 210px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<div id="testes">
			      	<center><h4>Casos de Teste</h4></center>
			      			      	
			      	<table id="tableburmaT" class="table table-striped table-bordered">
						<tr>
						    <th>Beta</th> 
						    <th colspan="2">Permutação</th>
						    <th >F.O.</th>
						    <th>Distancia</th>
						    <th>Prêmio</th>
						    <th>Time</th>
						</tr>					
						<tr ng-repeat="t in json.eil101.listaInstancia ">
						    <td>{{t.beta}}</td>
						    <td>{{t.betaMin}}</td> 
						    <td>{{t.betaMax}}</td>
						    <td>{{t.fo}}</td>			
						    <td>{{t.distancia}}</td> 
						    <td>{{t.premio}}</td>
						    <td>{{t.tempo}}</td>					
						</tr>
					</table>    
				</div>   
		    </div>
		    
		    <div id="menu1" class="tab-pane fade">		   
		    	<table id="tableUlysses22R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.kroC100.piorS}}</td>
					    <td>{{json.kroC100.mediaS}}</td> 
					    <td>{{json.kroC100.melhorS}}</td>
					    <td>{{json.kroC100.tspLib}}</td>	
					    <td>{{json.kroC100.diferenca}}</td>		
					    <td>{{(json.kroC100.diferenca * 100)/json.kroC100.tspLib}}</td>				
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.kroC100.size}}  </p>	
				<p>Desvio Padrão = {{json.kroC100.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoKroC100" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<script type="text/javascript">
					$(function () {
					    $('#boxplotKroC100').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot KroA100'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [23290.294578,23608.1831295,24062.960892,24510.610014,24618.570606],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotKroC100" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableUlysses22T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.kroC100.listaInstancia">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  
		    </div>
		    
		    <div id="menu2" class="tab-pane fade">
		    	<table id="tableEil51R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.eil51.piorS}}</td>
					    <td>{{json.eil51.mediaS}}</td> 
					    <td>{{json.eil51.melhorS}}</td>
					    <td>{{json.eil51.tspLib}}</td>	
					    <td>{{json.eil51.diferenca}}</td>		
					    <td>{{(json.eil51.diferenca * 100)/json.eil51.tspLib}}</td>				
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.eil51.size}}  </p>	
				<p>Desvio Padrão = {{json.eil51.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoEil51" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      		<script type="text/javascript">
					$(function () {
					    $('#boxplotEil51').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot Eil51'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [442.661929, 454.570118, 457.098379, 457.661929, 463.407982],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotEil51" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableEil51T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.eil51.listaInstancia">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  
		    </div>
		    
		    <div id="menu3" class="tab-pane fade">
				<table id="tableEil51R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
						<th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.berlin52.piorS}}</td>
					    <td>{{json.berlin52.mediaS}}</td> 
					    <td>{{json.berlin52.melhorS}}</td>
					    <td>{{json.berlin52.tspLib}}</td>		
					    <td>{{json.berlin52.diferenca}}</td>		
					    <td>{{(json.berlin52.diferenca * 100)/json.berlin52.tspLib}}</td>						
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.berlin52.size}}  </p>	
				<p>Desvio Padrão = {{json.berlin52.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoBerlin52" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<script type="text/javascript">
					$(function () {
					    $('#boxplotBerlin52').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot Berlin52'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [7833.036905, 7966.7583565, 8131.811549, 8168.477859, 8231.114223],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotBerlin52" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableEil51T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.berlin52.listaInstancia">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  
		    </div>
		    
		    <div id="menu4" class="tab-pane fade">		   
				<table id="tableEil51R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.st70.piorS}}</td>
					    <td>{{json.st70.mediaS}}</td> 
					    <td>{{json.st70.melhorS}}</td>
					    <td>{{json.st70.tspLib}}</td>			
					    <td>{{json.st70.diferenca}}</td>			
					    <td>{{(json.st70.diferenca * 100)/json.st70.tspLib}}</td>	
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.st70.size}}  </p>	
				<p>Desvio Padrão = {{json.st70.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoSt70" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<script type="text/javascript">
					$(function () {
					    $('#boxplotSt70').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot St70'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [690.143465 ,700.598655, 705.785262, 707.281216, 707.281216],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotSt70" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableEil51T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.st70.listaInstancia">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  			      
		    </div>
		    
		    <div id="menu5" class="tab-pane fade">		   
				<table id="tableEil51R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.eil76.piorS}}</td>
					    <td>{{json.eil76.mediaS}}</td> 
					    <td>{{json.eil76.melhorS}}</td>
					    <td>{{json.eil76.tspLib}}</td>			
					    <td>{{json.eil76.diferenca}}</td>		
					    <td>{{(json.eil76.diferenca * 100)/json.eil76.tspLib}}</td>		
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.eil76.size}}  </p>	
				<p>Desvio Padrão = {{json.eil76.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoEil76" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<script type="text/javascript">
					$(function () {
					    $('#boxploteil76').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot Eil76'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [573.607714 ,593.386368,599.386368, 652.253234, 655.519211],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxploteil76" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableEil51T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.eil76.listaInstancia">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  			      
		    </div>
		    
		    <div id="menu6" class="tab-pane fade">		   
				<table id="tableEil51R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.pr76.piorS}}</td>
					    <td>{{json.pr76.mediaS}}</td> 
					    <td>{{json.pr76.melhorS}}</td>
					    <td>{{json.pr76.tspLib}}</td>				
					    <td>{{json.pr76.diferenca}}</td>	
					    <td>{{(json.pr76.diferenca * 100)/json.pr76.tspLib}}</td>		
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.pr76.size}}  </p>	
				<p>Desvio Padrão = {{json.pr76.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoPr76" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		        <script type="text/javascript">
					$(function () {
					    $('#boxplotPr76').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot Pr76'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [117668.54365 ,126092.900067, 129350.172765, 130462.135648, 135212.151491],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotPr76" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableEil51T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.pr76.listaInstancia ">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  			      
		    </div>
		  
		  	<div id="menu7" class="tab-pane fade">		   
				<table id="tableEil51R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.kroB100.piorS}}</td>
					    <td>{{json.kroB100.mediaS}}</td> 
					    <td>{{json.kroB100.melhorS}}</td>
					    <td>{{json.kroB100.tspLib}}</td>		
					    <td>{{json.kroB100.diferenca}}</td>		
					    <td>{{(json.kroB100.diferenca * 100)/json.kroB100.tspLib}}</td>				
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.kroB100.size}}  </p>	
				<p>Desvio Padrão = {{json.kroB100.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoKroB100" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	 <script type="text/javascript">
					$(function () {
					    $('#boxplotKroB100').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot KroB100'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [23030 ,23429, 23782, 24782, 25770],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotKroB100" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableEil51T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.kroB100.listaInstancia">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  			      
		    </div>
		    
		    <div id="menu8" class="tab-pane fade">		   
				<table id="tableEil51R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.lin105.piorS}}</td>
					    <td>{{json.lin105.mediaS}}</td> 
					    <td>{{json.lin105.melhorS}}</td>
					    <td>{{json.lin105.tspLib}}</td>	
					    <td>{{json.lin105.diferenca}}</td>				
					    <td>{{(json.lin105.diferenca * 100)/json.lin105.tspLib}}</td>			
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.lin105.size}}  </p>	
				<p>Desvio Padrão = {{json.lin105.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoLin105" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<script type="text/javascript">
					$(function () {
					    $('#boxplotLin105').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot Lin105'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [16042.003383 ,16373.5405345, 16493.922135, 16553.158934, 16853.158934],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotLin105" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableEil51T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.lin105.listaInstancia ">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  			      
		    </div>
			    
		    <div id="menu10" class="tab-pane fade">		   
				<table id="tableEil51R" class="table table-striped">
					<tr>
					    <th>Pior Solução</th> 
					    <th>Média</th>
					    <th>Melhor Solução</th>
					    <th>Soluçao TSPLIB</th>
					    <th>Diferença</th>
					    <th>Porcentagem Dif.</th>
					</tr>
				
					<tr>
					    <td>{{json.pr144.piorS}}</td>
					    <td>{{json.pr144.mediaS}}</td> 
					    <td>{{json.pr144.melhorS}}</td>
					    <td>{{json.pr144.tspLib}}</td>			
					    <td>{{json.pr144.diferenca}}</td>		
					    <td>{{(json.pr144.diferenca * 100)/json.pr144.tspLib}}</td>		
					</tr>
				</table>  
				<p>Numero de casos testados = {{json.pr144.size}}  </p>	
				<p>Desvio Padrão = {{json.pr144.desvioP}} </p>			
		      	
		      	<div>
		      		<div id="graficoPr144" style="min-width: 1100px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	<script type="text/javascript">
					$(function () {
					    $('#boxplotPr144').highcharts({
					
					        chart: {
					            type: 'boxplot'
					        },
					
					        title: {
					            text: 'Box Plot Pr144'
					        },
					
					        legend: {
					            enabled: false
					        },
					
					        xAxis: {
					            categories: ['1'],
					            title: {
					                text: 'Experiment No.'
					            }
					        },
					
					        yAxis: {
					            title: {
					                text: 'Observations'
					            }					        
					        },
					
					        series: [{
					            name: 'Observations',
					            data: [
					                [61008.811752 ,61233.0815105, 61536.054895, 62028.811752, 62438.811752],					             
					            ],
					            tooltip: {
					                headerFormat: '<em>Experiment No {point.key}</em><br/>'
					            }
					        }, {
					            name: 'Outlier',
					            color: Highcharts.getOptions().colors[0],
					            type: 'scatter',
					            data: [],
					            marker: {
					                fillColor: 'black',
					                lineWidth: 1,
					                lineColor: Highcharts.getOptions().colors[0]
					            },
					            tooltip: {
					                pointFormat: 'Observation: {point.y}'
					            }
					        }]
					
					    });
					});
				</script>
				
				<div>
		      		<div id="boxplotPr144" style="min-width: 500px; height: 400px; margin: 0 auto"></div>
		      	</div>
		      	
		      	
		      	<center><h4>Casos de Teste</h4></center>
		      	
		      	<table id="tableEil51T" class="table table-striped table-bordered">
					<tr>
					    <th>Beta</th> 
					    <th colspan="2">Permutação</th>
					    <th >F.O.</th>
					    <th>Distancia</th>
					    <th>Prêmio</th>
					    <th>Time</th>
					</tr>					
					<tr ng-repeat="t in json.pr144.listaInstancia">
					    <td>{{t.beta}}</td>
					    <td>{{t.betaMin}}</td> 
					    <td>{{t.betaMax}}</td>
					    <td>{{t.fo}}</td>			
					    <td>{{t.distancia}}</td> 
					    <td>{{t.premio}}</td>
					    <td>{{t.tempo}}</td>					
					</tr>
				</table>  			      
		    </div>
		  
		  </div>
		</div>	
	</body>
</html>