<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css">
  <title>DashBoard</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <!--     Fonts and icons     -->

  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <link rel="stylesheet" href="../assets/css/fontawesome.min.css">
  <!-- Material Kit CSS -->
  <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
  <!-- own CSS -->
  <link rel="stylesheet" href="../css/Dashboard.css">
  <!-- <link href="../MaterialKitHomePage/assets/css/material-kit.css?v=2.0.5" rel="stylesheet" /> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

   <script>
   <c:import url="/ClientDashboardServlet" />
	     <c:set var="studentCourseDetails" value="${requestScope.studentCourseDetailsList}" />
  var data;
  var userProfile1;
  var strResJSON;
  $(document).ready(function(){
    //alert("Hello");
    var searchString = window.location.search.substring(1);
    //alert("SearchString = " + searchString);
    var arr = searchString.split('&');
    // alert("arra = " + arr);
    data= arr[0].split('=')[1];
    //alert("data = " + data);
    //var studentJson = eval('(' + data + ')');
    //alert("Student Id = " + studentJson.id);
    var userProfile = decodeURIComponent(data);

    //alert("Client is " + userProfile);
    //var student1 = new Gson().fromJson(student, Student);
    userProfile1 =  eval('(' + userProfile + ')');
    document.getElementById('welcome').textContent = userProfile1.firstName + " " + userProfile1.lastName;
    //alert("Client is " + userProfile1.userId + ":" + userProfile1.firstName + " " + userProfile1.lastName);
    //alert("Photo Location is " + userProfile1.photoLocation);
    //document.getElementById("photoId").src = userProfile1.photoLocation;
    //var recieved_json = $.parseJSON(student);
    // alert(received_json);
    //Set session variables
    var username = arr[1].split('=')[1];
    var password = arr[2].split('=')[1];
    //alert("username=" + username + "password = " + password);
    //document.getElementById('username').value = username;
    //document.getElementById('password').value = password;
    strResJSON = JSON.stringify(userProfile1);


      });

 /* var mydata = {
    		userId : userProfile1.userId
    	  };
    	$.ajax({
    	    type: 'POST',
    	    url: '/OnlineEvaluationSystem/CommonController?action=ClientDashboardServlet',
    	    data: JSON.stringify(mydata),
    	    dataType: 'json',
    	    contentType: 'application/json; charset=utf-8',
    	    traditional: true,
    	    success: function (jsonObj) {
    	      alert("Success from LoginForm");
    	      var responseJson1 = jsonObj[0];
    	      //var responseJson2 = jsonObj[1];

    	      /* Start- Code for ArrayList from servlet */
    	      /*var streamList = responseJson2[0];
    	      var courseTypeList = responseJson2[1];
    	      for(i=0; i<streamList.length; i++){
    	      alert("streamList = " + streamList[i].streamName);
    	    }
    	    for(i=0; i<courseTypeList.length; i++){
    	    alert("courseTypeList = " + courseTypeList[i].courseTypeName);
    	  } */
    	  /* End- Code for ArrayList from servlet */

  /*  	      var studentcourseDetailsList=jsonObj[1];
    	  alert(studentcourseDetailsList);
    	      for(i=0; i<studentcourseDetailsList.length; i++){
    		  	alert(studentcourseDetailsList[i].courseName)
    	      }
    	},
    	error: function(){
    	  alert("Error");
    	  //document.getElementById("error").innerHTML = "Invalid email or password";
    	}

    	});
*/
  function sendToUserProfile(){
    window.location.href = "/OnlineEvaluationSystem/jsp/User.jsp?varid="+ data;
    //encodeURIComponent(strResJSON);
  }
  function sendToUserAnalytics(){
	  //var studentCourseDetails = '<c:out value="${studentCourseDetails}"/>';
	  
	  alert('${studentCourseDetails}');
	   window.location.href = "/OnlineEvaluationSystem/jsp/Analytics.jsp?varid="+ encodeURIComponent('${studentCourseDetails}');
	    //encodeURIComponent(strResJSON);
	  }
  function sendToMainCoursePage(){
    $.ajax({
      type: 'POST',
      url: '/OnlineEvaluationSystem/CommonController?action=OnlineEvaluationServlet',
      data: JSON.stringify(userProfile1),
      dataType: 'json',
      contentType: 'application/json; charset=utf-8',
      traditional: true,
      success: function (jsonObj) {
        //alert("Success from LoginForm");
        var responseJson1 = jsonObj[0];
        var responseJson2 = jsonObj[1];

        /* Start- Code for ArrayList from servlet */
        /*var streamList = responseJson2[0];
        var courseTypeList = responseJson2[1];
        for(i=0; i<streamList.length; i++){
        alert("streamList = " + streamList[i].streamName);
      }
      for(i=0; i<courseTypeList.length; i++){
      alert("courseTypeList = " + courseTypeList[i].courseTypeName);
    } */
    /* End- Code for ArrayList from servlet */

    var streamJson=jsonObj[1];
    var courseTypeJson=jsonObj[2];
    var locationJson = eval('(' + responseJson1 + ')');
    if (locationJson.success) {
      var streamJSON = JSON.stringify(streamJson);
      //alert(streamJSON);
      var courseTypeJSON = JSON.stringify(courseTypeJson);
      //alert(courseTypeJSON);
      //alert("studentEmail : " + responseJson2.email);
      window.location.href = locationJson.location + "?varid=" + encodeURIComponent(streamJSON) + encodeURIComponent(courseTypeJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";
      //window.location.href = locationJson.location + "?varid=" + streamJSON + courseTypeJSON +"&username=" + "Anjali" +"&password=" + "Anjali";
      //window.location.href = locationJson.location + "?varid=" + encodeURIComponent(streamJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";


    } else {
      $('#ajaxGetUserServletResponse').text(responseText);
    }
  },
  error: function(){
    //alert("Error");
    document.getElementById("error").innerHTML = "Invalid email or password";
  }

});
//window.location.href = "/OnlineEvaluationSystem/jsp/MainCoursePage.jsp?varid="+ encodeURIComponent(strResJSON);
}
</script>
</head>

<body>
	<c:forEach var="studentCourseDetail" items= "${studentCourseDetails}" varStatus="i">
		<script>
			alert(studentCourseDetail);
		</script>
	</c:forEach>
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white">
      <!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
    -->
    <div class="logo">
      <a href="http://www.winpointlc.com" class="simple-text logo-normal">
        WinPoint
      </a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item active  ">
          <a class="nav-link" href="ClientDashboard.jsp">
            <i class="material-icons">dashboard</i>
            <p>Dashboard</p>
          </a>
        </li>
        <!-- <a class="nav-link" href="javascript:sendToUserProfile()" onclick="User_link();"> -->
        <!-- <li class="nav-item">
          <a class="nav-link" href="#" onclick="User_link();">
            <i class="material-icons">person</i>
            <p>User Profile</p>
          </a>
        </li> -->

        <li>
          <a class="nav-link" href="javascript:sendToMainCoursePage()">
            <i class="material-icons">computer</i>
            <p>Online Evaluation System</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="javascript:sendToUserAnalytics()">
            <i class="material-icons">assessment</i>
            <p>Analytics</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="#" onclick="Result_link();">
            <i class="material-icons">subject</i>
            <p>Result</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="#" onclick="Notif_link();">
            <i class="material-icons">notifications_none</i>
            <p>Notifications</p>
          </a>
        </li>
        <%-- <li>
          <a class="nav-link" href="#" onclick="Settings_link();">
            <i class="material-icons">settings</i>
            <p>Settings</p>
          </a>
        </li> --%>
        <!-- your sidebar here -->
      </ul>
    </div>
  </div>
  <div class="main-panel">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
      <div class="container-fluid">
        <div class="navbar-wrapper">
          <a class="navbar-brand" href="#pablo" id="navbar-brand">Dashboard</a>
          <img id="photoId" />
        </div>
        <p id="welcome" style="margin-left:60%; text-transform: uppercase;"></p>
        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
          <span class="sr-only">Toggle navigation</span>
          <span class="navbar-toggler-icon icon-bar"></span>
          <span class="navbar-toggler-icon icon-bar"></span>
          <span class="navbar-toggler-icon icon-bar"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end">
          <ul class="navbar-nav">
            <li class="nav-item dropdown">
              <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="material-icons">notifications</i>
                <span class="notification">5</span>
                <p class="d-lg-none d-md-block">
                  Some Actions
                </p>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                <a class="dropdown-item" href="#">Mike John responded to your email</a>
                <a class="dropdown-item" href="#">You have 5 new tasks</a>
                <a class="dropdown-item" href="#">You're now friend with Andrew</a>
                <a class="dropdown-item" href="#">Another Notification</a>
                <a class="dropdown-item" href="#">Another One</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="material-icons">person</i>
                <p class="d-lg-none d-md-block">
                  Account
                </p>
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                <a class="dropdown-item" href="#" onclick="User_link();">Profile</a>
                <a class="dropdown-item" href="#" onclick="Settings_link();">Settings</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Log out</a>
              </div>
              <!-- your navbar here -->
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->


      <div class="content Tech-content" id="Tech-content">
        <div class="container-fluid">

          <div class="row row-main-header1">
            <div class="col-md-11">
              <div class="card card-plain">
                <div class="card card-header card-header-rose">
                  <h3 class="text-align mr-auto ml-auto">Technical Section</h3>
                </div>
              </div>
            </div>
          </div>

          <div class="inner-Tech-content" id="Tech-cards">
             <!--<div class="row tech-row-1">
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-icon">
                    <div class="card-heading">
                      <h6>C</h6>
                    </div>
                    <div class="card-icon" style="font-size:20px;" id="row1-card1">
                      <i class="fa fa-copyright" style="font-size:70px;"></i>
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>

              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-danger card-header-icon">
                    <div class="card-heading">
                      <h6>Java</h6>
                    </div>
                    <div class="card-icon">
                      <img src="../assets/img/Dashboard-main-page-images/java-brands.svg" alt="java" style=" height: 60px; width: 60px; ">
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">

                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>

            </div>

            <div class="row tech-row-2">
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-icon" >
                    <div class="card-heading">
                      <h6>Data Structures</h6>
                    </div>
                    <div class="card-icon" style="font-size:20px;" id="card3">
                      <img src="../assets/img/Dashboard-main-page-images/cubes.svg" alt="java" style=" height: 60px; width: 60px; ">
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-icon">
                    <div class="card-heading">
                      <h6>CPP</h6>
                    </div>
                    <div class="card-icon" style="font-size:20px; background-color:rgb(20, 122, 159);">
                      <img src="../assets/img/Dashboard-main-page-images/cpp-icon-file-format.svg" alt="java" style=" height: 60px; width: 60px; ">
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">

                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class=" row tech-row-3">
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-warning card-header-icon">
                    <div class="card-heading">
                      <h6>Database</h6>
                    </div>
                    <div class="card-icon" style="font-size:20px;">
                      <i class="fa fa-database" style="font-size:70px;"></i>
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">

                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-primary  card-header-icon">
                    <div class="card-heading">
                      <h6>JS</h6>
                    </div>
                    <div class="card-icon">
                      <img src="../assets/img/Dashboard-main-page-images/js-brands.svg" alt="java" style=" height: 60px; width: 60px; ">
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">

                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>

            </div> -->
            <!-- End Inner Tech Content -->
          </div>

        </div>
      </div>
      <div class="content GA-content" id="GA-content">
        <div class="container-fluid">
          <div class="row row-main-header2">
            <div class="col-md-11">
              <div class="card card-plain">
                <div class="card card-header card-header-danger">
                  <h3 class="text-align mr-auto ml-auto">General Aptitude Section</h3>
                </div>
              </div>
            </div>
          </div>

          <div class="inner-GA-content">
            <div class="row GA-row-1">
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-icon">
                    <div class="card-heading">
                      <h6>QA</h6>
                    </div>
                    <div class="card-icon" style="font-size:20px; background-color:rgb(128, 4, 86);">
                      <i class="material-icons">exposure</i>

                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50

                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">

                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-icon">
                    <div class="card-heading">
                      <h6>LR</h6>
                    </div>
                    <div class="card-icon" style="font-size:20px; background-color:rgb(225, 228, 27);">
                      <i class="material-icons">extension</i>
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">

                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row GA-row-2">
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-icon" >
                    <div class="card-heading">
                      <h6>Verbal Ability</h6>
                    </div>
                    <div class="card-icon" style="font-size:20px; background-color:rgb(251, 26, 30);" id="card3">
                      <i class="material-icons">spellcheck</i>
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>

              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="card card-stats">
                  <div class="card-header card-header-icon">
                    <div class="card-heading">
                      <h6>Verbal Reasoning</h6>
                    </div>
                    <div class="card-icon" style="font-size:20px;background-color:rgb(22, 156, 185);" id="card4">
                      <i class="material-icons">find_in_page</i>
                    </div>
                    <p class="card-category">Marks obtained</p>
                    <h3 class="card-title">49/50
                    </h3>
                  </div>
                  <div class="card-footer">
                    <div class="stats">
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          See More Marks
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">MCQ</a>
                          <a class="dropdown-item" href="#">Coding</a>
                          <a class="dropdown-item" href="#">Descriptive</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Chart Ends here -->

        </div>
      </div>
      <!-- Adding Iframes here  -->

      <iframe src="Notifications.jsp" width="1100" height="1000" id="Notif-frame"></iframe>
      <iframe src="Settings.jsp" width="1100" height="1000" id="Settings-frame"></iframe>
      <iframe src="StudentResult.jsp" width="1100" height="1000" id="Result-frame"></iframe>
      <iframe width="1100" height="1000" id="User-frame"></iframe>
      <!-- <iframe src="Analytics.jsp" width="1050" height="1000" id="Analytics-frame"></iframe> -->
      <script type="text/javascript">
        // var source = "User.jsp?varid="+ data;
        // string Url = "User.jsp?varid=data";
        // User-frame.Attributes["src"] = Server.HtmlDecode(Url);

        //New Method
        function loaddata() {
        document.getElementById('User-frame').src='User.jsp?varid='+ data;
        }

      </script>
      <!-- End of Iframes -->
      <!-- Footer -->
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.winpointlc.com">
                  WinPoint
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
            &copy;
            <script>
            document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="https://www.winpointlc.com" target="_blank">WinPoint Team</a> for a better education.
          </div>
          <!-- your footer here -->
        </div>
      </footer>
    </div>
  </div>
<script type="text/javascript">
  //code to hide and show the iframes
  document.getElementById('Tech-content').style.display="block";
  document.getElementById('GA-content').style.display="block";

  document.getElementById('Notif-frame').style.display="none";
  document.getElementById('Settings-frame').style.display="none";
  document.getElementById('Result-frame').style.display="none";
  document.getElementById('User-frame').style.display="none";

  function Result_link() {
    document.getElementById('Tech-content').style.display="none";
    document.getElementById('GA-content').style.display="none";
    document.getElementById('Notif-frame').style.display="none";
    document.getElementById('Settings-frame').style.display="none";
    document.getElementById('User-frame').style.display="none";
    // document.getElementById('Analytics-frame').style.display="none";
    document.getElementById('Result-frame').style.display="block";
  }
  function Settings_link() {
    document.getElementById('Tech-content').style.display="none";
    document.getElementById('GA-content').style.display="none";
    document.getElementById('Notif-frame').style.display="none";
    document.getElementById('Result-frame').style.display="none";
    document.getElementById('User-frame').style.display="none";
    // document.getElementById('Analytics-frame').style.display="none";
    document.getElementById('Settings-frame').style.display="block";
  }
  function Notif_link() {
    document.getElementById('Tech-content').style.display="none";
    document.getElementById('GA-content').style.display="none";
    document.getElementById('Result-frame').style.display="none";
    document.getElementById('Settings-frame').style.display="none";
    document.getElementById('User-frame').style.display="none";
    // document.getElementById('Analytics-frame').style.display="none";
    document.getElementById('Notif-frame').style.display="block";
  }
  function User_link() {
    loaddata();
    document.getElementById('Tech-content').style.display="none";
    document.getElementById('GA-content').style.display="none";
    document.getElementById('Result-frame').style.display="none";
    document.getElementById('Settings-frame').style.display="none";
    document.getElementById('User-frame').style.display="block";
    // document.getElementById('Analytics-frame').style.display="none";

    //sendToUserProfile();
  }
  function Analytics_link() {
    document.getElementById('Tech-content').style.display="none";
    document.getElementById('GA-content').style.display="none";
    document.getElementById('Result-frame').style.display="none";
    document.getElementById('Settings-frame').style.display="none";
    document.getElementById('User-frame').style.display="none";
    // document.getElementById('Analytics-frame').style.display="block";
  }
</script>

  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="../assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="../assets/js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="../assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="../assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="../assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="../assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="../assets/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="../assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="../assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="../assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="../assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="../assets/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>

console.log("Creating Dynamic Elements");
  //Dynamic Cards

var studentCourseDetailsList = eval('(' + '${studentCourseDetails}' + ')');
alert(studentCourseDetailsList.length);
for(var i=0; i<studentCourseDetailsList.length; i++){
	var row  =document.createElement('div');
	row.className="row tech-row";
	var col1 = document.createElement('div');
	  col1.className="col-lg-3 col-md-6 col-sm-6";
	  var card = document.createElement('div');
	  card.className="card card-stats";
	  var cardheader = document.createElement('div');
	  cardheader.className="card-header  card-header-icon";
	  var cardHeading = document.createElement('div');
	  cardHeading.className="card-heading";
	  var h6 = document.createElement('h6');
	  h6.textContent = studentCourseDetailsList[i].courseTypeName + " - " + studentCourseDetailsList[i].courseName;
	  cardHeading.appendChild(h6);
	  var cardIcon = document.createElement('div');
	  cardIcon.className="card-icon";
	  var img = document.createElement('img');

	      img.setAttribute('src',studentCourseDetailsList[i].logoLocation);
	      img.setAttribute('style', "width:60px;height:60px;");
	      cardIcon.appendChild(img);


	  var p = document.createElement('p');
	  p.className="card-category";
	  p.textContent = 'Marks Obtained';
	  var h3 = document.createElement('h3');
	  h3.className="card-title";
	  h3.textContent = studentCourseDetailsList[i].courseAggr;
	  // End Card Header
	  var cardfooter = document.createElement('div');
  cardfooter.className="card-footer";
  var stats =document.createElement('div');
  stats.className="stats";
  var dropdown = document.createElement('div');
  dropdown.className="dropdown";
  var button = document.createElement('button');
  button.className="btn btn-secondary dropdown-toggle";
  button.id="dropdownMenuButton";
  button.setAttribute('data-toggle',"dropdown");
  button.setAttribute('aria-haspopup', "true");
  button.setAttribute('aria-expanded', "false");
  button.textContent = 'See More Marks';

  var dropdownmenu = document.createElement('div');
  dropdownmenu.className="dropdown-menu";
  dropdownmenu.setAttribute('aria-labelledby',"dropdownMenuButton");
  var anchorsList = ['MCQ','Coding','Descriptive'];

  for (var k = 0; k < anchorsList.length; k++) {
    var anchor  = document.createElement('a');
    anchor.className="dropdown-item";
    anchor.textContent = anchorsList[k];
    dropdownmenu.appendChild(anchor);
    dropdown.appendChild(dropdownmenu);
    dropdown.appendChild(button);
  }
  cardheader.appendChild(cardIcon);
  cardheader.appendChild(p);
  cardheader.appendChild(h3);
  cardheader.appendChild(cardHeading);
  card.appendChild(cardheader);

  stats.appendChild(dropdown);
  cardfooter.appendChild(stats);
  card.appendChild(cardfooter);

  col1.appendChild(card);
  // console.log("Inner For Loop");
  row.appendChild(col1);


  document.getElementById('Tech-cards').appendChild(row);
}
/*var TechArr = ['Java','Data Structures','CPP','JS'];
var TechArr2 = ['Java','Data Structures','CPP','JS'];
var Mixarr=['../assets/img/Dashboard-main-page-images/java-brands.svg','../assets/img/Dashboard-main-page-images/cubes.svg','../assets/img/Dashboard-main-page-images/cpp-icon-file-format.svg','../assets/img/Dashboard-main-page-images/js-brands.svg'];
*/
/*for (var i = 0; i < TechArr2.length/2; i++) {
  // for (var j=0;j<Mixarr.length;j++) {
  var row  =document.createElement('div');
  row.className="row tech-row";
for (var x = 0; x < TechArr.length; x++) {
  var col1 = document.createElement('div');
  col1.className="col-lg-3 col-md-6 col-sm-6";
  var card = document.createElement('div');
  card.className="card card-stats";
  var cardheader = document.createElement('div');
  cardheader.className="card-header  card-header-icon";
  var cardHeading = document.createElement('div');
  cardHeading.className="card-heading";
  var h6 = document.createElement('h6');
    h6.textContent = TechArr[x];
    cardHeading.appendChild(h6);
  var cardIcon = document.createElement('div');
  cardIcon.className="card-icon";
  var img = document.createElement('img');

      img.setAttribute('src',Mixarr[x]);
      img.setAttribute('style', "width:60px;height:60px;");
      cardIcon.appendChild(img);


  var p = document.createElement('p');
  p.className="card-category";
  p.textContent = 'Marks Obtained';
  var h3 = document.createElement('h3');
  h3.className="card-title";
  h3.textContent = 'Score';
  // End Card Header
  var cardfooter = document.createElement('div');
  cardfooter.className="card-footer";
  var stats =document.createElement('div');
  stats.className="stats";
  var dropdown = document.createElement('div');
  dropdown.className="dropdown";
  var button = document.createElement('button');
  button.className="btn btn-secondary dropdown-toggle";
  button.id="dropdownMenuButton";
  button.setAttribute('data-toggle',"dropdown");
  button.setAttribute('aria-haspopup', "true");
  button.setAttribute('aria-expanded', "false");
  button.textContent = 'See More Marks';

  var dropdownmenu = document.createElement('div');
  dropdownmenu.className="dropdown-menu";
  dropdownmenu.setAttribute('aria-labelledby',"dropdownMenuButton");
  var Anchors = ['MCQ','Coding','Descriptive'];

  for (var k = 0; k < Anchors.length; k++) {
    var anchor  = document.createElement('a');
    anchor.className="dropdown-item";
    anchor.textContent = Anchors[k];
    dropdownmenu.appendChild(anchor);
    dropdown.appendChild(dropdownmenu);
    dropdown.appendChild(button);
  }
  // inner card header elements

  cardheader.appendChild(cardIcon);
  cardheader.appendChild(p);
  cardheader.appendChild(h3);
  cardheader.appendChild(cardHeading);
  card.appendChild(cardheader);

  stats.appendChild(dropdown);
  cardfooter.appendChild(stats);
  card.appendChild(cardfooter);

  col1.appendChild(card);
  // console.log("Inner For Loop");
  row.appendChild(col1);


  document.getElementById('Tech-cards').appendChild(row);
//  console.log("We are at te End of Loop");
  //}
// }

*/
  $(document).ready(function() {
    $().ready(function() {
      $sidebar = $('.sidebar');

      $sidebar_img_container = $sidebar.find('.sidebar-background');

      $full_page = $('.full-page');

      $sidebar_responsive = $('body > .navbar-collapse');

      window_width = $(window).width();

      fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

      if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
        if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
          $('.fixed-plugin .dropdown').addClass('open');
        }

      }

      $('.fixed-plugin a').click(function(event) {
        // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
        if ($(this).hasClass('switch-trigger')) {
          if (event.stopPropagation) {
            event.stopPropagation();
          } else if (window.event) {
            window.event.cancelBubble = true;
          }
        }
      });

      $('.fixed-plugin .active-color span').click(function() {
        $full_page_background = $('.full-page-background');

        $(this).siblings().removeClass('active');
        $(this).addClass('active');

        var new_color = $(this).data('color');

        if ($sidebar.length != 0) {
          $sidebar.attr('data-color', new_color);
        }

        if ($full_page.length != 0) {
          $full_page.attr('filter-color', new_color);
        }

        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.attr('data-color', new_color);
        }
      });

      $('.fixed-plugin .background-color .badge').click(function() {
        $(this).siblings().removeClass('active');
        $(this).addClass('active');

        var new_color = $(this).data('background-color');

        if ($sidebar.length != 0) {
          $sidebar.attr('data-background-color', new_color);
        }
      });

      $('.fixed-plugin .img-holder').click(function() {
        $full_page_background = $('.full-page-background');

        $(this).parent('li').siblings().removeClass('active');
        $(this).parent('li').addClass('active');


        var new_image = $(this).find("img").attr('src');

        if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
          $sidebar_img_container.fadeOut('fast', function() {
            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $sidebar_img_container.fadeIn('fast');
          });
        }

        if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
          var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

          $full_page_background.fadeOut('fast', function() {
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
            $full_page_background.fadeIn('fast');
          });
        }

        if ($('.switch-sidebar-image input:checked').length == 0) {
          var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
          var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

          $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
          $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
        }

        if ($sidebar_responsive.length != 0) {
          $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
        }
      });

      $('.switch-sidebar-image input').change(function() {
        $full_page_background = $('.full-page-background');

        $input = $(this);

        if ($input.is(':checked')) {
          if ($sidebar_img_container.length != 0) {
            $sidebar_img_container.fadeIn('fast');
            $sidebar.attr('data-image', '#');
          }

          if ($full_page_background.length != 0) {
            $full_page_background.fadeIn('fast');
            $full_page.attr('data-image', '#');
          }

          background_image = true;
        } else {
          if ($sidebar_img_container.length != 0) {
            $sidebar.removeAttr('data-image');
            $sidebar_img_container.fadeOut('fast');
          }

          if ($full_page_background.length != 0) {
            $full_page.removeAttr('data-image', '#');
            $full_page_background.fadeOut('fast');
          }

          background_image = false;
        }
      });

      $('.switch-sidebar-mini input').change(function() {
        $body = $('body');

        $input = $(this);

        if (md.misc.sidebar_mini_active == true) {
          $('body').removeClass('sidebar-mini');
          md.misc.sidebar_mini_active = false;

          $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

        } else {

          $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

          setTimeout(function() {
            $('body').addClass('sidebar-mini');

            md.misc.sidebar_mini_active = true;
          }, 300);
        }

        // we simulate the window Resize so the charts will get updated in realtime.
        var simulateWindowResize = setInterval(function() {
          window.dispatchEvent(new Event('resize'));
        }, 180);

        // we stop the simulation of Window Resize after the animations are completed
        setTimeout(function() {
          clearInterval(simulateWindowResize);
        }, 1000);

      });
    });
  });
  </script>
  <script>
  $(document).ready(function() {
    // Javascript method's body can be found in assets/js/demos.js
    md.initDashboardPageCharts();
  });

  </script>
</body>

</html>
