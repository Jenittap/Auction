<!DOCTYPE html>
<html lang="eng">
<%@ page import="org.bson.Document,java.util.*" %>
<%@page import="com.mongodb.*" %> 
<%@page import="com.mongodb.client.MongoCollection" %> 
<%@page import="com.mongodb.client.FindIterable" %> 
<%@page import="com.mongodb.client.MongoDatabase" %> 
<%@page import="java.util.logging.*" %>
<%
	Logger.getLogger("org.mongodb.driver").setLevel(Level.SEVERE);
	MongoClientURI uri = new MongoClientURI("mongodb+srv://root:toor@cluster0.ozy3p.mongodb.net/auction?retryWrites=true&w=majority");
	
	MongoClient mongoClient = new MongoClient(uri); 
	MongoDatabase database = mongoClient.getDatabase("auction");
	
	String email="";
	String username="";
	Cookie[] cookies = request.getCookies();
	try{
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("email")) {
				email = cookie.getValue();
			}
		}
	}catch(Exception e){
		response.sendRedirect("login");
	}
	if(email.equals("")){
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	Document user = database.getCollection("user").find(new Document("email_address",email)).iterator().next();
%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>E-Auction</title>
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/fontawesome/fontawesome-all.css">
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/transitions.css">
    <link rel="stylesheet" href="css/dashboard.css">
    <link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" href="css/dashboard-responsive.css">
</head>
<body>
     <!-- HEADER START -->
    <header class="ps-main-header3">
        <nav>
            <div class="navbar navbar-expand-lg navbar-light ps-navbar">
                <div class="ps-navbar__header">
                    <a href="dashboard" class="navbar-brand"><img src="images/logo.png" alt="Image Description"></a>
                    
                    <div id="ps-nav" class="ps-nav navbar-expand-lg">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="lnr lnr-menu"></i>
                        </button>
                        <div class="collapse navbar-collapse ps-navigation" id="navbarNav">
                            <ul class="navbar-nav nav-Js ml-auto ps-nav ps-nav__ul">
                                
                                <li class="nav-item"><a href="postad">Post Ad</a></li>
                                <li class="nav-item"><a href="auctionlists">Action list</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="ps-navbar__userbtn">
                        <div class="ps-headeruser">              
                            <ul class="navbar-nav ps-nav">
                                <li class="nav-item ps-post--btn"><a href="javascript:alert('Welcome <%=user.get("username")%>');" class="btn ps-btn style="background-color:#f1c40f">Welcome <%=user.get("username")%></a></li>                             
                                <li class="nav-item ps-post--btn"><a href="logout" class="btn ps-btn"><i class="ti-shift-right"></i>Logout</a></li>
                            </ul>
                        </div>
                    </div>          
                </div>
            </div>
        </nav>
    </header>
    <!-- HEADER END -->
    <!-- MAIN START -->
    <main class="ps-main">
        <section class="ps-main-section">
            <div class="container">
                <div class="row">
                    <!-- MAIN CONTENT START -->
                    <div class="col-lg-12 ps-dashboard-user">
                        <div class="ps-dashboard--btn">
                            <a href="javascript:void(0);" class="btn ps-post ps-btn">
                                <h6>${auction_attended}<span class="d-block">Total Auction Attended</span></h6>
                                <span class="ps-icon"><i class="ti-bookmark-alt"></i></span>
                            </a>
                            <a href="javascript:void(0);" class="btn ps-item ps-btn">
                                <h6>${auction_won}<span class="d-block">Total Auction Won</span></h6>
                                <span class="ps-icon"><i class="ti-star"></i></span>
                            </a>
                            <a href="javascript:void(0);" class="btn ps-cancel ps-btn">
                                <h6>${auction_created}<span class="d-block">Total Auction Created</span></h6>
                                <span class="ps-icon"><i class="ti-na"></i></span>
                            </a>
                        </div>
                        
                        <!-- POSTED ADS START -->
                        <div class="ps-posted-ads ps-my-ads">
                            <div class="ps-posted-ads__heading">
                                <h5>My Posted Ads</h5>
                                <button class="btn ps-btn" onclick="location.href='postad'">Post Ad</button>
                            </div>
                            <div class="ps-items-heading">
                                <h6>Title</h6><h6>Status</h6><h6>Actions</h6>
                            </div>
                            <ul>
                           <%@ page import="org.bson.Document,java.util.List" %>
                           <%
                           List<Document> auctions = (List<Document>)request.getAttribute("auction_list");
                        	for(int i=0;i<auctions.size();i++){
                        		Document d = auctions.get(i);
	                        	String dom = "<li>"+
	                        			"<div>"+
	                        			"<div class=\"ps-posted-ads__title\">"+
	                        			"<h6>"+d.get("Name")+"</h6>"+
	                        			"<div>"+
	                        			"<div class=\"ps-description\">"+
	                        			"<h5>"+d.get("Name")+"</h5>"+
	                        			"<h6>"+d.get("Description")+"</h6>"+
	                        			"</div>"+
	                        			"</div>"+
	                        			"</div>"+
	                        			"<div class=\"ps-posted-ads__status\">"+
	                        			"<h6>Status</h6>";
	                        	
	                        	if("".equals(d.get("Won"))){
	                        			dom+="<button class=\"btn ps-btn ps-featured\">Waiting for End</button>";
	                        	}else{
	                        		dom+="<button class=\"btn ps-btn ps-primary\">Won by: "+d.get("Won")+"</button>";
	                        	}
	                        			
	                        	dom+="</div>"+
	                        			"<div class=\"ps-posted-ads__actions\">"+
	                        			"<h6>Actions</h6>"+
	                        			"<span><a href=\"javascript:void(0);\" class=\"ps-edit\"><i class=\"ti-pencil\"></i> Edit</a><span>/</span><a href=\"javascript:void(0);\" class=\"ps-delete\"><i class=\"ti-trash\"></i> Delete</a></span>"+
	                        			"</div>"+
	                        			"</div>"+
	                        			"</li>";
                        		out.println(dom);
                        	}
                        %>
                            </ul>
                        </div>
                        <br><br>
                        <div class="ps-posted-ads ps-my-ads">
                            <div class="ps-posted-ads__heading">
                                <h5>Attended Auction</h5>
                                <button class="btn ps-btn" onclick="location.href='postad'">Post Ad</button>
                            </div>
                            <div class="ps-items-heading">
                                <h6>Title</h6><h6>Status</h6>
                            </div>
                            <ul>
                            
                           <%
	                       	BasicDBObject fields = new BasicDBObject("Current_holder", "admin@admin.com");
	                       	FindIterable<Document> auctions_attended = database.getCollection("auction").find(fields);
	                       	Iterator<Document> it = auctions_attended.iterator();
	                       	while(it.hasNext()){
	                       		Document temp = it.next();
	                       		String dom = "<li>"+
	                        			"<div>"+
	                        			"<div class=\"ps-posted-ads__title\">"+
	                        			"<h6>"+(String)temp.get("Name")+"</h6>"+
	                        			"<div>"+
	                        			"<div class=\"ps-description\">"+
	                        			"<h5>"+(String)temp.get("Name")+"</h5>"+
	                        			"<h6>"+(String)temp.get("Description")+"</h6>"+
	                        			"</div>"+
	                        			"</div>"+
	                        			"</div>"+
	                        			"<div class=\"ps-posted-ads__status\">"+
	                        			"<h6>Status</h6>";
	                        	
	                        	if("".equals((String)temp.get("Won"))){
	                        			dom+="<button class=\"btn ps-btn ps-featured\">Waiting for End</button>";
	                        	}else{
	                        		dom+="<button class=\"btn ps-btn ps-primary\">Won by: "+(String)temp.get("Won")+"</button>";
	                        	}
	                        			
	                        	dom+="</div>"+
	                        			"<div class=\"ps-posted-ads__actions\">"+
	                        			"</div>"+
	                        			"</div>"+
	                        			"</li>";
	                       		out.println(dom);
                        	}
	                        mongoClient.close();
                        	%>
                            </ul>
                        </div>
                    </div>
                    <!-- MAIN CONTENT END -->
                </div>
            </div>
        </section>
    </main>
    <!-- MAIN END -->
    <script src="js/vendor/jquery.min.js"></script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/vendor/jquery-library.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/vendor/jquery-ui.min.js"></script>
    <script src="js/vendor/jquery.ui.touch-punch.js"></script>
    <script src="js/main.js"></script>
</body>
</html>