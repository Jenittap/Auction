
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
                            <div class="ps-posted-ads__heading">
                                <h5>Post New Ad</h5>
                                <p>Click “Publish Ad” to Post Ad</p>
                                <button class="btn ps-btn">Publish Ad</button>
                            </div>
                            <div class="ps-profile-setting__content">
                                <!-- POST NEW AD FORM START -->
                                <form class="ps-profile-form">
                                    <div class="ps-profile--row">
                                        <div class="form-group">
                                            <label>
                                                <select class="form-control">
                                                    <option value="" disabled selected hidden>Featured Ad:</option>
                                                    <option value="" >Yes</option>
                                                    <option value="">No</option>
                                                </select>
                                            </label>
                                        </div>
                                        <div class="form-group">
                                            <label>
                                                <select class="form-control">
                                                    <option value="" disabled selected hidden>Select Category(s)*</option>
                                                    <option value="" >Yes</option>
                                                    <option value="">No</option>
                                                </select>
                                            </label>
                                        </div>
                                        <div class="form-group ps-fullwidth">
                                            <input type="text" class="form-control" id="formGroupExampleInput" required placeholder="Your Ad Title Here*">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="formGroupExampleInput2" required placeholder="Item/ Product Price?*">
                                        </div>
                                        <div class="form-group">
                                            <input type="number" class="form-control" id="formGroupExampleInput3" required placeholder="Mobile Number*">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="formGroupExampleInput4" placeholder="Email">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="formGroupExampleInput5" placeholder="Skype">
                                        </div>
                                        <div class="form-group ps-fullwidth">
                                            <textarea class="form-control" placeholder="Description*"></textarea>
                                        </div>
                                    </div>
                                </form>
                                <!-- POST NEW AD FORM END -->
                                <!-- ADD FEATURES START -->
                                <div class="ps-add-feature">
                                    <div class="ps-add-feature__heading">
                                        <h5>Add Features</h5> 
                                        <a data-toggle="collapse" href="#collapseFeature" role="button" aria-expanded="false" aria-controls="collapseFeature"><i class="ti-angle-down"></i></a>   
                                    </div>
                                    <div class="collapse show" id="collapseFeature">
                                        <ul class="ps-profile-setting__imgs ps-add-feature__content ps-item-mesonry row " >
                                            <li class="ps-feature-select col-md-6 ps-ms-item">
                                                <h5>Printable:</h5>
                                                <input id="feature1" type="radio" name="print">                                                                                       
                                                <label for="feature1">
                                                    <span> No</span>                          
                                                </label>
                                                <input id="feature2" type="radio" name="print">                                         
                                                <label for="feature2">
                                                    <span>Yes</span>
                                                </label>
                                            </li>
                                            <li class="ps-feature-select col-md-6 ps-ms-item">
                                                <h5>Paper Quality:</h5>
                                                <input id="feature3" type="radio" name="paper">
                                                <label for="feature3">
                                                    <span> Premium Quality</span>
                                                </label>
                                                <input id="feature4" type="radio" name="paper">
                                                <label for="feature4">
                                                    <span>Best Quality</span>
                                                </label>
                                                <input id="feature5" type="radio" name="paper">
                                                <label for="feature5">
                                                    <span>Regular Quality</span>
                                                </label>
                                            </li>
                                            <li class="ps-feature-select ps-paper-color col-md-6 ps-ms-item">
                                                <h5>Paper Color:</h5>
                                                <input id="feature6" type="radio" name="color">
                                                <label for="feature6">
                                                    <span class="ps-black">Black</span>
                                                </label>
                                                <input id="feature7" type="radio" name="color">
                                                <label for="feature7">
                                                    <span class="ps-off-white">Off White</span>
                                                </label>
                                                <input id="feature8" type="radio" name="color">
                                                <label for="feature8">
                                                    <span class="ps-yellow">Yellow</span>
                                                </label>
                                                <input id="feature9" type="radio" name="color">
                                                <label for="feature9">
                                                    <span class="ps-orange">Orange</span>
                                                </label>
                                                <input id="feature10" type="radio" name="color">
                                                <label for="feature10">
                                                    <span class="ps-blue">Blue</span>
                                                </label>
                                                <input id="feature11" type="radio" name="color">
                                                <label for="feature11">
                                                    <span class="ps-pink">Pink</span>
                                                </label>
                                                <input id="feature12" type="radio" name="color">
                                                <label for="feature12">
                                                    <span>Other</span>
                                                </label>
                                                <input type="text" class="form-control" placeholder="Add Color Name">
                                            </li>
                                            <li class="ps-feature-select col-md-6 ps-ms-item">
                                                <h5>Soft Copy:</h5>
                                                <input id="feature13" type="radio" name="softCopy">
                                                <label for="feature13">
                                                    <span>Availability On Demand</span>
                                                </label>
                                                <input id="feature14" type="radio" name="softCopy">
                                                <label for="feature14">
                                                    <span>Yes</span>
                                                </label>
                                                <input id="feature15" type="radio" name="softCopy">
                                                <label for="feature15">
                                                    <span>No</span>
                                                </label>
                                            </li>
                                            <li class="ps-feature-select col-md-6 ps-ms-item">
                                                <h5>Color/ B&W:</h5>
                                                <input id="feature16" type="radio" name="color">
                                                <label for="feature16">
                                                    <span>B&W Single Side</span>
                                                </label>
                                                <input id="feature17" type="radio" name="color">
                                                <label for="feature17">
                                                    <span>B&W Double Side</span>
                                                </label>
                                                <input id="feature18" type="radio" name="color">
                                                <label for="feature18">
                                                    <span>Color Single Side</span>
                                                </label>
                                                <input id="feature19" type="radio" name="color">
                                                <label for="feature19">
                                                    <span>Color Double Side</span>
                                                </label>
                                            </li>
                                            <li class="ps-feature-select col-md-6 ps-ms-item">
                                                <h5>Spring Bind:</h5>
                                                <input id="feature20" type="radio" name="bind">
                                                <label for="feature20">
                                                    <span>No</span>
                                                </label>
                                                <input id="feature21" type="radio" name="bind">
                                                <label for="feature21">
                                                    <span>Yes</span>
                                                </label>
                                            </li>
                                            <li class="ps-feature-select col-md-6 ps-ms-item">
                                                <h5>Door Step Delivery:</h5>
                                                <input id="feature22" type="radio" name="delivery">
                                                <label for="feature22">
                                                    <span>No</span>
                                                </label>
                                                <input id="feature23" type="radio" name="delivery">
                                                <label for="feature23">
                                                    <span>Yes</span>
                                                </label>
                                            </li>
                                            <li class="ps-feature-select col-md-6 ps-ms-item">
                                                <h5>Leminated:</h5>
                                                <input id="feature24" type="radio" name="leminate">
                                                <label for="feature24">
                                                    <span>No</span>
                                                </label>
                                                <input id="feature25" type="radio" name="leminate">
                                                <label for="feature25">
                                                    <span>Yes</span>
                                                </label>
                                            </li>
                                            <li class="ps-feature-select col-md-6 ps-ms-item">
                                                <h5>Color:</h5>
                                                <input id="feature26" type="checkbox" name="chooseColor">
                                                <label for="feature26">
                                                    <span>RGB</span>
                                                </label>
                                                <input id="feature27" type="checkbox" name="chooseColor">
                                                <label for="feature27">
                                                    <span>CMYK</span>
                                                </label>
                                                <input id="feature28" type="checkbox" name="chooseColor">
                                                <label for="feature28">
                                                    <span>B&W</span>
                                                </label>
                                                <input id="feature29" type="checkbox" name="chooseColor">
                                                <label for="feature29">
                                                    <span>Others</span>
                                                </label>
                                                <input type="text" class="form-control" placeholder="Mention Here">
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- ADD FEATURES END -->
                                <div class="ps-url">
                                    <div class="ps-url__input">
                                        <input type="text" class="form-control" placeholder="Ad Video Link(URL)">
                                        <button class="btn ps-blue ps-btn"><i class="ti-plus"></i></button>
                                    </div>
                                    <div class="ps-url__input">
                                        <input type="text" class="form-control" placeholder="Ad Video Link(URL)">
                                        <button class="btn ps-red ps-btn"><i class="ti-trash"></i></button>
                                    </div>
                                </div>
                                <!-- PROFILE SETTINGS START -->
                                <div class="ps-profile-setting__upload">
                                    <h5>Profile Settings</h5>
                                    <div class="ps-profile-setting__uploadarea">
                                        <button class="btn ps-btn">Select File</button>
                                        <p class="ps-drop">Drop files here to upload</p>
                                        <div></div>
                                        <p class="ps-loading">Uploading</p>
                                        <svg>
                                            <rect height="60px" width="100%" rx="6px"  stroke-width="2"  stroke-dasharray="12 12" />
                                        </svg>
                                    </div>
                                    <form class="ps-profile-setting__imgs ps-x-axis mCustomScrollbar">
                                        <label>
                                            <span>
                                                <img src="images/post-ad/img-01.jpg" alt="Image Description">
                                                <a href="javascript:void(0);" class="ps-trash"><span><i class="ti-trash"></i></span></a>
                                                <span class="ps-tick"><span><i class="fas fa-check"></i></span></span>
                                            </span>
                                        </label>
                                        <label>
                                            <span>
                                                <img src="images/post-ad/img-02.jpg" alt="Image Description">
                                                <a href="javascript:void(0);" class="ps-trash"><span><i class="ti-trash"></i></span></a> 
                                                <span class="ps-tick"><span><i class="fas fa-check"></i></span></span>  
                                            </span>
                                        </label>
                                        <label>
                                            <span>
                                                <img src="images/post-ad/img-03.jpg" alt="Image Description">
                                                <a href="javascript:void(0);" class="ps-trash"><span><i class="ti-trash"></i></span></a>  
                                                <span class="ps-tick"><span><i class="fas fa-check"></i></span></span> 
                                            </span>
                                        </label>
                                        <label>
                                            <span>
                                                <img src="images/post-ad/img-04.jpg" alt="Image Description">
                                                <a href="javascript:void(0);" class="ps-trash"><span><i class="ti-trash"></i></span></a> 
                                                <span class="ps-tick"><span><i class="fas fa-check"></i></span></span>  
                                            </span>
                                        </label>
                                        <label>
                                            <span>
                                                <img src="images/post-ad/img-05.jpg" alt="Image Description">
                                                <a href="javascript:void(0);" class="ps-trash"><span><i class="ti-trash"></i></span></a>   
                                                <span class="ps-tick"><span><i class="fas fa-check"></i></span></span>
                                            </span>
                                        </label>
                                        <label>
                                            <span>
                                                <img src="images/post-ad/img-05.jpg" alt="Image Description">
                                                <a href="javascript:void(0);" class="ps-trash"><span><i class="ti-trash"></i></span></a>   
                                                <span class="ps-tick"><span><i class="fas fa-check"></i></span></span>
                                            </span>
                                        </label>
                                    </form>
                                </div>
                                <!-- PROFILE SETTINGS END -->
                                <div class="ps-profile-setting__save">
                                    <button class="btn ps-btn">Save Changes</button>
                                    <p>Click “Save Changes” to update</p>
                                </div>
                            </div>
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
