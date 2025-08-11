package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class FormPage
 */
@WebServlet("/FormPage2")
public class FormPage2 extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String korStr = request.getParameter("kor");
		String engStr = request.getParameter("eng");
		
		int kor = Integer.parseInt(korStr);
		int eng = Integer.parseInt(engStr);
		int total = kor + eng;
		double avr = total / 2.0;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>servlet page</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>servlet page</h2>");
		writer.println("<p>name: "+name);
		writer.println("</p>");
		writer.println("<p>KOR: "+kor);
		writer.println("</p>");
		writer.println("<p>ENG: "+eng);
		writer.println("</p>");
		writer.println("<p>TOTAL: "+total);
		writer.println("</p>");
		writer.println("<p>AVR: "+avr);
		writer.println("</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	

}