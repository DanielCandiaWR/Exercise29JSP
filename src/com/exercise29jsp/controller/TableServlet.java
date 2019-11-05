package com.exercise29jsp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TableServlet
 */
@WebServlet("/TableServlet")
public class TableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TableServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Configure MIME type
		response.setContentType("text/html charset='utf-8");
		
		//Configure the output
		PrintWriter output = response.getWriter();
		
		//Get parameters
		int table = Integer.parseInt(request.getParameter("txtTable"));
		int range = Integer.parseInt(request.getParameter("txtRange"));
		
		//Algorithim
		for(int j=1;j<=range;j++) {
			output.append("<p>");
			output.append(String.format("%d X %d = %d", table,j,table*j)+"\n");
			output.append("</p>");
		}
		//Close output
		output.close();
	}

}
