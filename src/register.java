import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class register extends HttpServlet {
	public void doGet(HttpServletRequest req,  HttpServletResponse res) throws ServletException, IOException {
		req.getRequestDispatcher("/register.jsp").forward(req, res);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
			new database().register(req);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		res.sendRedirect("login");
	}
}
