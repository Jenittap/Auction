import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		try {
			String name = req.getParameter("name"),email=req.getParameter("email"),
				phonenumber=req.getParameter("phone"),passwd =req.getParameter("password");
			
			String regexString = "([a-zA-Z]{3,30}\\s*)+";
			Pattern r = Pattern.compile(regexString);
			Matcher m = r.matcher(name);
			Boolean bool = new Boolean(m.find());
			
			if(bool == false) {
				req.setAttribute("error_message", "Invalid Name");
	            req.getRequestDispatcher("register").forward(req, res);
			}
			
			regexString = "^([a-zA-Z0-9_.-]+)@([a-zA-Z]+)([\\.])([a-zA-Z]+)$";
			r = Pattern.compile(regexString);
			m = r.matcher(email);
			bool = new Boolean(m.find());
			
			if(bool == false) {
				req.setAttribute("error_message", "Invalid Email address");
	            req.getRequestDispatcher("register").forward(req, res);
			}
			
			regexString = "^(\\+91[\\-\\s]?)?[0]?(91)?[789]\\d{9}$";
			r = Pattern.compile(regexString);
			m = r.matcher(phonenumber);
			bool = new Boolean(m.find());
			
			if(bool == false) {
				req.setAttribute("error_message", "Invalid Phonenumber");
	            req.getRequestDispatcher("register.jsp").forward(req, res);
			}
			
			regexString = "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*$";
			r = Pattern.compile(regexString);
			m = r.matcher(passwd);
			bool = new Boolean(m.find());
			
			if(bool == false) {
				req.setAttribute("error_message", "");
	            req.getRequestDispatcher("register").forward(req, res);
			}
			
			new database().register(req);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		res.sendRedirect("login");
	}
}
