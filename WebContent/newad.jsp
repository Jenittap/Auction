
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from amentotech.com/htmls/psello/dashboard-post-ad.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Feb 2020 13:24:59 GMT -->
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
                    <a href="index.html" class="navbar-brand"><img src="images/logo.png" alt="Image Description"></a>
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
                    <div class="col-lg-8 ps-dashboard-user">
                        <div class="ps-posted-ads ps-profile-setting">
                        	<form class="ps-profile-form" method="POST" action="postad">
	                            <div class="ps-posted-ads__heading">
	                                <h5>Post New Ad</h5>
	                                <p>Click “Publish Ad” to Post Ad</p>
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
