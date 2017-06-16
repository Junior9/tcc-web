package unifesp.controller.grafico;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import unifesp.model.AnaliseTeste;
import unifesp.model.Grafico;
import unifesp.model.Grafico.Serie;
import unifesp.model.InstanciaTeste;
import unifesp.model.ReadFile;

/**
 * Servlet implementation class GraficosController
 */
@WebServlet("/GraficosEil51")
public class eil51Grafico extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public eil51Grafico() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnaliseTeste analise = ReadFile.readFileTeste();
		Grafico g = new Grafico();
		
		g.title = "Eil51";		
		g.tsplib = analise.eil51.tspLib;
		Serie dado = new Serie();
		dado.nome = "Eil51";	
		
		for(InstanciaTeste it : analise.eil51.listaInstancia){
			dado.data.add(it.fo);
		}
		
		g.series.add(dado);		
		g.size = dado.data.size();
		Gson gson = new Gson();		
		String jason = gson.toJson(g);			
		response.getWriter().append(jason);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
