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
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
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
                                <li class="ps-menuhover menu-item-has-children page_item_has_children">
                                    <a href="dashboard">Dashboard</a>
                                </li>
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
                    <div class="col-lg-8 ps-dashboard-user">
                        <div class="ps-posted-ads ps-profile-setting">
                        	<form class="ps-profile-form" method="POST" action="postad">
	                            <div class="ps-posted-ads__heading">
	                                <h5>Post New Ad</h5>
	                                <p>Click to Post Ad</p>
	                                <button class="btn ps-btn" type="submit">Publish Ad</button>
	                            </div>
	                            <div class="ps-profile-setting__content">
	                                <!-- POST NEW AD FORM START -->
                                    <div class="ps-profile--row">
                                     	<div class="form-group ps-fullwidth">
                                            <input type="text" name="title" class="form-control" id="formGroupExampleInput" required placeholder="Your Ad Title Here*">
                                        </div>
                                    	<div class="form-group">
                                            <label>
                                                <select class="form-control" name="category">
                                                    <option value="" disabled selected hidden>Select Category(s)*</option>
                                                    <option value="Houses or Appartments" >Houses or Appartments</option>
                                                    <option value="Lands & Plots">Lands & Plots</option>
                                                    <option value="vehicles">Vehicles</option>
                                                    <option value="Mobiles & Accessories">Mobiles & Accessories</option>
                                                    <option value="Furniture">Furniture</option>
                                                    <option value="Antiques">Antiques</option>
                                                </select>
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="location" id="formGroupExampleInput5" placeholder="Location(State)*">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="price" class="form-control" id="formGroupExampleInput2" required placeholder="Item/ Product Price?*">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="Date" id="formGroupExampleInput5" placeholder="Date">
                                        </div>
                                        <div class="form-group ps-fullwidth">
                                            <textarea class="form-control" name="Description" placeholder="Description*"></textarea>
                                        </div>
                                    </div>
	                            </div>
                            </form>
                        </div>
                    </div>
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
    <script src="js/vendor/masonry.pkgd.min.js"></script>
    <script src="js/vendor/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
