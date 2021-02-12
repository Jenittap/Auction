
<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from amentotech.com/htmls/psello/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 05 Feb 2020 13:24:45 GMT -->
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
                    
                    <div class="ps-navbar__userbtn">
                        <div class="ps-headeruser">              
                            <ul class="navbar-nav ps-nav">
                                <li class="nav-item ps-login--btn"><a href="register" class="btn ps-btn">Register</a></li>
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
                      <div class="tab-content" id="nav-tabContent">
                        <!-- LOGIN START -->
                        <div class="tab-pane fade show active" id="nav-login" role="tabpanel" aria-labelledby="nav-login-tab">
                            <div class="ps-login__area">
                                <div class="ps-gridList__searchArea ps-contact-seller">
                                    <h6>Login Now</h6>
                                    <form method="post" action="login">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="email" placeholder="Username*">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="password" placeholder="Password*">
                                        </div>
                                        <div class="ps-login-btn">
                                            <button type="Submit" value="submit" class="btn ps-btn">Login</button>
                                        </div>
                                    </form>
                                    <%
								    	String error = (String)request.getAttribute("error_message");
										if(error!=null)
											out.println("<br><br><div class=\"alert alert-danger\" id=\"error_message\" role=\"alert\">"+error+"</div>");
								    %>
                                </div>
                            </div>
                        </div>
                        <!-- LOGIN END -->
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
</body>
</html>