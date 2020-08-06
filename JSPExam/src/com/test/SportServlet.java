package com.test;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/Sport")
public class SportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			//post 방식에서의 한글처리
			request.setCharacterEncoding("UTF-8");
			//배열로 가져올때 방식
			String[] sports = request.getParameterValues("sports");
			String gender = request.getParameter("gender");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.println("<html>");
			out.println("<body>");
			
			
			for(String sport : sports)
			{
				out.print("종아하는 운동 : " +sport+"<br>");					
			}
			
		
		
			out.println("성별 : "+gender+"<br>");
			out.println("</body>");
			out.println("</html>");
	}

}
