package kr.co.koo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/banana") // 어노테이션 기법 - 변경시 톰캣을 재시작 하는게 좋다.
public class ServletBasic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletBasic() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter(); // out에 글자를 써주겠다.
		out.println("<body>");
		out.print("오 이게 서블릿이야?");
		out.print("</body>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
