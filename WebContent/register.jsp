
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
    <!-- HEADER START -->
    <header class="ps-main-header3">
        <nav>
            <div class="navbar navbar-expand-lg navbar-light ps-navbar">
                <div class="ps-navbar__header">
                    <a href="index.html" class="navbar-brand"><img src="images/logo.png" alt="Image Description"></a>
                    
                    <div class="ps-navbar__userbtn">
                        <div class="ps-headeruser">              
                            <ul class="navbar-nav ps-nav">
                                <li class="nav-item ps-login--btn"><a href="login" class="btn ps-btn">Login</a></li>
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