 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>TCC-TSPPP</title>
		<link rel="stylesheet" href="css/bootstrap.css">	
		<script src="javascript/index.js"></script>
		<script src="https://cdn.jsdelivr.net/jquery/2.2.3/jquery.min.js"></script>
		
	</head>

	<body class="row" >			
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
		   		<a href="javascript:carrega()" class="btn btn-success"> Carrega Cidades</a>
				<a href="javascript:desenha()" class="btn btn-success"> Desenha Trajetoria</a>       
		   </ul>					
		</nav>		
		
		<div class="container">
			
<!-- 			<div class="target"></div> -->
<!-- 			<p> -->
<!-- 			    <span style="display: block; clear: both;">Trajetoria</span> -->
<!-- 			    <textarea id="output" readonly rows="10" cols="50"></textarea> -->
<!-- 			</p> -->
		
			
<!-- 			<div class="row"> -->
			  <div class="col-xs-8 col-md-5">
			  		<h3>Solução TSPLIB</h3>
					<canvas id="TrajetoInicial" width="700" height="500">	</canvas>	
					<p id="infoFinalFOI"/>
			 		<p id="infoFinalDistI"/>
			 		<p id="infoFinalPremioI"/>		  
			  </div>
			  <div class="col-xs-8 col-md-2"></div>
			  <div class="col-xs-8 col-md-10">
			  		<h3>Solução ILS</h3>
					<canvas id="TrajetoFinal" width="700" height="500">	</canvas>
			 		<p id="infoFinalFO"/>
			 		<p id="infoFinalDist"/>
			 		<p id="infoFinalPremio"/>
			  </div>
<!-- 			</div> -->
			
<!-- 			<ul class="nav nav-tabs"> -->
<!-- 			  <li role="presentation" class="active"><a href="#">Home</a></li> -->
<!-- 			  <li role="presentation"><a href="#">Profile</a></li> -->
<!-- 			  <li role="presentation"><a href="#">Messages</a></li> -->
<!-- 			</ul> -->
			
			
	<!-- 		<script src="javascript/base.js"></script> -->
	<!-- 		<script src="javascript/linKernighan.js"></script> -->
	<!-- 		<script src="javascript/app.js"></script> -->			
		</div>		
	</body>
</html>