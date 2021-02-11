<!DOCTYPE html>
<html lang="zxx">
<%@page import="com.mongodb.*" %> 
<%@page import="com.mongodb.client.MongoCollection" %> 
<%@page import="com.mongodb.client.FindIterable" %> 
<%@page import="com.mongodb.client.MongoDatabase" %> 
<%@page import="org.bson.Document" %> 
<%@page import="java.util.*" %> 
<%@page import="java.util.logging.*" %> 
<%@page import="com.mongodb.client.model.Filters" %>
<%@page import="com.mongodb.client.model.Updates" %> 

<% 
	Logger.getLogger("org.mongodb.driver").setLevel(Level.SEVERE);
	MongoClientURI uri = new MongoClientURI("mongodb+srv://root:toor@cluster0.ozy3p.mongodb.net/auction?retryWrites=true&w=majority");
	
	MongoClient mongoClient = new MongoClient(uri);  
	MongoDatabase database = mongoClient.getDatabase("auction");
	String email="";
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
	BasicDBObject fields = new BasicDBObject("email_address", email);
	Document user = database.getCollection("user").find(fields).iterator().next();
	String Name = (String)user.get("username");	
	
    if(request.getParameter("submit")!=null && request.getParameter("id")!=null)
    {
        String x = request.getParameter("value");
		
		MongoCollection<Document> xyz = database.getCollection("auction");
        
        Integer id= Integer.parseInt(request.getParameter("id"));
        
        Document query = new Document();
        query.append("auction_id",id);
        
        Document setData = new Document();
        setData.append("Current_bit", x)
        	.append("Current_holder",email);
        
        Document update = new Document();
        update.append("$set", setData);

        xyz.updateOne(query, update);
        
        //out.println("Updated");
        mongoClient.close();
    }
    
   %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BootStrap HTML5 CSS3 Theme</title>
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
	<link rel="icon" href="images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/fontawesome/fontawesome-all.css">
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/themify-icons.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/chosen.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/transitions.css">
</head>

<body>
    <!-- HEADER START -->
    <header class="ps-main-header3">
        <nav>
            <div class="navbar navbar-expand-lg navbar-light ps-navbar">
                <div class="ps-navbar__header">
                    <a href="index.html" class="navbar-brand"><img src="images/logo.png" alt="Image Description"></a>
                    <div class="ps-header-form">
                        <form class="ps-form ps-main-form">
                            <div class="ps-form__input"><input class="form-control" placeholder="What Are You Looking For?"></div>
                            <div>
                                <div class="ps-geo-location ps-location">
                                    <input type="text" class="form-control" placeholder="Location*">
                                    <a href="javascript:void(0);" class="ps-location-icon ps-index-icon"><i class="ti-target"></i></a>
                                    <a href="javascript:void(0);" class="ps-arrow-icon ps-index-icon"><i class="ti-angle-down"></i></a>
                                    <div class="ps-distance">
                                        <div class="ps-distance__description">
                                            <label for="amountfour">Distance:</label>
                                            <input type="text" id="amountfour" readonly>
                                        </div>                                           
                                        <div id="slider-range-min"></div>
                                    </div>
                                </div>                     
                                <button class="btn ps-btn">Search Now</button>
                                <button class="btn ps-btn ps-icon"><i class="ti-search"></i></button>
                            </div>
                        </form>
                        <div class="ps-form--cancel">
                            <a href="javascript:void(0);">Cancel</a>
                            <a href="javascript:void(0);" class="ps-icon"><i class="ti-close"></i></a>
                        </div> 
                        <div class="ps-form-btn">
                            <button class="btn ps-btn">
                                <i class="ti-search"></i>
                            </button>
                        </div>
                    </div>
                    <div id="ps-nav" class="ps-nav navbar-expand-lg">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="lnr lnr-menu"></i>
                        </button>
                        <div class="collapse navbar-collapse ps-navigation" id="navbarNav">
                            <ul class="navbar-nav nav-Js ml-auto ps-nav ps-nav__ul">
                                <li class="ps-menuhover menu-item-has-children page_item_has_children">
                                    <a href="javascript:void(0);">Main <i class="fas fa-chevron-down"></i></a>
                                    <ul class="sub-menu ps-dropdown ps-first__dropdown">
                                        <li class="nav-item"><a href="index.html">Home 1</a></li>
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a href="index-v2.html">Home 2</a></li> 
                                    </ul>
                                </li>
                                <li class="nav-item"><a href="categories.html">Categories</a></li>
                                <li class="nav-item"><a href="contact.html">Contact</a></li>
                                <li class="ps-menuhover menu-item-has-children page_item_has_children">
                                    <a href="javascript:void(0);" class="ps-header__line"><span class="lnr lnr-menu"></span></a>
                                    <ul class="ps-dropdown sub-menu">
                                        <li>
                                            <a href="about.html">About</a>
                                        </li>
                                        <li class="dropdown-divider"></li>
                                        <li class="current-menu-item">
                                            <a href="privacy-info.html">Privacy Info</a>
                                        </li>
                                        <li class="dropdown-divider"></li>
                                        <li class="ps-menuhover ps-submenuhover menu-item-has-children page_item_has_children">
                                            <a href="javascript:void(0);">Blog<i class="ti-angle-right"></i></a>
                                            <ul class="ps-dropdown ps-submenu sub-menu">
                                                <li class="nav-item"><a href="blog-grid.html">Blog Grid</a></li>                             
                                                <li class="dropdown-divider"></li>
                                                <li class="nav-item"><a href="blog-single.html">Blog Single</a></li>  
                                            </ul>
                                        </li>
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item ps-menuhover ps-submenuhover menu-item-has-children page_item_has_children">
                                            <a href="javascript:void(0);">Listing <i class="ti-angle-right"></i></a>
                                            <ul class="ps-dropdown ps-submenu sub-menu">
                                                <li class="nav-item"><a href="listing-grid.html">Listing Grid</a></li>                             
                                                <li class="dropdown-divider"></li>
                                                <li class="nav-item"><a href="listing-list.html">Listing List</a></li>  
                                                <li class="dropdown-divider"></li>
                                                <li class="nav-item"><a href="listing-single.html">Listing Single</a></li>  
                                            </ul>
                                        </li>
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a href="login.html">Login</a></li>
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a href="coming-soon.html">Coming Soon</a></li>
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a href="404-error.html">404 Error</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="ps-navbar__userbtn">
                        <div class="ps-headeruser">              
                            <ul class="navbar-nav ps-nav">
                                <li class="nav-item ps-login--btn"><a href="login.html" class="btn ps-btn">Login / Register</a></li>
                                <li class="nav-item dropdown ps-menuhover ps-userlogo">
                                    <a href="javascript:void(0);" id="navbarDropdown4" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <figure class="d-inline-block">
                                            <img src="images/user-logo.jpg" alt="Image Description">
                                        </figure>
                                    <span><i class="fas fa-chevron-down"></i></span>
                                    </a>
                                    <ul class="dropdown-menu ps-dropdown ps-user__dropdown position-absolute" aria-labelledby="navbarDropdown4">
                                        <li class="nav-item"><a class="dropdown-item" href="dashboard-insights.html"><i class="ti-dashboard"></i>Insights</a></li>                             
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a class="dropdown-item" href="dashboard-profile-setting.html"><i class="ti-user"></i>Profile Settings</a></li>
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a class="dropdown-item" href="dashboard-my-ads.html"><i class="ti-align-justify"></i>My Ads</a></li>  
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a class="dropdown-item" href="dashboard-post-ad.html"><i class="ti-settings"></i>Post Ads</a></li>  
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a class="dropdown-item" href="dashboard-offers-messages.html"><i class="ti-email"></i>Offers/Messages</a></li>  
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a class="dropdown-item" href="dashboard-buy-package.html"><i class="ti-shopping-cart"></i>Buy New Packages</a></li>  
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a class="dropdown-item" href="dashboard-payments.html"><i class="ti-user"></i>Payments</a></li>  
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item dropdown ps-menuhover ps-submenuhover">
                                            <a class="dropdown-item" href="javascript:void(0);" id="navbarDropdown5" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="ti-heart"></i>My Favorite <i class="ti-angle-right ps-right"></i>
                                            </a>
                                            <ul class="dropdown-menu ps-dropdown ps-submenu navbar-nav" aria-labelledby="navbarDropdown5">
                                                <li class="nav-item"><a class="dropdown-item" href="dashboard-my-favorite.html">Favorite Listing</a></li>                             
                                                <li class="dropdown-divider"></li>
                                                <li class="nav-item"><a class="dropdown-item" href="javascript:void(0);">Sub Menu</a></li>
                                            </ul>
                                        </li>  
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a class="dropdown-item" href="dashboard-account-setting.html"><i class="ti-bookmark"></i>Account Setting</a></li>  
                                        <li class="dropdown-divider"></li>
                                        <li class="nav-item"><a class="dropdown-item" href="index.html"><i class="ti-shift-right"></i>Logout</a></li>  
                                    </ul>
                                </li>                              
                                <li class="nav-item ps-post--btn"><a href="dashboard-insights.html" class="btn ps-btn">Post Ad</a></li>
                            </ul>
                        </div>
                    </div>          
                </div>
            </div>
        </nav>
    </header>
    <%
    	
    	Logger.getLogger("org.mongodb.driver").setLevel(Level.SEVERE);
		uri = new MongoClientURI("mongodb+srv://root:toor@cluster0.ozy3p.mongodb.net/auction?retryWrites=true&w=majority");
	
		mongoClient = new MongoClient(uri);  
		database = mongoClient.getDatabase("auction");
	
		MongoCollection<Document> xyz = database.getCollection("auction");
		FindIterable<Document> auctions = xyz.find();
		Iterator it = auctions.iterator();
		
		Integer id= Integer.parseInt(request.getParameter("id"));
		
		fields = new BasicDBObject("auction_id", id);
		try {
			Document auctiondata = xyz.find(fields).iterator().next();
    %>
    
    <!-- MAIN START -->
    <main class="ps-main2">
        <!-- VISIT START -->
        <div class="ps-visit">
            <div class="container">
                <div class="ps-visit_description">
                    <p><%=(String) auctiondata.get("Created_by")%></p>
                    <h4><%=(String) auctiondata.get("Name")%></h4>
                    
                </div>
                <%
	                String bal;	
	                if(((String) auctiondata.get("Current_bit")).equals(""))
	                {
	                	bal=(String) auctiondata.get("Min_Bit");
	                }
	                else
	                {
	                	bal=(String) auctiondata.get("Current_bit");
	                }	
               	%>
                <div class="ps-visit_btn">
                    <button class="btn ps-dollar ps-btn"><%=(String) bal%></button>
                    <form name="fname" method="get" action="">
                    	<div class="form-group" >
                    		<input name="id" value="<%=auctiondata.get("auction_id")%>" hidden/>
                    		<input type="number" class="form-control" id="value" name="value" placeholder="Enter Bid">
                    		<br>
                   		 	<input type="Submit" id="submit" name="submit" value="submit" onclick="return upload();" class="btn btn-success">
                   		 	<br><br>
                   		 	<div class="ps-visit_description" id="current_holder"></div>
                    	</div>
                    </form>
                </div>
            </div>
        </div>
        <!-- VISIT END -->
        <div class="ps-visit-maincontent ps-main-section">
            <div class="container">
                <div class="row">
                    <!-- MAIN CONTENT START -->
                    <div class="col-lg-8">
                        <!-- DESCRIPTION START -->
                        <div class="ps-visit-description">
                            <h5>Description</h5>
                            <p><%=(String) auctiondata.get("Description")%></p>
                        </div>
                        <!-- DESCRIPTION END -->
                    </div>
                    <div class="col-lg-4">
                    	<p id="timer"></p>
                    </div>
                    <!-- MAIN CONTENT END -->
            </div>
        </div>
    </main>
    <script>
    	 var ch = "<%=(String) auctiondata.get("Current_holder")%>";
    	 if("<%=(String) auctiondata.get("Created_by")%>" == "<%= Name %>"){
     		document.getElementById("current_holder").innerHTML = "You are auction creator";
  	        document.getElementById("submit").disabled=true;
  	        document.getElementById("submit").onclick=function(){return false;}
     	 }
    	 else if(ch == "<%= email %>"){
    		document.getElementById("current_holder").innerHTML = "Your are the last bidder for this auction";
	        document.getElementById("submit").disabled=true;
	        document.getElementById("submit").onclick=function(){return false;}
    	 }
    	 
	     var countDownDate = new Date("<%=(String)auctiondata.get("Date") %>").getTime();
	     var x = setInterval(function(){
		     var now = new Date().getTime();
		     var distance = countDownDate - now;
		
		     var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		     var seconds = Math.floor((distance % (1000 * 60)) / 1000);
		
		     document.getElementById("timer").innerHTML ="Auction Ends in "+days + " d " + hours + " h "
		     + minutes + " m " + seconds + " s ";
		     if (distance < 0) {
		        clearInterval(x);
		        document.getElementById("timer").innerHTML = "Auction Closed";
		        document.getElementById("submit").disabled=true;
		        document.getElementById("submit").onclick=function(){return false;}
		        <%
			        Document query = new Document();
			        query.append("auction_id",id);
			        
			        Document setData = new Document();
			        setData.append("Won", auctiondata.get("Current_holder"))
			        		.append("Max_Bit", auctiondata.get("Current_bit"));
			        
			        Document update = new Document();
			        update.append("$set", setData);
	
			        xyz.updateOne(query, update);
		        	out.println("Updated");
		        %>
		      }
	    }, 1000);
           function upload(){
               var s1=document.getElementById("value").value;

               if(s1>=<%=(Integer) Integer.parseInt(((String)auctiondata.get("Min_Bit")).replace(",","")) %>){
                   return true;
               }else{
					alert("Enter bit value greater then current bit");
					return false;
				}
           }
    </script>
    <%
		}catch (NoSuchElementException e) {
			out.println(e);
		}
    %>
        
    <script src="js/vendor/jquery.min.js"></script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/vendor/jquery-library.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/vendor/owl.carousel.min.js"></script>
    <script src="js/vendor/prettyPhoto.js"></script>
    <script src="js/vendor/chosen.jquery.js"></script>
    <script src="js/vendor/bootstrap-datepicker.min.js"></script>
    <script src="js/vendor/jquery-ui.min.js"></script>
    <script src="js/vendor/jquery.ui.touch-punch.js"></script>
    <script src="js/main.js"></script>
</body>
</html>