package login;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import javax.xml.ws.http.HTTPException;

//@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		try {
			HttpSession session = request.getSession(false);

			if(session != null) { //세션에 사용자 정보가 가지고 있는 상태
				String sessionId = session.getId();
				System.out.println("세션 아이디 : " + sessionId);

				String user = (String) session.getAttribute("user");

				out.println("<html><body>");
				out.println("<table border='1' width='300'>");
				out.println("<tr><td width='300' align= 'center'>"+user+"님 로그인 되었습니다 </td></tr>");

				out.println("<tr>");
				out.println("<td align='center'>");
				out.println("<a href='#'>회원정보</a>");
				out.println("<a href='Logout'>로그아웃</a>");
				out.println("</td>");
				out.println("</tr></table>");
				out.println("</body></html>");
			}
			else { //세션에 사용자 정보가 없는 상태
				out.println("<html><body>");
				out.println("<form action='LoginCheck' method='post'>");
				out.println("<table border='1' width='300'>");

				out.println("<tr>");
				out.println("<th width='100'>아이디</th>");
				out.println("<td width='200'> &nbsp;<input type='text' name='id'></td>");
				out.println("</tr>");

				out.println("<tr>");
				out.println("<th width='100'>비밀번호</th>");
				out.println("<td width='200'> &nbsp;<input type='password' name='pwd'></td>");
				out.println("</tr>");

				out.println("<tr>");
				out.println("<td align='center' colspan='2'>");
				out.println("<input type='button' value='회원가입'>");
				out.println("<input type='submit' value='로그인'>");
				out.println("</td>");
				out.println("</tr>");
				out.println("</from>");
				out.println("</table>");
				out.println("</body></html>");

			}
		}
		finally{
			out.close();
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
