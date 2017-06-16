package unifesp.model;
import java.util.ArrayList;
import java.util.List;

public class TSPPP {
	
	private  List<No> trajetoFinal,trajetoInicial;
	public Double fo,foI,distanciaTotal,distanciaTotalI,premioTotal,premioTotalI,tempo;

	TSPPP(){
		trajetoFinal = new ArrayList<No>();
		trajetoInicial = new ArrayList<No>();
	}
	
	TSPPP(List<No> lista){
		this.trajetoFinal = lista;
	}
	
	TSPPP(List<No> lista,List<No> lista1,Double fo,Double foi,Double distancia,Double distanciai,Double premio,Double premioi,Double tempo){
		this.trajetoFinal = lista;
		this.trajetoInicial = lista1;
		this.fo = fo;
		this.foI = foi;
		this.distanciaTotal = distancia;
		this.distanciaTotalI = distanciai;
		this.premioTotal = premio;
		this.premioTotalI = premioi;
		this.tempo = tempo;
	}
	
	public List<No> getLista(){return this.trajetoFinal;}
	public Double getFo(){return this.fo;}
	public Double getDistancia(){return this.distanciaTotal;}
	public Double getPremio(){return this.premioTotal;}
	public Double getTempo(){return this.tempo;}
	
	
}
