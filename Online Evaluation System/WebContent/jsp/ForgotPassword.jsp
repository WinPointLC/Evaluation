<!DOCTYPE html>
<html lang="en-in">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Forget Password form</title>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/ForgotPassword.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<div class="container">
	  <div class="col-sm-6 col-md-4 col-lg-4 form-content ml-auto mr-auto">
	  	<!--  <form class="form-outer" me	thod="post" action="/OnlineEvaluationSystem/CommonController"> -->
	  	<form class="form-outer" >
				<h3 class="form-login-heading text-center">Forgot Password Form</h3>
				<div class="form-group" id="email-content">
					<label for="email">Email Id</label>
					<input class="form-control" id="email" type="email" placeholder="Type your Email ID" name="email" required>
				</div><br>
				<div class="form-group" id="submit-content">
					<input type="button"  class="submit-btn" value="Submit" name="Submit" onclick="validateEmailId()">
				</div>
				<div class="form-group" id="secQuestion-content">
					<label for="secQuestion">Security Question</label>
					<input class="form-control" id="secQuestion" type="text" placeholder="" name="secQuestion" required>
				</div>
				<div class="form-group" id="secAns-content">
					<label for="secAns">Security Answer</label>
					<input class="form-control" id="secAns" type="text" placeholder="" name="secAns" required>
				</div>
				<div class="form-group" id="checkans-content">
					<input type="button"  class="submit-btn" value="Check Answer" name="Submit" onclick="CheckSecAns()">
				</div>
				<div class="form-group" id="changepass-content">
					<label for="changepass">Change Password</label>
					<input class="form-control" id="changepass" type="password" placeholder="Type your new password here" name="changepass" required>
				</div>
				<div class="form-group" id="savepass-content">
					<input type="button"  class="submit-btn" value="Save Password" name="Submit" onclick="savepass()">
				</div>
				<div class="success-content" id="success-content">
					<h5>Successfully changed password</h5>
				</div>
				<div class="login-link">
					<a href="LoginForm.jsp">Back to Login</a>
				</div>
	  	</form>
	  </div>
	</div>
<script type="text/javascript">
//code to write the show and hide code
document.getElementById('secQuestion-content').style.display="none";
document.getElementById('secAns-content').style.display="none";
document.getElementById('changepass-content').style.display="none";
document.getElementById('checkans-content').style.display="none";
document.getElementById('savepass-content').style.display="none";
document.getElementById('success-content').style.display="none";
function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
        vars[key] = value;
    });
    alert(vars);
    return vars;
}

var urlparameter = 0;
var studentJSON;
if(window.location.href.indexOf("dispSecQues") > -1){
    urlparameter = getUrlVars()["dispSecQues"];
}
if(urlparameter == "1"){
	document.getElementById('secQuestion-content').style.display="block";
	document.getElementById('secAns-content').style.display="block";
	document.getElementById('submit-content').style.display="none";
	document.getElementById('checkans-content').style.display="block";
	document.getElementById('email-content').style.display="none";
	var secQuest = document.getElementById('secQuestion');
	if(window.location.href.indexOf("varid") > -1){
	    var urlVarid = getUrlVars()["varid"];
		studentJSON = JSON.parse(decodeURIComponent(urlVarid));
		secQuest.value = studentJSON.securityQuestion;
	}
	else{}
	var secAnswer = document.getElementById('secAns');
	secAnswer.value = null;

}
function validateEmailId() {
	var emailVal = document.getElementById('email').value;
	//alert(emailVal);
	var reg = /\w+@[a-z]+.['com'|'co.in'|'co']/
	if(reg.test(emailVal)==true){
        var myData = {
                email: emailVal
    	};
    //alert("*** " + JSON.stringify(myData));
    //console.log(myData);
     $.ajax({
         type: 'POST',
         url: '/OnlineEvaluationSystem/CommonController?action=ForgotPasswordServlet',
         data: JSON.stringify(myData),
         dataType: 'json',
         contentType: 'application/json; charset=utf-8',
         traditional: true,
         success: function (jsonObj) {
         	//alert("Success from LoginForm");
             var responseJson1=jsonObj[0], responseJson2=jsonObj[1];
             var locationJson = eval('(' + responseJson1 + ')');
             //alert(locationJson.success);
             //var strJson = eval('(' + responseJson2 + ')');

            if (locationJson.success) {
         		var studentJson = JSON.stringify(responseJson2);
         		/*alert(studentJson);
         		alert("studentEmail : " + responseJson2.email);
         		alert("studentEmail : " + responseJson2.securityQuestion);
         		alert("studentEmail : " + responseJson2.securityAnswer);
             	*/window.location.href = locationJson.location + "?varid=" + encodeURIComponent(studentJson) +"&dispSecQues=" + "1";
         	} else {
                 $('#ajaxGetUserServletResponse').text(responseText);
        	}
         }
	});
     }
	else{
		alert("Enter a valid email ID");
	}
}
function CheckSecAns(){
	var secAnswer = document.getElementById('secAns').value;
	var correctAns = studentJSON.securityAnswer;
	if (secAnswer==correctAns) {
		document.getElementById('secQuestion-content').style.display="none";
		document.getElementById('secAns-content').style.display="none";
		document.getElementById('changepass-content').style.display="block";
		document.getElementById('savepass-content').style.display="block";
		document.getElementById('checkans-content').style.display="none";
	}
	else{
		alert("Invalid Answer");
	}
};
function savepass() {
	var newPassword = document.getElementById('changepass').value;
	var userId = studentJSON.userId;
	var myData = {
		userId: userId,
		password: newPassword
	};
	$.ajax({
        type: 'POST',
        url: '/OnlineEvaluationSystem/CommonController?action=ChangePasswordServlet',
        data: JSON.stringify(myData),
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        traditional: true,
        success: function (jsonObj) {
        	document.getElementById('changepass-content').style.display="none";
        	document.getElementById('savepass-content').style.display="none";
        	document.getElementById('success-content').style.display="block";
        }
	});

}
</script>
</body>

</html>
