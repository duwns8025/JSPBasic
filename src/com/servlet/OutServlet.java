package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OutServlet")
public class OutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public OutServlet() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//서블릿에서 out객체를 이용해서 브라우저 화면으로 문자열 데이터를 전송할 수 있습니다.
		//브라우저에 out객체를 이용해서 데이터를 보낼때, 브라우저한테 해석할 수 있는 힌트를 줘야합니다 (contenttype)
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out=response.getWriter(); //브라우저화면에 출력할 printwriter객체를 얻는방법.
		
		out.println("<b>안녕</b><br>");
		out.println("sadfsadf");
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
