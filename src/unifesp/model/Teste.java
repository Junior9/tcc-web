package unifesp.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Teste {
	
	public static class BoxPlot{
		public Double valorMin,primeiroQuartil,mediana,terceiroQuartil,valorMaximo;	
	}
	
	
	public Double piorS,mediaS,melhorS,desvioP,tspLib,diferenca;	
	public int size;
	public List<InstanciaTeste> listaInstancia;	
	public BoxPlot boxplot;
	
	public Teste(Double maior, Double media, Double menor, Double df,List<InstanciaTeste> l,Double tsplib,Double diferenca,int size) {
		this.piorS = maior;
		this.mediaS = media;
		this.melhorS = menor;
		this.desvioP = df;
		this.listaInstancia = l;
		this.tspLib = tsplib;
		this.diferenca = diferenca;
		this.size = size;
		this.boxplot = calculaBoxPlot();
	}

	public Teste() {}
	
	private BoxPlot calculaBoxPlot(){
		BoxPlot bp = new BoxPlot();
		
		List<Double> l = new ArrayList<Double>();
		
		for(InstanciaTeste i : this.listaInstancia )
			l.add(i.fo);
		
		Collections.sort(l);
		
		bp.mediana = calculaMediana(l,this.size);
		bp.valorMin = l.get(0);
		bp.valorMaximo = l.get(this.size-1);
		bp.primeiroQuartil = calculaMediana(l, this.size/2);	
		bp.terceiroQuartil = l.get(this.size/2 + this.size/4);
		return bp;
	}

	private Double calculaMediana(List<Double> l,int tam) {
		int aux = 0;
		Double mediana;
		aux = tam/2;		
		
		if (tam % 2 == 0 ){
			mediana =  ((l.get(aux) + l.get(aux-1))/2); 			
		}else{
			mediana =  l.get(aux);
		}
		return mediana;
	}
	
}
