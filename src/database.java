import com.mongodb.*;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import com.sun.org.apache.bcel.internal.generic.NEW;

import org.bson.Document;

import java.util.logging.*;

import javax.servlet.http.HttpServletRequest;

import java.security.NoSuchAlgorithmException;
import java.util.*;

import encrpyt;

public class database {
	
	MongoClientURI uri;
	MongoClient mongoClient; 
	MongoDatabase database;
	
	public database() {
		Logger.getLogger("org.mongodb.driver").setLevel(Level.SEVERE);
		this.uri= new MongoClientURI("mongodb+srv://root:toor@cluster0.ozy3p.mongodb.net/auction?retryWrites=true&w=majority");
		this.mongoClient = new MongoClient(uri);  
		this.database = mongoClient.getDatabase("auction");
	}
	
	public MongoCollection<Document> auction_list(){
		MongoCollection<Document> auction = database.getCollection("auction");
		return auction;
	}
	
	public boolean autheticate(String email, String password) throws NoSuchAlgorithmException {
		MongoCollection<Document> users = database.getCollection("user");
		BasicDBObject fields = new BasicDBObject("email_address", email);
		try {
			Document userdata = users.find(fields).iterator().next();
			String hash = new encrypt().md5encrypt(password);
			return hash.equalsIgnoreCase((String) userdata.get("password"));
		}catch (NoSuchElementException e) {
			return false;
		}
	}
	
	public void register(HttpServletRequest req) throws NoSuchAlgorithmException {
		MongoCollection<Document> user = database.getCollection("user");
		FindIterable<Document> users = user.find();
		Iterator<Document> it = users.iterator();
		int id=0;
		while (it.hasNext()) {
			id = Integer.parseInt((String) it.next().get("customer_id"));
		}
		Document document = new Document("customer_id", id+1)
				.append("username", req.getParameter("name"))
				.append("password", new encrypt().md5encrypt(req.getParameter("password")))
				.append("email_address", req.getParameter("email"))
				.append("phonenumber", req.getParameter("phone"))
				.append("aadhar", "")
				.append("auction_attended", "")
				.append("auction_won", "")
				.append("auction_created", "")
				.append("is_admin", "0");
		if(req.getParameter("reg_type").equals("org"))
			document.append("is_org", "1");
		else
			document.append("is_org", "0");
		user.insertOne(document);
	}
	
	public boolean postad(String title,String Description,String price,String date,String email) {
		MongoCollection<Document> users = database.getCollection("user");
		BasicDBObject fields = new BasicDBObject("email_address", email);
		String username = null;
		try {
			Document userdata = users.find(fields).iterator().next();
			username=(String) userdata.get("username");
		}catch (NoSuchElementException e) {
			return false;
		}
		
		MongoCollection<Document> auction = database.getCollection("auction");
		
		FindIterable<Document> auctions = auction.find();
		Iterator<Document> it = auctions.iterator();
		int id=0;
		while (it.hasNext()) {
			id = (Integer) it.next().get("auction_id");
		}
		id++;
		
		Document document = new Document("auction_id", id)
				.append("Name", title)
				.append("Description", Description)
				.append("Created_by", username)
				.append("Date", date)
				.append("Min_Bit", price)
				.append("Max_Bit", "")
				.append("Won", "")
				.append("images", "")
				.append("Documents", "");
		auction.insertOne(document);
		return true;
	}
}
