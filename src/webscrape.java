import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;
import org.bson.Document;

import com.mongodb.*;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.*;


public class webscrape {
	public void scrape() {
		Logger.getLogger("org.mongodb.driver").setLevel(Level.SEVERE);
		MongoClientURI uri = new MongoClientURI("mongodb+srv://root:toor@cluster0.ozy3p.mongodb.net/auction?retryWrites=true&w=majority");
		
		MongoClient mongoClient = new MongoClient(uri);  
		MongoDatabase database = mongoClient.getDatabase("auction");
		
		MongoCollection<Document> auction = database.getCollection("auction");
		
		int id=1;
		String base_url="https://findauction.in/bank-property/coimbatore/all/all/";
		Pattern pattern = Pattern.compile("[\\d{1,},]{1,}\\d{1,}", Pattern.MULTILINE);
		Matcher matcher;
		Elements property_list;
		String full_data;
		String[] auctiondata;
		Document temp;
		
		for(int i=1;i<=48;i++) {
			try {
				org.jsoup.nodes.Document document= Jsoup.connect(base_url+i).get();
				
				property_list = document.getElementsByClass("col-md-12 col-sm-12 col-xs-12");
				full_data = property_list.text();

				auctiondata = full_data.split("View Auction");
				
				for(String data:auctiondata) {
					id++;
					temp = new Document("auction_id",id)
					.append("Name",data.split("Coimbatore")[0].trim()+" Coimbatore");
					
					if(data.indexOf("Area") > 0){
						temp.append("Description","Area"+ data.split("Auction Date")[1].split("Area")[1]);
					}else {
						temp.append("Description","EMD"+ data.split("Auction Date")[1].split("EMD")[1]);
					}
					
					temp.append("Created_by",data.split("Coimbatore")[1].split("[\\d{1,},]{1,}\\d{1,}")[0]);
					
					matcher = pattern.matcher(data.trim());
					if(matcher.find()) {
						temp.append("Min_Bit",matcher.group(0));
					}else {
						temp.append("Min_Bit","0");
					}
					temp.append("Date",data.split("Auction Date")[1].split("Area")[0].split("EMD")[0])
					.append("Max_Bit", "")
					.append("Won", "")
					.append("images", "")
					.append("Documents", "")
					.append("Current_bit", "")
					.append("Current_holder","");
					
					auction.insertOne(temp);
				}
			}catch(Exception e) {
				System.out.println(e);
			}
		}
		
		System.out.println("Updated Auction Data");
	}
	public static void main(String args[]) {
		new webscrape().scrape();
	}
}
