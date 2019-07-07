<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <title>Login form</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="../css/Login-Form.css">
</head>
<body>
  <div class="container">
    <div class="col-sm-6 col-md-4 col-lg-4 text-align ml-auto mr-auto" id="form-outter">
      <form action="" method="post">
        <h3 class="form-login-heading text-center">Login Form</h3>
        <div class="form-group">
          <input type="text" name="email" class="form-control" placeholder="Type your Email ID">
        </div>
        <div class="form-group">
          <input type="password" name="Password" placeholder="Type your Password" class="form-control">
        </div>
        <div class="forget-pass">
          <a href="#">Forgot Password</a>
        </div><br>
        <div class="form-group">
          <input type="submit" class="loginBtn" name="Login" value="Login">
        </div><br>
        <div class="form-group">
          <a href="#" id="SignUP">Not a User?SignUP</a>
        </div>
      </div>
    </form>
  </div>
</body>
</html>
