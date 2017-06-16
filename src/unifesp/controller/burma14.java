package unifesp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import unifesp.model.ReadFile;
import unifesp.model.Teste;

/**
 * Servlet implementation class burma14
 */
@WebServlet("/burma14")
public class burma14 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public burma14() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String burma14Arq = "C:/Users/chico.DESKTOP-9P227N2/WORKSPACES/WorkSpace Unifesp/C/TCC_TSPP/burma14.txt";
		Teste burma14 = ReadFile.LeArquivodeTeste(burma14Arq,0);
		Gson gson = new Gson();		
		String jason = gson.toJson(burma14);			
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
