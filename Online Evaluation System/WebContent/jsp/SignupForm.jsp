<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/Signup-form.css">
  <link rel="stylesheet" href="style1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>

<body>
  <div class="container-fluid">
    <div class="col-sm-4 col-md-4 col-lg-4 text-left ml-auto mr-auto" id="form-outter">
      <form action="/OnlineEvaluationSystem/CommonController" method="post">
        <h3 class="form-signup-heading text-center">SignUP Form</h3>
        <div class="form-group">
          <input class="form-control" type="text" id="firstName" placeholder="Enter first name" required>
        </div>
        <div class="form-group">
          <input class="form-control" type="text" id="lastName" placeholder="Enter last name" required>
        </div>

        <div class="form-group">
          <input class="form-control" type="email" id="email" placeholder="Enter email" required>
        </div>

        <div class="form-group">
          <input class="form-control form-control-sm" type="text" id="userName" placeholder="Enter user name" required>
        </div>

        <div class="form-group">
          <input class="form-control" type="password" id="password" placeholder="Password" required>
        </div>
        <div class="form-group">
          <select class="form-control" id="gender" required>
            <option value="">Gender</option>
            <option>Male</option>
            <option>Female</option>
          </select>
        </div>
        <br>
        <a href="ClientDashboard.jsp" onclick="submitSignUpDetails()"><button class="Signbtn" type="submit">Submit</button></a>
      </form>
    </div>
  </div>
  <script>
     function submitSignUpDetails(){
    	 //alert("Submit Sign Up Details");
    	 var firsttname = $('#firstName').val();
    	 var lasttname = $('#lastName').val();
    	 var email = $('#email').val();
    	 var password = $('#password').val();
    	 var gender = $('#gender').val();
    	 //alert(gender);
     }
  </script>
</body>

</html>
