
<!DOCTYPE html>
<html>
<head>
	<title>Sign In</title>
	<link rel="stylesheet" type="text/css" href="config/signIn.css">
</head>
<body>
	<div class="container-login">
		<div class="wrap-login">
			<form class="login-form" method="post" action="cek_login.php">
				<span class="login100-form-title">Sign In</span>
				<div class="wrap-input100">
					<span class="label-input100">Username</span>
					<input class="input100" type="text" name="username" placeholder="Username">
					</div>
				<div class="wrap-input100">
					<span class="label-input100">Password</span>
					<input class="input100" type="password" name="password" placeholder="Password">
				</div>
				<input class="button" type="submit" name="save" value="Login">
			</form>
		<div class="wrap-signUp">
			<a href="signUp.php">Or Sign Up</a>
		</div>
	</div>
</div>
</body>
</html>