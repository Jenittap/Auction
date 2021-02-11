import com.mongodb.*;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

import java.util.logging.*;
import java.util.*;

public class test_mongodb { 
   
   public static void main( String args[] ) {  
      
    Logger.getLogger("org.mongodb.driver").setLevel(Level.SEVERE);
	MongoClientURI uri = new MongoClientURI("mongodb+srv://root:toor@cluster0.ozy3p.mongodb.net/auction?retryWrites=true&w=majority");
	
	MongoClient mongoClient = new MongoClient(uri);  
	MongoDatabase database = mongoClient.getDatabase("auction");
	
	MongoCollection<Document> auction = database.getCollection("auction");
//	Document document = new Document("auction_id", "1")
//			.append("Name", "Land Sale")
//			.append("Description", "Land of 5 acres near chennai is under sale")
//			.append("Created_by", "admin")
//			.append("Min_Bit", "500000")
//			.append("Max_Bit", "")
//			.append("Won", "")
//			.append("images", "")
//			.append("Documents", "");
//	auction.insertOne(document);
//	System.out.println("Document inserted successfully");
	
//	FindIterable<Document> auctions = auction.find();
//	Iterator it = auctions.iterator();
//	while (it.hasNext()) {
//		System.out.println(it.next());
//	}
	
//	MongoCollection<Document> user = database.getCollection("user");
//	document = new Document("customer_id", "1")
//			.append("username", "admin")
//			.append("password", "5F4DCC3B5AA765D61D8327DEB882CF99")
//			.append("email_address", "admin@admin.com")
//			.append("phonenumber", "")
//			.append("aadhar", "")
//			.append("auction_attended", "")
//			.append("auction_won", "")
//			.append("auction_created", "")
//			.append("is_admin", "1")
//			.append("is_org", "0");
//	user.insertOne(document);
//	System.out.println("Document inserted successfully");
//	
//	FindIterable<Document> users = user.find();
//	it = users.iterator();
//	while (it.hasNext()) {
//		System.out.println(it.next());
//	}
	
	database = mongoClient.getDatabase("auction");
   	BasicDBObject fields = new BasicDBObject("Current_holder", "admin@admin.com");
   	FindIterable<Document> auctions_attended = database.getCollection("auction").find(fields);
   	Iterator<Document> it = auctions_attended.iterator();
   	while(it.hasNext()) {
   		System.out.println(it.next().get("Name"));
   	}
   } 
}