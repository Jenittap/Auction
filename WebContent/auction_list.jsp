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
		out.println(e);
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
  <link rel="stylesheet" href="css/chosen.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="css/transitions.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/responsive.css">
  <script src="http://josecebe.github.io/twbs-pagination/js/jquery.twbsPagination.js"></script>
</head>
<body>
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
        <section class="container">
            <div class="row ps-gridList ps-uniqueGadgets ps-main-section">
                <!-- SIDEBAR START 
                <div class="col-md-5 col-lg-4 col-xl-3">
                    <div class="ps-gridList__searchArea">
                        <h6>Search Again</h6>
                        <form class="ps-form ps-main-form ps-side-mainForm">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter Keyword" aria-label="Enter Keyword" aria-describedby="button-addon1">
                                <div class="input-group-append">
                                    <button class="btn" type="button" id="button-addon1"><i class="ti-search"></i></button>
                                </div>
                            </div>
                            <div class="ps-geo-location ps-location input-group">
                                    <input type="text" class="form-control" placeholder="Location*">
                                    <a href="javascript:void(0);" class="ps-location-icon ps-index-icon"><i class="ti-target"></i></a>
                                    <a href="javascript:void(0);" class="ps-arrow-icon ps-index-icon"><i class="ti-angle-down"></i></a>
                                    <div class="ps-distance">
                                        <div class="ps-distance__description">
                                            <label for="amountfive">Distance:</label>
                                            <input type="text" id="amountfive" readonly="">
                                        </div>                                           
                                        <div id="slider-range-minTwo" class="ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"><div class="ui-slider-range ui-corner-all ui-widget-header ui-slider-range-min" style="width: 5.15021%;"></div><span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 5.15021%;"></span></div>
                                    </div>
                                </div>
                        </form>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__categories">
                        <h6>Categories</h6>
                        <div class="ps-gridList__checkbox">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check1">
                                <label class="form-check-label" for="check1">Show All <span>(256)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check2">
                                <label class="form-check-label" for="check2">Mobiles/Tablets <span>(53,165)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check3">
                                <label class="form-check-label" for="check3">Vehicles <span>(7562)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check4">
                                <label class="form-check-label" for="check4">Houses <span>(35)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check5">
                                <label class="form-check-label" for="check5">Land & Plots <span>(845)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check6">
                                <label class="form-check-label" for="check6">Entertainment <span>(4223)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check7">
                                <label class="form-check-label" for="check7">Animals & Pets <span>(5624)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check8">
                                <label class="form-check-label" for="check8">Kids Zone <span>(1245)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check9">
                                <label class="form-check-label" for="check9">Beauty & Fashion <span>(06)</span></label>
                            </div>
                        </div>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__priceRange">
                        <h6>Price Range</h6>
                            <input type="text" id="amount">
                        <div id="slider-range"></div>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__categories">
                        <h6>Condition</h6>
                        <div class="ps-gridList__checkbox">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check10">
                                <label class="form-check-label" for="check10">Show All <span>(256)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check11">
                                <label class="form-check-label" for="check11">Brand New <span>(53,165)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check12">
                                <label class="form-check-label" for="check12">Almost Like New <span>(7562)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check13">
                                <label class="form-check-label" for="check13">Gently Used <span>(35)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check14">
                                <label class="form-check-label" for="check14">Heavily Used <span>(845)</span></label>
                            </div>
                        </div>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__categories">
                        <h6>Ad Type</h6>
                        <div class="ps-gridList__checkbox">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check15">
                                <label class="form-check-label" for="check15">Show All <span>(256)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check16">
                                <label class="form-check-label" for="check16">Featured Ads <span>(53,165)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check17">
                                <label class="form-check-label" for="check17">Regular Ads <span>(7562)</span></label>
                            </div>
                        </div>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__priceRange ps-gridList__areaUnit">
                        <h6>Price Range</h6>
                        <form class="ps-form">
                            <div class="ps-select ps-sort">
                                <select class="chosen-select locations form-control" data-placeholder="Country" name="locations">
                                    <option value="Location">Area Unit</option>
                                    <option value="United State">United State</option>
                                    <option value="Canada">Canada</option>
                                    <option value="England">England</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="New Zealand">New Zealand</option>
                                </select>
                            </div>
                            <div class="ps-select ps-sort">
                                <select class="chosen-select locations form-control" data-placeholder="Country" name="locations">
                                    <option value="Location">No. of Rooms</option>
                                    <option value="United State">United State</option>
                                    <option value="Canada">Canada</option>
                                    <option value="England">England</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="New Zealand">New Zealand</option>
                                </select>
                            </div>
                            <div class="ps-select ps-sort">
                                <select class="chosen-select locations form-control" data-placeholder="Country" name="locations">
                                    <option value="Location">No. of Washrooms</option>
                                    <option value="United State">United State</option>
                                    <option value="Canada">Canada</option>
                                    <option value="England">England</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="New Zealand">New Zealand</option>
                                </select>
                            </div>
                        </form>
                            <input type="text" id="amount2">
                        <div id="slider-rangeTwo"></div>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__date">
                        <h6>By Year</h6>
                        <div class="input-group date" data-provide="datepicker">
                            <input type="text" class="form-control" placeholder="Starting Date">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-th"></span>
                            </div>
                        </div>
                        <div class="input-group date" data-provide="datepicker">
                            <input type="text" class="form-control" placeholder="Ending Date">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-th"></span>
                            </div>
                        </div>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__priceRange">
                        <h6>Mileage</h6>
                            <input type="text" id="amountThree">
                        <div id="slider-rangeThree"></div>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__priceRange ps-gridList__areaUnit">
                        <h6>Misc</h6>
                        <form class="ps-form">
                            <div class="ps-select ps-sort">
                                <select class="chosen-select locations form-control" data-placeholder="Country" name="locations">
                                    <option value="Location">Registered Location</option>
                                    <option value="United State">United State</option>
                                    <option value="Canada">Canada</option>
                                    <option value="England">England</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="New Zealand">New Zealand</option>
                                </select>
                            </div>
                            <div class="ps-select ps-sort">
                                <select class="chosen-select locations form-control" data-placeholder="Country" name="locations">
                                    <option value="Location">Fuel Type</option>
                                    <option value="United State">United State</option>
                                    <option value="Canada">Canada</option>
                                    <option value="England">England</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="New Zealand">New Zealand</option>
                                </select>
                            </div>
                        </form>
                        <div class="ps-gridList__checkbox">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check18">
                                <label class="form-check-label" for="check18">Show All <span>(256)</span></label>
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check19">
                                <label class="form-check-label" for="check19">Ads With Photos <span>(53,165)</span></label>
                            </div>
                        </div>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__filter">
                        <h6><span class="d-block">Click “Apply Filter” to</span>get your desired search result</h6>
                        <button class="btn ps-btn">Apply Filter</button>
                        <h6 class="ps-filter__h"><span><i class="ti-reload"></i></span>Reset Filter</h6>
                    </div>
                    <div class="ps-gridList__searchArea ps-gridList__ad">
                        <a href="javascript:void(0);"><figure><img src="images/ad-img.jpg" alt="Image Description"></figure></a>
                        <span>Advertisement  255px X 255px</span>
                    </div>
                </div>
                SIDEBAR END -->
                <!-- UNIQUE GADGETS LIST START -->
                <div class="col-md-12 col-lg-8 col-xl-9">
                    <!-- <div class="ps-uniqueGadgets">
                        <div class="ps-uniqueGadgets__heading">
                            <p>12,076 Record Found</p>
                            <h4>Results in “Unique Gadgets”</h4>
                        </div>
                        <div class="ps-uniqueGadgets__content">
                            <p>Showing 1 - 30 of 12,076 results</p>
                            <div class="d-flex flex-wrap">
                                <label class="ps-sort">
                                    <select class="form-control">
                                        <option selected="" hidden="">Sort By:</option>
                                        <option>All</option>
                                        <option>Half</option>
                                    </select>
                                </label>
                                <button class="btn ps-btn ps-outline-btn"><i class="ti-map"></i></button>
                                <button class="btn ps-btn ps-outline-btn"><i class="ti-view-list"></i></button>
                                <button class="btn ps-btn ps-active"><i class="ti-layout-grid2"></i></button>
                            </div>
                        </div>
                    </div> -->
                    <div class="ps-list__card ps-featured--cards">
                        <div id="auction_list">
                        	
                        </div>
                        
                        <!-- <div class="ps-page">
                            <div class="ps-button-left">
                                <button class="btn"><span class="lnr lnr-chevron-left"></span></button>
                            </div>
                            <div class="ps-button-num">
                                <button class="btn"><span>1</span></button>
                                <button class="btn ps-active"><span>2</span></button>
                                <button class="btn"><span>3</span></button>
                                <button class="btn"><span>4</span></button>
                                <button class="btn"><span>...</span></button>
                                <button class="btn"><span>50</span></button>
                            </div>
                            <div class="ps-button-right">
                                <button class="btn"><span class="lnr lnr-chevron-right"></span></button>
                            </div>
                        </div> -->
                    </div> 
                </div>
                <!-- UNIQUE GADGETS LIST END -->
            </div>
        </section>
    </main>
    <!-- MAIN END -->    
    <script src="js/vendor/jquery.min.js"></script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/vendor/jquery-library.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/vendor/jquery-ui.min.js"></script>
    <script src="js/vendor/chosen.jquery.js"></script>
    <script src="js/vendor/bootstrap-datepicker.min.js"></script>
    <script src="js/vendor/jquery.ui.touch-punch.js"></script>
    <script src="js/main.js"></script>
    <script>
      $.get("http://localhost:8080/auction-project/auctions",function(data,status){
        var obj = JSON.parse(data);
        var ele = document.getElementById("auction_list"); 
        ele.innerHTML="";
        var i;
        for(i=0;i<2;i++){
        	var dom ='<div class="container pagination-page" id="page'+(i+1)+'">';
        	for(var j=0;j<10;j++){
	        	if(obj[i*10+j]['Max_Bit'] == ""){
	        		obj[i*10+j]['Max_Bit'] = obj[i*10+j]['Min_Bit'];
	        	}
	          var new_dom = 
	          '<div class="card">'+
	          '<figure>'+
	          '<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC" alt="Image Description">'+
	          '</figure>'+
	          '<div class="card-body">'+
	          '<div class="ps-card__content">'+
	          '<div class="ps-card__date">'+
	          '<span class="d-block"><i class="ti-layers"></i> <a href="javascript:void(0);">'+obj[i*10+j]['Created_by']+'</a></span>'+
	          '<span><i class="ti-time"></i> <span>'+obj[i*10+j]['Date']+'</span></span>'+
	          '</div>'+
	          '<a href="single_listing.jsp?id='+obj[i*10+j]['auction_id']+'"><h6>'+obj[i*10+j]['Name']+'</h6></a>'+
	          '<p>Rs. '+obj[i*10+j]['Max_Bit']+'</p>'+
	          '<p class="card-text">'+obj[i*10+j]['Description']+'</p>'+
	          '</div>'+
	          '</div>';
	          ele.innerHTML+=new_dom;
	        }
        	//ele.innerHTML+=dom;
        }
        
        $('#pagination-pages').twbsPagination({
            totalPages: ((obj.length-(obj.length % 10))/10),
            visiblePages: 5,
            startPage: 1,
            initiateStartPageClick: true,
            href: false,
            first: 'First',
            prev: 'Previous',
            next: 'Next',
            last: 'Last',
            loop: false,
            hrefVariable: '{{number}}',
            onPageClick: function (event, page) {
              $('.pagination-page-active').removeClass('pagination-page-active');
              $('#page'+page).addClass('pagination-page-active');
            },
            paginationClass: 'pagination',
            nextClass: 'next',
            prevClass: 'prev',
            lastClass: 'last',
            firstClass: 'first',
            pageClass: 'page',
            activeClass: 'active',
            disabledClass: 'disabled'
        });
      });
    </script>
  </body>
</html>