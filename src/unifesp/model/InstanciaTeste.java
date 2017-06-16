package unifesp.model;

public class InstanciaTeste {
	

	
	public Double beta,betaMin,betaMax,fo,distancia,premio;
	int tempo;
	
	InstanciaTeste(Double beta,Double bMin,double bMax,Double fo,Double dist,Double pre,int tempo){
		this.beta = beta;
		this.betaMin = bMin;
		this.betaMax = bMax;
		this.fo = fo;
		this.distancia = dist;
		this.premio = pre;
		this.tempo = tempo;
	}
}