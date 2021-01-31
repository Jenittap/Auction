import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoCollection;

import database;

@WebServlet("/dashboard")
public class dashboard extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String email = (String) req.getAttribute("email");
		
		database db = new database();
		MongoCollection<Document> users = db.database.getCollection("user");
		BasicDBObject fields = new BasicDBObject("email_address", email);
		
		try {
			Document userdata = users.find(fields).iterator().next();
			req.setAttribute("auction_attended", (((String)userdata.get("auction_attended")).length()>0) ? ((String)userdata.get("auction_attended")) : "0");
			req.setAttribute("auction_won", (((String)userdata.get("auction_won")).length()>0) ? ((String)userdata.get("auction_won")) : "0");
			List<String> auction_created = new ArrayList<String>(Arrays.asList(((String) userdata.get("auction_created")).split(",")));
			req.setAttribute("auction_created",auction_created.size());
			
			MongoCollection<Document> auctions = db.database.getCollection("auction");
			
			List<Document> asList = new ArrayList<>();
			for (Document d : auctions.find(new BasicDBObject("Created_by", userdata.get("username")))) {
			    asList.add(d);
			}
			
			req.setAttribute("auction_list", asList);
			//res.sendRedirect("dashboard.jsp");
			req.getRequestDispatcher("dashboard.jsp").forward(req,res);
		}catch (NoSuchElementException e) {
			res.sendRedirect("login");
		}catch (Exception e) {
			System.out.println(e);
		}
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}
}
