package unifesp.model;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class ReadFile {

	final static int SIZE = 144;
	final static Double[] tspLibSolucao = {629.0,21282.0,426.0,7542.0,675.0,538.0,108159.0,22141.0,14379.0,44303.0,58537.0};
	static List<No> trajeto = new ArrayList<No>();
	static List<No> trajetoInicial = new ArrayList<No>();

	private static BufferedReader lerArq;
	
	public static void comparaTrajeto(){
		String ArqO = "C:/Users/chico.DESKTOP-9P227N2/Documents/Converte/kroC100O.txt";
		String ArqS = "C:/Users/chico.DESKTOP-9P227N2/Documents/Converte/kroC100OS.txt";
		List<No> dados = new ArrayList<No>();
		List<No>  sol = new ArrayList<No>();
		try{
			FileReader original = new FileReader(ArqO);
			FileReader solucao = new FileReader(ArqS);
			
			BufferedReader lerArqO = new BufferedReader(original);
			BufferedReader lerArqS = new BufferedReader(solucao);
			
			String linhaOriginal = lerArqO.readLine();
			String linhaSolucao = lerArqS.readLine();
			
			int id,x,y;
			while(linhaOriginal != null){
				id = Integer.parseInt(linhaOriginal.substring(0,3).trim());
				x = Integer.parseInt(linhaOriginal.substring(3,9).trim());
				y = Integer.parseInt(linhaOriginal.substring(9,18).trim());
				dados.add(new No(id,x,y));	
				linhaOriginal = lerArqO.readLine();
			}
			
			while(linhaSolucao != null){
				id = Integer.parseInt(linhaSolucao.substring(0,3).trim());		
				//System.out.println(id);
				sol.add(dados.get(id-1));	
				linhaSolucao = lerArqS.readLine();
			}
				
			for(No i: sol){
				System.out.println(i.getId()+"   "+i.getX() +"      "+ i.getY()+"      ");
			}		
			
		}catch (IOException e) {
			System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
		}		
	}
	
	public static TSPPP readFile() {
		String nomeArq = "C:/Users/chico.DESKTOP-9P227N2/Documents/Converte/Proton/eil51.txt";	
		
		List<No> trajetoS = new ArrayList<No>();
		List<No> trajetoTSPLIB = new ArrayList<No>();
		
		No n0 = null;
		No n01 = null;
		Double fo,foI,dist,distI,premio,premioI,tempo;
		fo= foI = dist = distI = premio= premioI = tempo = (double) 0;
		try {
			FileReader arq = new FileReader(nomeArq);
			BufferedReader lerArq = new BufferedReader(arq);
			int count,id,x,y,troco;
			count = 0;
			troco = 0;
			String linha = lerArq.readLine();
			while (linha != null) {
				if(!linha.equals("-1") && troco ==0){
					if (count < SIZE) {
						if(count == 0){
							id = Integer.parseInt(linha.substring(0, 3).trim());
							x = Integer.parseInt(linha.substring(3,10).trim());
							y = Integer.parseInt(linha.substring(11,17).trim());
							n0 = new No(id,x,y);
							trajetoS.add(new No(id,x,y));						
						}else{						
							id = Integer.parseInt(linha.substring(0, 3).trim());
							x = Integer.parseInt(linha.substring(3,10).trim());
							y = Integer.parseInt(linha.substring(11,17).trim());
							trajetoS.add(new No(id,x,y));
						}
					}					
				}else{					
					if(linha.equals("-1")){
						troco = 1;
						//linha = lerArq.readLine();
						count = -1;
					}else{
						if (count < SIZE) {
							if(count == 0){
								id = Integer.parseInt(linha.substring(0, 3).trim());
								x = Integer.parseInt(linha.substring(3,10).trim());
								y = Integer.parseInt(linha.substring(11,17).trim());
								n01 = new No(id,x,y);
								trajetoTSPLIB.add(new No(id,x,y));						
							}else{						
								id = Integer.parseInt(linha.substring(0, 3).trim());
								x = Integer.parseInt(linha.substring(3,10).trim());
								y = Integer.parseInt(linha.substring(11,17).trim());
								trajetoTSPLIB.add(new No(id,x,y));
							}
						}							
					}
				}		
				linha = lerArq.readLine();
				if(count != -1)
					count++;
				else
					count = 0;
			}
			
			arq.close();
		} catch (IOException e) {
			System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
		}		
		
//		trajetoS.add(n0);
//		trajetoTSPLIB.add(n01);
		
		for(No i: trajetoTSPLIB){
			System.out.println(i.getId()+"   "+i.getX() +"      "+ i.getY()+"      ");
		}	
		
		System.out.println();
		
		for(No i: trajetoS){
			System.out.println(i.getId()+"   "+i.getX() +"      "+ i.getY()+"      ");
		}	
		
		return new TSPPP(trajetoS,trajetoTSPLIB,fo,foI,dist,distI,premio,premioI,tempo);	
	}
	
	public static AnaliseTeste readFileTeste(){			
		
		String burma14Arq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/eil101.txt";
		String ulysses22Arq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/kroA100.txt";
		String eil51Arq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/eil51.txt";
		String berlin52Arq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/berlin52.txt";
		String eil70Arq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/st70.txt";
		String eil76Arq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/eil76.txt";
		String pr76Arq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/pr76.txt";
		String koBArq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/kroB100.txt";
		String lin105 = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/lin105.txt";
		String pr107 = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/pr107.txt";
		String pr144 = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP_float/pr144.txt";
		
		return new AnaliseTeste(LeArquivodeTeste(burma14Arq,0),LeArquivodeTeste(ulysses22Arq,1),LeArquivodeTeste(eil51Arq,2),LeArquivodeTeste(berlin52Arq,3),LeArquivodeTeste(eil70Arq,4),LeArquivodeTeste(eil76Arq,5),LeArquivodeTeste(pr76Arq,6),LeArquivodeTeste(koBArq,7),LeArquivodeTeste(lin105,8),LeArquivodeTeste(pr107,9),LeArquivodeTeste(pr144,10));
	}

	public static Teste LeArquivodeTeste( String nomeArq,int indexTSPLIB) {
		List<InstanciaTeste> list = new ArrayList<InstanciaTeste>();
		
		try {
			FileReader arq = new FileReader(nomeArq);
			lerArq = new BufferedReader(arq);
			String linha = lerArq.readLine();
			while (linha != null) {
				double beta = Double.parseDouble(linha.substring(0,8).trim());
				double betaMin = Double.parseDouble(linha.substring(11,20).trim());
				double betaMax = Double.parseDouble(linha.substring(23,32).trim());
				double fo = Double.parseDouble(linha.substring(35,49).trim());
				double dist = Double.parseDouble(linha.substring(52,70).trim());
				double premio = Double.parseDouble(linha.substring(72,92).trim());				
				int tempo = Integer.parseInt(linha.substring(93,108).trim());	
				
				list.add(new InstanciaTeste(beta,betaMin,betaMax,fo,dist,premio,tempo));
				linha = lerArq.readLine();
			}
		} catch (IOException e) {
			System.err.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
		}
		
		Double maior, menor, somatorio,media,df;
		
		somatorio = df = (double) 0;
		menor = maior = list.get(0).fo;
		
		
		for(InstanciaTeste it : list){
			if(menor > it.fo)
				menor = it.fo;
			
			if(maior < it.fo)
				maior = it.fo;
			
			somatorio += it.fo;
		}
		
		media = somatorio/list.size();
		df  = desvioPadrao(media,list);
		return new Teste(maior,media,menor,df,list,tspLibSolucao[indexTSPLIB],menor-tspLibSolucao[indexTSPLIB],list.size());
	}	
	
	public static Double quadrado(Double x){
		return x*x;
	}
	
	public static Double desvioPadrao(Double media,List<InstanciaTeste> list){
		Double df;
		df = 0.0;		
		for(InstanciaTeste it : list)
			df += quadrado(it.fo - media);				
		
		df = df/list.size();		
		return Math.sqrt(df);
	}
	
	
	public static void main(String[] args) {
		comparaTrajeto();		
	}
}
