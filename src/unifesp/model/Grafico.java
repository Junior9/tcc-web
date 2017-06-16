package unifesp.model;

import java.util.ArrayList;
import java.util.List;

public class Grafico {
	
	public static class Serie{
		public String nome;
		public List<Double> data;	
				
		Serie(String nome,List<Double>data){
			this.nome = nome;
			this.data = data;
		}
		
		public Serie(){
			this.data = new ArrayList<Double>();
		}
		
	}	
	
	public String title,subtitle;
	public List<Serie> series;
	public int size;
	public Double tsplib;
	
	public Grafico(){
		this.series = new ArrayList<Serie>();
	}
	
	
}
