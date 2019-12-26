<!DOCTYPE html>
<html lang="en-in">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Login form</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/LoginForm.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
	$(function () {
		$('#log-btn').click(function() {
			var emailVal = $("#email").val();
			var passwordVal = $("#password").val();
			var myData = {
				email: emailVal,
				password: passwordVal
			};

			$.ajax({
				type: 'POST',
				url: '/OnlineEvaluationSystem/CommonController?action=LoginServlet',
				data: JSON.stringify(myData),
				dataType: 'json',
				contentType: 'application/json; charset=utf-8',
				traditional: true,
				success: function (jsonObj) {
					var responseJson1=jsonObj[0], responseJson2=jsonObj[1], responseJson3=jsonObj[2];
					var locationJson = eval('(' + responseJson1 + ')');
					if (locationJson.success) {
						var strResJSON = JSON.stringify(responseJson2);
						if(responseJson2.userCategoryId == 1){
							window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON);
						}
						else{
						   var streamJSON = JSON.stringify(responseJson3);
						   window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) + encodeURIComponent(streamJSON);
						}
					}
					else {
						$('#ajaxGetUserServletResponse').text(responseText);
					}
				},
				error: function(){
					document.getElementById("error").innerHTML = "Invalid email or password";
				}
			});
		});
	});
	</script>
</head>

<body>
	<div class="container">
		<div class="col-sm-4 col-md-4 col-lg-4 form-content ml-auto mr-auto">
			<form class="form-outer" >
				<h3 class="form-login-heading text-center">Login Form</h3>
				<div>
					<p id="error">  </p>
				</div>
				<div class="form-group">
					<label for="email">Email Id</label>
					<input class="form-control" id="email" type="text" placeholder="Type your Email ID" name="email" >
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input class="form-control" id="password" type="password" placeholder="Type your Password" name="password"  >
				</div>
				<div class="form-group">
					<input type="button" id="log-btn" class="login-btn" value="Login" name="login" >
				</div>
				<div class="forgot-password">
					<a href="ForgotPassword.jsp">Forgot Password</a>
				</div>
				<div class="form-group sign-up ml-auto">
					<a href="SignupForm.jsp" id="sign-up">New User SignUP.</a>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
	window.onload = function() {
		document.getElementById("password").addEventListener("keyup", function(event) {
			event.preventDefault();
			if (event.keyCode === 13) {
				document.getElementById("log-btn").click();
			}
		});
	}
	</script>
</body>
</html>
