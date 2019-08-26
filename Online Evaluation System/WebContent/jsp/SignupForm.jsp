<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Sign Up Form</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/Signup-form.css">
  <link rel="stylesheet" href="style1.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script>
  <c:import url="/SignUpServlet" />

<c:set var="securityQuestions" value="${requestScope.securityQuestionsList}" />
	</script>
</head>

<body>
  <div class="container-fluid">
    <div class="col-sm-4 col-md-4 col-lg-4 text-left ml-auto mr-auto" id="form-outter">
      <form >
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
        <div class="form-group">
          <input class="form-control" type="text" id="mobileNumber" placeholder="Mobile Number" required>
        </div>
        <div class="form-group">
          <select class="form-control" id="securityQuestion" required>
          <option value="">Security Question</option>
          </select>
          
          </div>
          <script> var selectVar = document.getElementById('securityQuestion');</script>
          <c:forEach var="securityQuestion" items= "${securityQuestions}" varStatus="i">
          <script>
             var option = document.createElement('option');
             option.textContent = "${securityQuestion}";
             selectVar.appendChild(option);
             </script>
          </c:forEach>
        
        <%-- <div class="form-group">
        
            <!--  <div class="dropdown-menu" id = "secQuest" aria-labelledby="dropdownMenuButton"></div>-->
            <div id="drop11" class="dropdown drop1">
				<!-- <input type="button" class="btn btn-secondary dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" value="Security Question">
                      --> </div>
                      <script>
                      var drop1 = document.getElementsByClassName('drop1');
                      var btn = document.createElement('button');
                      btn.className='btn btn-secondary dropdown-toggle';
                      btn.id='dropdownMenuButton';
                      btn.setAttribute('data-toggle', "dropdown");
                      btn.setAttribute('aria-haspopup', "true");
                      btn.setAttribute('aria-expanded',"false");
                      btn.textContent="Security Question";
                      document.getElementById('drop11').appendChild(btn); 

                      var dropdownMenu = document.createElement('div');
                      dropdownMenu.className='dropdown-menu';
                      dropdownMenu.setAttribute('aria-labelledby',"dropdownMenuButton");
                      </script>

<c:forEach var="securityQuestion" items= "${securityQuestions}" varStatus="i">

<script>

  var dropanchor = document.createElement('a');
  dropanchor.className='dropdown-item';
  dropanchor.setAttribute('href',"#");
  //dropanchor.id=courseTypesList[i].courseTypeId;
  dropanchor.textContent="${securityQuestion}";
  //dropanchor.setAttribute('onclick',"displayStreamCourses(this.id)");
  dropdownMenu.appendChild(dropanchor);
</script>
</c:forEach>
<script>document.getElementById('drop11').appendChild(dropdownMenu);</script>

        </div>
      <!--    <div class="form-group">
          <input class="form-control" type="text" id="securityQuestion" placeholder="Security Question" required>
        </div>-->
        
 --%>        <div class="form-group">
          <input class="form-control" type="text" id="securityAnswer" placeholder="Security Answer" required>
        </div>
        <br>
        <a href="#" onclick="submitSignUpDetails()"><button class="Signbtn" type="button">Submit</button></a>
      </form>
    </div>
  </div>
  <script>
     function submitSignUpDetails(){
    	 //alert("Submit Sign Up Details");
    	 var firstName = $('#firstName').val();
    	 var lastName = $('#lastName').val();
    	 var email = $('#email').val();
    	 var password = $('#password').val();
    	 var gender = $('#gender').val();
    	 var mobileNumber = $('#mobileNumber').val();
    	 var securityQuestion = $('#securityQuestion').val();
    	 var securityAnswer =  $('#securityAnswer').val();
    	 var userCategoryId = 1;
    	 //alert(gender);
    	 var myData = {

    			 firstName: firstName,
    			 lastName: lastName,
    			 email: email,
                 password: password,
                 gender:gender,
                 mobileNumber: mobileNumber,
                 securityQuestion: securityQuestion,
                 securityAnswer: securityAnswer,
                 userCategoryId: userCategoryId
         };
     //alert("*** " + JSON.stringify(myData));
     //console.log(myData);
     $.ajax({
         type: 'POST',
         url: '/OnlineEvaluationSystem/CommonController?action=SignUpServlet',
         data: JSON.stringify(myData),
         dataType: 'json',
         contentType: 'application/json; charset=utf-8',
         traditional: true,
         success: function (jsonObj) {
         	//alert("Success from LoginForm");
             var responseJson1=jsonObj[0], responseJson2=jsonObj[1];
             var locationJson = eval('(' + responseJson1 + ')');
             //var studentJson = eval('(' + responseJson2 + ')');
            	if (locationJson.success) {
         		var strResJSON = JSON.stringify(responseJson2);
         		//alert("studentEmail : " + responseJson2.email);
             	window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";
         	} else {
                 $('#ajaxGetUserServletResponse').text(responseText);
         	}
         },
         error: function(){
         	alert("Error");
         	//document.getElementById("error").innerHTML = "Invalid email or password";
         }

     });
 }
  </script>
</body>

</html>
