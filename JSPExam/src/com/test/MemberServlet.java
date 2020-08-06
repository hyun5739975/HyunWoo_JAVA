package com.test;

import java.io.*;
import java.util.Enumeration;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/Member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		Enumeration<String> enu = request.getParameterNames();
		
		out.print("<html><body>");
		while(enu.hasMoreElements())
		{
			String name = enu.nextElement();
			String value = request.getParameter(name);
			out.print(name+" : "+value+"<br>");
		}
		
		out.print("</body></html>");
	}

}
