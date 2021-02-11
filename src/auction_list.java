import database;

import java.util.Date;
import java.util.Iterator;
import org.bson.Document;
import org.bson.json.JsonMode;
import org.bson.json.JsonWriterSettings;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/auctions")
public class auction_list extends GenericServlet{
	public void service(ServletRequest request,ServletResponse response)throws ServletException,IOException{
		
		response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
		database db = new database();
		MongoCollection auction = db.auction_list();
		FindIterable<Document> auctions = auction.find();
		Iterator it = auctions.iterator();
		JsonWriterSettings settings = JsonWriterSettings.builder( ).outputMode( JsonMode.SHELL ).build( );
		
		String jsonString = "[";
		Date date = new Date();
		
		while (it.hasNext()) {
			try {
				long countDownDate = new Date((String)((Document) it.next()).get("Date")).getTime();
				long now = new Date().getTime();
				if(countDownDate - now > 0) {
					jsonString+= ""+((Document)it.next()).toJson(settings).replace("ObjectId(", "").replace(")", "")+", ";
				}
			}catch (Exception e) {
				
			}
		}
		StringBuilder sb = new StringBuilder(jsonString);
		sb.deleteCharAt(jsonString.length()-2);
		jsonString = sb.toString();
		jsonString+="]";
		out.println(jsonString);
		out.close();
	}
}