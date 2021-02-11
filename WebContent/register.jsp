
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from amentotech.com/htmls/psello/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Feb 2020 13:24:45 GMT -->
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
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/responsive.css">
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
    <!-- HEADER END -->
    
    <!-- MAIN START -->
    <main class="ps-main">
        <div class="container">
            <div class="row ps-main-section">
                <div class="col-lg-11 col-xl-10">
                	<h4>Register User</h4>
                	<br><br>
                    <nav class="ps-login">
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                          <a class="nav-item nav-link active" id="nav-login-tab" data-toggle="tab" href="#nav-login" role="tab" aria-controls="nav-login" aria-selected="true">User</a>
                          <a class="nav-item nav-link" id="nav-register-tab" data-toggle="tab" href="#nav-register" role="tab" aria-controls="nav-register" aria-selected="false">Organisation</a>
                        </div>
                      </nav>
                      <div class="tab-content" id="nav-tabContent">
                        <!-- LOGIN START -->
                        <div class="tab-pane fade show active" id="nav-login" role="tabpanel" aria-labelledby="nav-login-tab">
                            <div class="ps-login__area">
                                <div class="ps-gridList__searchArea ps-contact-seller">
                                    <form action="register" method="post" onsubmit="return validateForm();">
                                    	<input hidden name="reg_type" value="org">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" placeholder="Username*">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Email*">
                                        </div>
                                        <div class="form-group">
                                            <input type="number" class="form-control" name="phone" placeholder="phonenumber">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="password" placeholder="Password*">
                                        </div>
                                        <div class="ps-login-btn">
                                            <button class="btn ps-btn" type="submit" name="submit" value="Submit">Sign up</button>
                                        </div>
                                    </form>
                                    <%
								    	String error = (String)request.getAttribute("error_message");
										if(error!=null)
											out.println("<div class=\"alert alert-danger\" id=\"error_message\" role=\"alert\">"+error+"</div>");
								    %>
                                </div>
                            </div>
                        </div>
                        <!-- LOGIN END -->
                        <!-- REGISTER START -->
                        <div class="tab-pane fade" id="nav-register" role="tabpanel" aria-labelledby="nav-register-tab">
                            <div class="ps-login__area">
                                <div class="ps-gridList__searchArea ps-contact-seller">
                                    <form action="register" method="post" onsubmit="return validateForm();">
                                    	<input hidden name="reg_type" value="org">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="name" placeholder="Username*">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Email*">
                                        </div>
                                        <div class="form-group">
                                            <input type="number" class="form-control" name="phone" placeholder="phonenumber">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="password" placeholder="Password*">
                                        </div>
                                        <div class="ps-login-btn">
                                            <button class="btn ps-btn" type="submit" name="submit" value="Submit">Sign up</button>
                                        </div>
                                    </form>
                                    <%
								    	error = (String)request.getAttribute("error_message");
										if(error!=null)
											out.println("<div class=\"alert alert-danger\" id=\"error_message\" role=\"alert\">"+error+"</div>");
								    %>
                                </div>
                            </div>    
                        </div>
                        <!-- REGISTER END -->
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- MAIN END -->

    <script src="js/vendor/jquery.min.js"></script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/vendor/jquery-library.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/vendor/jquery-ui.min.js"></script>
    <script src="js/vendor/jquery.ui.touch-punch.js"></script>
    <script src="js/main.js"></script>
    <script>
	function validateForm(){
		var name = (document.getElementsByName("name")[0].value != "") ? document.getElementsByName("name")[0].value : document.getElementsByName("name")[1].value,
			email = (document.getElementsByName("email")[0].value != "") ? document.getElementsByName("email")[0].value : document.getElementsByName("email")[1].value,
			phonenumber = (document.getElementsByName("phone")[0].value != "") ? document.getElementsByName("phone")[0].value : document.getElementsByName("phone")[1].value,
			password = (document.getElementsByName("password")[0].value != "") ? document.getElementsByName("password")[0].value : document.getElementsByName("password")[1].value;
		
		var flag=true;
		if(/^([a-zA-Z]{3,30}\s*)+$/.test(name)==false){
			alert("Enter a valid name");
			flag=false;
		}
		else if(/^([a-zA-Z0-9_.-]+)@([a-zA-Z]+)([\.])([a-zA-Z]+)$/.test(email)==false){
			alert("Enter a valid mail address");
			flag=false;
		}
		else if(/^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$/.test(phonenumber) == false){
			alert("Enter a valid phone number with country code");
			flag=false;
		}
		else if(/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*$/.test(password) == false){
			alert("Enter a valid password with Captical, small and special characters");
			flag=false;
		}
			
		return flag;
	}
    </script>
</body>
</html>