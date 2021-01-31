<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/Loginform.css" >
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<div class="bg">
		<div class="content">
			<header>Login</header>
			<form method="post" action="login">
			
				<div class="label1">
					<label for="email"><b>Email Id</b></label> <br>
				</div>
				
			<div class="field1">
				<span class="fa fa-envelope"></span>
				<input type="email" placeholder="Enter your email address" name="email" required>
			</div>
			
				<div class="label2">
					<label for="password"><b>Password</b></label> <br>
				</div>
				
			<div class="field2">
				<span class="fa fa-lock"></span>
				<input type="password" class="pass-key" id="password" placeholder="Enter your password" name="password" required>
				<i class="far fa-eye showpwd" onClick="showPwd('password', this)">   </i>
			</div>
			<%
		    	String error = (String)request.getAttribute("error_message");
				if(error!=null)
					out.println("<br><br><div class=\"alert alert-danger\" id=\"error_message\" role=\"alert\">"+error+"</div>");
		    %>

			<div class="field3">
				<a href="#">Forgot password?</a>	
			</div>
			
			<div class="field4">
				<input type="submit" value="LOGIN">
			</div>
			
			<div class="field5">
				Don't have an account? 
				<a href="register">Signup</a>
			</div>
			</form>
		</div>
	</div>
	
	<script>
	function showPwd(id, el) {
		  let x = document.getElementById(id);
		  if (x.type === "password") {
		    x.type = "text";
		    el.className = 'fa fa-eye-slash showpwd';
		  } else {
		    x.type = "password";
		    el.className = 'fa fa-eye showpwd';
		  }
		}
    </script>
    
</body>
</html>