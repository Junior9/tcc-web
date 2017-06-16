package unifesp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import unifesp.model.AnaliseTeste;
import unifesp.model.ReadFile;

@WebServlet("/testeController")
public class TesteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TesteController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnaliseTeste analise = ReadFile.readFileTeste();
		Gson gson = new Gson();		
		String jason = gson.toJson(analise);			
		response.getWriter().append(jason);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
