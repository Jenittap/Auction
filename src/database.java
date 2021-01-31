import com.mongodb.*;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import com.sun.org.apache.bcel.internal.generic.NEW;

import org.bson.Document;

import java.util.logging.*;
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
}
