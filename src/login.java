import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database;

@WebServlet("/login")
public class login extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		try {
			String mail = null;
			Cookie[] cookies = req.getCookies();
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("email")) {
					mail = cookie.getValue();
				}
			}
	
			if(mail!=null) {
				req.getRequestDispatcher("dashboard").forward(req, resp);
			}
		}
		catch(Exception e) {
			
		}
		req.getRequestDispatcher("/login.jsp").forward(req, resp);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		try {
			String mail = null;
			Cookie[] cookies = req.getCookies();
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("email")) {
					mail = cookie.getValue();
				}
			}
	
			if(mail!=null) {
				req.getRequestDispatcher("dashboard").forward(req, resp);
			}
		}
		catch(Exception e) {			
		}
		
		String email = req.getParameter("email"),passwd = req.getParameter("password");
 
        boolean isAuth = false;
		try {
			isAuth = new database().autheticate(email,passwd);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(isAuth);
        if(isAuth) {
        	req.setAttribute("email",email);
        	resp.addCookie(new Cookie("email", email));
        	req.getRequestDispatcher("dashboard").forward(req, resp);
        } else {
            req.setAttribute("error_message", "Incorrect password or User not register");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}
