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
	     <c:set var="studentGACourseDetails" value="${requestScope.studentGACourseDetailsList}" />
  var data;
  var userProfile1;
  var strResJSON;
  $(document).ready(function(){
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
    //var username = arr[1].split('=')[1];
    //var password = arr[2].split('=')[1];
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
  function sendToCourseRegistrationPage(){
	$.ajax({
	      type: 'POST',
	      url: '/OnlineEvaluationSystem/CommonController?action=OnlineEvaluationServlet?isReg=1',
	      data: JSON.stringify(1),
	      dataType: 'json',
	      contentType: 'application/json; charset=utf-8',
	      traditional: true,
	      success: function (jsonObj) {
	        //alert("Success from LoginForm");
	        var responseJson1 = jsonObj[0];
	        var responseJson2 = jsonObj[1];

	        /* Start- Code for ArrayList from servlet */
	        var streamList = responseJson2[0];
	        var courseTypeList = responseJson2[1];
	       /* for(i=0; i<streamList.length; i++){
	           alert("streamList = " + streamList[i].streamName);
	        }*/
	        var streamJson=jsonObj[1];
	        var courseTypeJson=jsonObj[2];
	        var locationJson = eval('(' + responseJson1 + ')');
	        if (locationJson.success) {
	          var streamJSON = JSON.stringify(streamJson);
	          //alert(streamJSON);
	          var courseTypeJSON = JSON.stringify(courseTypeJson);
	          //alert(courseTypeJSON);
	          // alert("studentEmail : " + responseJson2.email);
            // alert(locationJson.location);

	          // window.location.href = locationJson.location + "?varid=" + encodeURIComponent(streamJSON) + encodeURIComponent(courseTypeJSON)+ encodeURIComponent('${studentCourseDetails}') + encodeURIComponent('${studentGACourseDetails}') +"&username=" + "Anjali" +"&password=" + "Anjali";

	          // window.location.href = locationJson.location + "?varid=" + streamJSON + courseTypeJSON +"&username=" + "Anjali" +"&password=" + "Anjali";
	          //window.location.href = locationJson.location + "?varid=" + encodeURIComponent(streamJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";
           var source2 = encodeURIComponent(streamJSON) + encodeURIComponent(courseTypeJSON)+ encodeURIComponent('${studentCourseDetails}') + encodeURIComponent('${studentGACourseDetails}');
         	 //alert("source2 = " + source2);
         	 var iframe_ele2 = document.getElementById("CourseRegistration-frame");
         	 iframe_ele2.src = iframe_ele2.src + source2;
	        } else {
	          $('#ajaxGetUserServletResponse').text(responseText);
	        }
	      },
	      error: function(){
	        //alert("Error");
	        document.getElementById("error").innerHTML = "Cannot load client dashboard";
	      }

	    });
	//window.location.href = "/OnlineEvaluationSystem/jsp/CourseRegistration.jsp?varid="+ data;
  }
  // function sendToUserProfile(){
	// //var userProfileJSON = JSON.stringify(userProfile);
	// window.location.href = "/OnlineEvaluationSystem/jsp/User.jsp?varid="+ encodeURIComponent(strResJSON);
  //   //encodeURIComponent(strResJSON);
  // }
  function sendToUserAnalytics(){
	  //var studentCourseDetails = '<c:out value="${studentCourseDetails}"/>';

	  //alert('${studentCourseDetails}');
	  //alert('${studentGACourseDetails}');
	   window.location.href = "/OnlineEvaluationSystem/jsp/Analytics.jsp?varid="+ encodeURIComponent('${studentCourseDetails}') + encodeURIComponent('${studentGACourseDetails}');
	    //encodeURIComponent(strResJSON);
  }
  function sendToMainCoursePage(){
    $.ajax({
      type: 'POST',
      url: '/OnlineEvaluationSystem/CommonController?action=OnlineEvaluationServlet?isReg=0',
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
      // window.location.href = locationJson.location + "?varid=" + encodeURIComponent(streamJSON) + encodeURIComponent(courseTypeJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";
      var source3 = encodeURIComponent(streamJSON) + encodeURIComponent(courseTypeJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";
      // alert("source3 = " + source3);
      var iframe_ele3 = document.getElementById("MainCoursePage-frame");
      iframe_ele3.src = iframe_ele3.src + source3;

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
function LogoutSession() {
    $.ajax({
      url: '/OnlineEvaluationSystem/CommonController?action=LogoutServlet',
      type: 'POST',
      dataType: 'json',
      contentType: 'application/json; charset=utf-8',
      traditional: true,
      success: function (jsonObj) {
        var responseJson1=jsonObj[0];
        var locationJson = eval('(' + responseJson1 + ')');
        window.location.href = locationJson.location;
      },
      error: function () {
        alert("You are in error function of LogoutAjax call ");
      }
    });

}
</script>
</head>

<body>
	<c:forEach var="studentCourseDetail" items= "${studentCourseDetails}" varStatus="i">
		<script>
			//alert(studentCourseDetail);
		</script>
	</c:forEach>

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
          <a class="nav-link" id="client-link">
            <i class="material-icons">dashboard</i>
            <p>User Dashboard</p>
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
          <%-- <a class="nav-link" href="javascript:sendToCourseRegistrationPage()"> --%>
            <a class="nav-link" href="#" onclick="CourseRegistration_link();">
            <i class="material-icons">computer</i>
            <p>Course Registration</p>
          </a>
        </li>
        <li>
          <%-- <a class="nav-link" href="javascript:sendToMainCoursePage()"> --%>
            <a class="nav-link" href="#" onclick="MainCourse_link();">
            <i class="material-icons">computer</i>
            <p>Online Evaluation System</p>
          </a>
        </li>
        <li>
          <%-- <a class="nav-link" href="javascript:sendToUserAnalytics()"> --%>
            <a class="nav-link" href="#" onclick="Analytics_link();">
            <i class="material-icons">assessment</i>
            <p>Analytics</p>
          </a>
        </li>
        <li>
          <%-- <a class="nav-link"  disabled="disabled" onclick="Result_link();"> --%>
              <a class="nav-link" >
            <i class="material-icons">subject</i>
            <p>Result</p>
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
                <!-- giving ajax call to Logout Link -->
                <a class="dropdown-item" onclick="LogoutSession();">Log out</a>
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

          <div class="inner-GA-content" id="GA-cards">
          <!--  end at 450 <div class="row GA-row-1">
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
          </div>   start at 322-->
<!-- End Inner Tech Content -->
          <!-- Chart Ends here -->

        </div>
      </div>
      </div>
      <!-- Adding Iframes here  -->
      <div class="iframes" id="iframediv">

      <%-- <iframe src="StudentResult.jsp" width="1100" height="1000" id="Result-frame"></iframe> --%>
      <%-- <iframe width="1100" height="1000" id="User-frame" src="/OnlineEvaluationSystem/jsp/User.jsp"></iframe> --%>


      <%-- <iframe src='/OnlineEvaluationSystem/jsp/MainCoursePage.jsp?varid='  width="1100" height="1000" id="MainCoursePage-frame" style="margin-top:10%;"></iframe>
      <script type="text/javascript">
      sendToMainCoursePage();
    </script> --%>
      <%-- <iframe src='/OnlineEvaluationSystem/jsp/CourseRegistration.jsp?varid='  width="1100" height="1000" id="CourseRegistration-frame" style="margin-top:10%;"></iframe>
      <script type="text/javascript">
        sendToCourseRegistrationPage();
     </script> --%>


      <%-- <iframe src='/OnlineEvaluationSystem/jsp/Analytics.jsp?varid=' width="1100" height="1000" id="Analytics-frame" style="margin-top:10%;"></iframe>
      <script type="text/javascript">
         var source = encodeURIComponent('${studentCourseDetails}') + encodeURIComponent('${studentGACourseDetails}');
      	 // alert("source = " + source);
      	 var iframe_ele = document.getElementById("Analytics-frame");
      	 iframe_ele.src = iframe_ele.src + source;
     </script> --%>

     <%-- <iframe src='/OnlineEvaluationSystem/jsp/User.jsp?varid=' width="1100" height="1000" id="User-frame" style="margin-top:10%;"></iframe>
     <script type="text/javascript">
        var source2 = encodeURIComponent(strResJSON);
       // alert("source = " + source);
       var iframe_ele2 = document.getElementById("User-frame");
       iframe_ele2.src = iframe_ele2.src + source2;
    </script> --%>
</div>
      <script type="text/javascript">
        // var source = "User.jsp?varid="+ data;
        // string Url = "User.jsp?varid=data";
        // User-frame.Attributes["src"] = Server.HtmlDecode(Url);

        //New Method
        // function loaddata() {
        // document.getElementById('User-frame').src='/OnlineEvaluationSystem/jsp/User.jsp?varid='+ data;
        // }

        // function loaddataAnalytics() {
        // document.getElementById('Analytics-frame').src='/OnlineEvaluationSystem/jsp/Analytics.jsp?varid='+ data;
        // }

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
            <a href="http://www.winpointlc.com" target="_blank">WinPoint Team</a> for a better education.
          </div>
          <!-- your footer here -->
        </div>
      </footer>

  </div>
  <script type="text/javascript">
  var frame;
  var Analyticsframe;
  var userframe;
  var resultframe;
  var courseframe;



  function Removeframes() {
    if (Analyticsframe!=null) {
      Analyticsframe.parentNode.removeChild(Analyticsframe);
      Analyticsframe=null;
    }
     if (userframe!=null) {
      userframe.parentNode.removeChild(userframe);
      userframe=null;
    }
       if (resultframe!=null) {
        resultframe.parentNode.removeChild(resultframe);
        resultframe=null;
      }
     if (courseframe!=null) {
      courseframe.parentNode.removeChild(courseframe);
      courseframe=null;
    }
     if (frame!=null) {
      frame.parentNode.removeChild(frame);
      frame=null;
    }
  }

    document.getElementById('client-link').onclick=function () {
      document.getElementById('Tech-content').style.display="block";
      document.getElementById('GA-content').style.display="block";

      if(resultframe!=null){
        document.getElementById('Result-frame').style.display="none";
      }
      else if(courseframe!=null){
        document.getElementById('CourseRegistration-frame').style.display="none";
      }
      else if(frame!=null){
        document.getElementById('MainCoursePage-frame').style.display="none";
      }
      else if(Analyticsframe!=null){
        document.getElementById('Analytics-frame').style.display="none";
      }
      else if(userframe!=null){
        document.getElementById('User-frame').style.display="none";
      }
      else{
      }

    };

    function Analytics_link() {
      Removeframes();

      Analyticsframe = document.createElement('iframe');
      Analyticsframe.setAttribute('src','/OnlineEvaluationSystem/jsp/Analytics.jsp?varid=');
      Analyticsframe.setAttribute('width', 1080);
      Analyticsframe.setAttribute('height', 1000);
      Analyticsframe.id = 'Analytics-frame';
      Analyticsframe.setAttribute('style',"margin-top:10%;");
      document.getElementById('iframediv').appendChild(Analyticsframe);

      var source = encodeURIComponent('${studentCourseDetails}') + encodeURIComponent('${studentGACourseDetails}');
      var iframe_ele = document.getElementById("Analytics-frame");
      iframe_ele.src = iframe_ele.src + source;
      ShowHideAnalytics();
    }
    function ShowHideAnalytics() {

      document.getElementById('Tech-content').style.display="none";
      document.getElementById('GA-content').style.display="none";
      document.getElementById('Analytics-frame').style.display="block";
      if(document.getElementById('Result-frame')!=null){
        document.getElementById('Result-frame').style.display="none";
      }
       if(document.getElementById('CourseRegistration-frame')!=null){
        document.getElementById('CourseRegistration-frame').style.display="none";
      }
       if(document.getElementById('MainCoursePage-frame')!=null){
        document.getElementById('MainCoursePage-frame').style.display="none";
      }
       if(document.getElementById('User-frame')!=null){
        document.getElementById('User-frame').style.display="none";
      }

    }


    function User_link() {
      Removeframes();
      userframe = document.createElement('iframe');
     userframe.setAttribute('src','/OnlineEvaluationSystem/jsp/User.jsp?varid=');
     userframe.setAttribute('width', 1100);
     userframe.setAttribute('height', 1000);
     userframe.id = 'User-frame';
     userframe.setAttribute('style',"margin-top:10%;");
     document.getElementById('iframediv').appendChild(userframe);

     var source2 = encodeURIComponent(strResJSON);
     var iframe_ele2 = document.getElementById("User-frame");
     iframe_ele2.src = iframe_ele2.src + source2;
     ShowHideUser();
    }
    function ShowHideUser() {
      document.getElementById('Tech-content').style.display="none";
      document.getElementById('GA-content').style.display="none";
      document.getElementById('User-frame').style.display="block";
      if(document.getElementById('Result-frame')!=null){
        document.getElementById('Result-frame').style.display="none";
      }
       if(document.getElementById('CourseRegistration-frame')!=null){
        document.getElementById('CourseRegistration-frame').style.display="none";
      }
       if(document.getElementById('MainCoursePage-frame')!=null){
        document.getElementById('MainCoursePage-frame').style.display="none";
      }
       if(document.getElementById('Analytics-frame')!=null){
        document.getElementById('Analytics-frame').style.display="none";
      }

    }


    function Result_link() {
      Removeframes();
      resultframe = document.createElement('iframe');
      resultframe.setAttribute('src','StudentResult.jsp');
      resultframe.setAttribute('width', 1100);
      resultframe.setAttribute('height', 1000);
      resultframe.id = 'Result-frame';
      // resultframe.setAttribute('style',"margin-top:10%;");
      document.getElementById('iframediv').appendChild(resultframe);
      ShowHideResult();

    }
    function ShowHideResult() {
      document.getElementById('Tech-content').style.display="none";
      document.getElementById('GA-content').style.display="none";
      document.getElementById('Result-frame').style.display="block";
      if(document.getElementById('Analytics-frame')!=null){
        document.getElementById('Analytics-frame').style.display="none";
      }
       if(document.getElementById('CourseRegistration-frame')!=null){
        document.getElementById('CourseRegistration-frame').style.display="none";
      }
       if(document.getElementById('MainCoursePage-frame')!=null){
        document.getElementById('MainCoursePage-frame').style.display="none";
      }
       if(document.getElementById('User-frame')!=null){
        document.getElementById('User-frame').style.display="none";
      }

    }


    function CourseRegistration_link() {
      Removeframes();
      courseframe = document.createElement('iframe');
      courseframe.setAttribute('src','/OnlineEvaluationSystem/jsp/CourseRegistration.jsp?varid=');
      courseframe.setAttribute('width', 1100);
      courseframe.setAttribute('height', 1000);
      courseframe.id = 'CourseRegistration-frame';
      courseframe.setAttribute('style',"margin-top:10%;");
      document.getElementById('iframediv').appendChild(courseframe);
      sendToCourseRegistrationPage();
      ShowHideCourse();
    }
    function ShowHideCourse() {
      document.getElementById('Tech-content').style.display="none";
      document.getElementById('GA-content').style.display="none";
      document.getElementById('CourseRegistration-frame').style.display="block";
      if(document.getElementById('Result-frame')!=null){
        document.getElementById('Result-frame').style.display="none";
      }
       if(document.getElementById('Analytics-frame')!=null){
        document.getElementById('Analytics-frame').style.display="none";
      }
       if(document.getElementById('MainCoursePage-frame')!=null){
        document.getElementById('MainCoursePage-frame').style.display="none";
      }
       if(document.getElementById('User-frame')!=null){
        document.getElementById('User-frame').style.display="none";
      }

    }

    function MainCourse_link() {
      Removeframes();
      frame  = document.createElement('iframe');
      frame.setAttribute('src','/OnlineEvaluationSystem/jsp/MainCoursePage.jsp?varid=');
      frame.setAttribute('width', 1100);
      frame.setAttribute('height', 1000);
      frame.id = 'MainCoursePage-frame';
      frame.setAttribute('style',"margin-top:10%;");
      document.getElementById('iframediv').appendChild(frame);
      sendToMainCoursePage();
      ShowHideMain();
      }

      function ShowHideMain() {
        document.getElementById('Tech-content').style.display="none";
        document.getElementById('GA-content').style.display="none";
        document.getElementById('MainCoursePage-frame').style.display="block";
        if(document.getElementById('Result-frame')!=null){
          document.getElementById('Result-frame').style.display="none";
        }
         if(document.getElementById('CourseRegistration-frame')!=null){
          document.getElementById('CourseRegistration-frame').style.display="none";
        }
         if(document.getElementById('Analytics-frame')!=null){
          document.getElementById('Analytics-frame').style.display="none";
        }
         if(document.getElementById('User-frame')!=null){
          document.getElementById('User-frame').style.display="none";
        }

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
//alert(studentCourseDetailsList.length);
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


var studentGACourseDetailsList = eval('(' + '${studentGACourseDetails}' + ')');
//alert(studentGACourseDetailsList.length);
for(var i=0; i<studentGACourseDetailsList.length; i++){
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
	  h6.textContent = studentGACourseDetailsList[i].courseTypeName + " - " + studentGACourseDetailsList[i].courseName;
	  cardHeading.appendChild(h6);
	  var cardIcon = document.createElement('div');
	  cardIcon.className="card-icon";
	  var img = document.createElement('img');

	      img.setAttribute('src',studentGACourseDetailsList[i].logoLocation);
	      img.setAttribute('style', "width:60px;height:60px;");
	      cardIcon.appendChild(img);


	  var p = document.createElement('p');
	  p.className="card-category";
	  p.textContent = 'Marks Obtained';
	  var h3 = document.createElement('h3');
	  h3.className="card-title";
	  h3.textContent = studentGACourseDetailsList[i].courseAggr;
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


  document.getElementById('GA-cards').appendChild(row);
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
