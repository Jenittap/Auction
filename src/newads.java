import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database;

@WebServlet("/postad")
public class newads extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		Cookie[] cookies = req.getCookies();
		boolean flag=false;
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("email")) {
				req.setAttribute("email", cookie.getValue());
				flag=true;
			}
		}
		if(!flag) {
			res.sendRedirect("login");
		}
		req.getRequestDispatcher("newad.jsp").forward(req, res);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String email = null;
		Cookie[] cookies = req.getCookies();
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("email")) {
				email = cookie.getValue();
			}
		}
		
		if(email == null) {
			res.sendRedirect("login");
		}
		String title = req.getParameter("title"),
				description=req.getParameter("Description")+" "+req.getParameter("category"),
				price=req.getParameter("price"),
				date=req.getParameter("Date");
		if(new database().postad(title, description, price,date, email))
			res.sendRedirect("dashboard");
		else
			res.sendRedirect("postad");
		
	}
}
