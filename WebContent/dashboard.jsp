<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from amentotech.com/htmls/psello/dashboard-insights.html by HTTrack Website Copier/3.x [XR&CO"2014], Wed, 05 Feb 2020 13:24:46 GMT -->
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
                    <a href="index.html" class="navbar-brand"><img src="images/logo.png" alt="Image Description"></a>
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
                                    <a href="javascript:void(0);"><span class="lnr lnr-menu"></span></a>
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
	                        			"<h6>Status</h6>"+
	                        			"<button class=\"btn ps-btn ps-featured\">Under Review</button>"+
	                        			"</div>"+
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