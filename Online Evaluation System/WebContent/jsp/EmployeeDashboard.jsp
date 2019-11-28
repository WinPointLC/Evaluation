<!doctype html>
<html lang="en">

<head>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css">
  <title>Employee Dashboard</title>
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
  <link rel="stylesheet" href="../css/EmployeeDashboard.css">
</head>

<body>
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
          <a class="nav-link" href="EmployeeDashboard.jsp">
            <i class="material-icons">dashboard</i>
            <p> Employee Dashboard</p>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="add-funct-link">
            <i class="material-icons">person</i>
            <p>Functionality for Admin</p>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" id="all-user-link">
            <i class="material-icons">person</i>
            <p>All User's</p>
          </a>
        </li>
        <li>
          <a class="nav-link" id="add-question-link" onclick="showPage();">
            <i class="material-icons">computer</i>
            <p>Add Questions</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="#">
            <i class="material-icons">assessment</i>
            <p>Analytics of all users </p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="#">
            <i class="material-icons">subject</i>
            <p>Result of all users</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="#">
            <i class="material-icons">notifications_none</i>
            <p>Edit Notifications for users</p>
          </a>
        </li>
        <li>
          <a class="nav-link" href="#">
            <i class="material-icons">settings</i>
            <p>Settings</p>
          </a>
        </li>
        <!-- your sidebar here -->
      </ul>
    </div>
  </div>
  <div class="main-panel">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
      <div class="container-fluid">
        <div class="navbar-wrapper">
          <a class="navbar-brand" href="#pablo">Dashboard</a>
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
                <a class="dropdown-item" href="#">Profile</a>
                <a class="dropdown-item" href="#">Settings</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Log out</a>
              </div>
              <!-- your navbar here -->
            </ul>
          </div>
        </div>
      </nav><br><br>
      <!-- End Navbar -->
      <div class="content" id="main-content">
        <div class="container-fluid">
          <div class="row">

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
                    <!-- <i class="material-icons text-danger">details</i> -->

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
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-success card-header-icon">
                  <div class="card-heading">
                    <h6>CPP</h6>
                  </div>
                  <div class="card-icon" style="font-size:20px;">
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
          </div>

          <br><br><br><br>
          <!-- Second Row -->
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-icon">
                  <div class="card-heading">
                    <h6>OS</h6>
                  </div>
                  <div class="card-icon" style="font-size:20px;" id="card">
                    <i class="fa fa-windows" style="font-size:70px;"></i>
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
                    <h6>CN</h6>
                  </div>
                  <div class="card-icon" style="font-size:20px;" id="card4">
                    <img src="../assets/img/Dashboard-main-page-images/network.svg" alt="java" style=" height: 60px; width: 60px; ">
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
                    </div>y
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Chart Ends here -->
        </div>
      </div>

<!-- Adding content of Admin Page -->
<div class="container-fluid" id="admin-content">

  <div class="row">
    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
      <div class="card card-plain">
        <div class="card card-header card-header-primary main-head">
          <h3 class="text-align mr-auto ml-auto">Add Question</h3>
        </div>
      </div>
    </div>
  </div>

  <div class="card-body">
    <form>
      <div class="row">
        <div class="col-md-3">
          <div class="stats">
            <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonStream" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Select Stream
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="stream-dropdown">

              </div>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="stats">
            <div class="dropdown" id='drop11'>
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonCourseType" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Select Course Type
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="coursetype-dropdown">

              </div>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="stats">
            <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonCourse" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Select Course
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="course-dropdown">

              </div>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="stats">
            <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonEvaluationType" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Select Evaluation Type
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="Evaluation-dropdown">

              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-3">
          <div class="stats">
            <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonTopics" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Select Topics
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="topic-dropdown">

              </div>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <div class="form-group">
            <label class="bmd-label-floating">Enter Total Marks</label>
            <input type="number" class="form-control" id="totalMarks">
          </div>
        </div>
        <div class="col-md-3">
          <div class="stats">
            <div class="dropdown">
              <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButtonDiffLvl" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Select Difficulty level
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" id="diff-dropdown">

              </div>
            </div>
          </div>
        </div>

      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label>Add a Question</label>
            <div class="form-group">
              <label></label>
              <textarea class="form-control" rows="3" id="question"></textarea>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <h4>Add Options</h4>
        </div>
      </div>
      <div class="inner-option" id="inner-opt-content">

      </div>

      <div class="row">
        <div class="col-md-4">
          <h4>Correct Options</h4>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="form-group">
            <label class="bmd-label-floating">Enter the Correct Option Number</label>
            <input type="number" class="form-control" id="correctOptions">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4">
          <h4>Explanation for Answer</h4>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
            <label>Add Explanation</label>
            <div class="form-group">
              <label></label>
              <textarea name="name" class="form-control" rows="3" id="explanation"></textarea>
            </div>

          </div>
        </div>
      </div>
      <button type="submit" class="btn btn-primary pull-right" onclick="addQuestion()">Save</button>
      <div class="clearfix"></div>
    </form>
  </div>
</div>

<!-- All USer content -->
<div class="container-fluid" id="all-user-content">
  <div class="row">
    <div class="col-md-12">
      <div class="card card-plain">
        <div class="card-header card-header-primary">
          <h4 class="card-title mt-0">List of all user </h4>
        </div><br><br>
        <div class="dropdown-section">
          <select class="dropdown" onchange="dropfunct(this);">
            <option id="11">Modular</option>
            <option id="22">TBC</option>
            <option id="33">CRT</option>
          </select>
        </div><br><br>
        <div class="dropdown-section2">
          <select class="dropdown2" onchange="dropfunct(this);" id="dropdown2">

          </select>
        </div><br><br>

        <div class="card-body">
          <div class="table-responsive" id="table">
            <!-- <table class="table table-hover">
              <thead>
                <th>Sr.no:</th>
                <th>
                  Username
                </th>
                <th>
                  Email
                </th>
                <th>
                  Address
                </th>
                <th>
                  Mobile No:
                </th>
                <th>
                  Courses Done
                </th>
                <th>
                  Click here for Scores
                </th>
              </thead>
              <tbody>
                <tr>
                  <td>
                    1
                  </td>
                  <td>
                    Sahil Naphade
                  </td>
                  <td>
                    sahil@gmail.com
                  </td>
                  <td>
                    Katraj
                  </td>
                  <td>
                    9850896993
                  </td>
                  <td>
                    C,CPP,JS
                  </td>
                  <td>
                    <button class="btn btn-primary" type="button">See Scores</button>
                  </td>
                </tr>
                <tr>
                  <td>
                    2
                  </td>
                  <td>
                    Sanika Gandhe
                  </td>
                  <td>
                    SanikaG@gmail.com
                  </td>
                  <td>
                    Sinhgad Road
                  </td>
                  <td>
                    9850896993
                  </td>
                  <td>
                    C,CPP,JAVA
                  </td>
                  <td>
                    <button class="btn btn-primary" type="button">See Scores</button>
                  </td>
                </tr>
                <tr>
                  <td>
                    6
                  </td>
                  <td>
                    Shrirang Mhalgi
                  </td>
                  <td>
                    Shri@gmail.com
                  </td>

                  <td>
                    BibeWadi
                  </td>
                  <td>
                    9850896993
                  </td>
                  <td>
                    C,CPP,DS,JAVA
                  </td>
                  <td>
                    <button class="btn btn-primary" type="button">See Scores</button>
                  </td>
                </tr>
              </tbody>
            </table>-->

          </div>
        </div>
      </div>
    </div>

  </div>
</div>

<!-- End of All USer content  -->

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

// document.getElementById('main-content').style.display="none";
document.getElementById('admin-content').style.display="none";
document.getElementById('all-user-content').style.display="none";
// document.getElementById('funct-section').style.display="none";

// document.getElementById('add-funct-link').onclick=function() {
//   if (document.getElementById('main-content').style.display === "block") {
//     alert("We are in if block");
//     document.getElementById('main-content').style.display = "none";
//     document.getElementById('admin-content').style.display = "block";
//   } else {
//     alert("We are in else block");
//     document.getElementById('funct-section').style.display = "block";
//     document.getElementById('main-content').style.display = "none";
//     document.getElementById('admin-content').style.display = "none";
//   }
// };
//

var streamId;
var courseTypeId;
var courseId;
var courseTypesList;
document.getElementById('add-question-link').onclick=function() {
	//alert("streamList.length = "+streamList.length);
	for (var i = 0; i < streamList.length; i++) {
		  var anchor = document.createElement('a');
		  anchor.className="dropdown-item";
		  anchor.setAttribute('href', "#");
		  anchor.id = streamList[i].streamId;
		  anchor.textContent = streamList[i].streamName;
		  anchor.setAttribute('onclick', "getStreamId(this.id)");
		  document.getElementById('stream-dropdown').appendChild(anchor);
	}

	if (document.getElementById('main-content').style.display === "block") {
    //alert("We are in if block");
    document.getElementById('main-content').style.display = "none";
    document.getElementById('admin-content').style.display = "block";
  	} else {
    //alert("We are in else block");
    document.getElementById('admin-content').style.display = "block";
    document.getElementById('main-content').style.display = "none";
    document.getElementById('all-user-content').style.display = "none";
  }
	
};
var streamElem;
function getStreamId(stream_id){
	streamId = stream_id;
    
    streamElem = document.getElementById(streamId);
    var elem;
    for(i=0; i<streamList.length; i++){
    	elem = document.getElementById(streamList[i].streamId);
    	 elem.className = 'nav-link';
    }
    streamElem.className = 'nav-link active';
    document.getElementById('dropdownMenuButtonStream').textContent = streamElem.textContent;
   
    //elem = document.getElementById('dropdownMenuButtonCourseType');
    //START***********************************************
    var myData = {
        	streamId: streamId	
        };
        $.ajax({
            type: 'POST',
            url: '/OnlineEvaluationSystem/CommonController?action=StreamCourseTypeServlet',
            data: JSON.stringify(myData),
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            traditional: true,
            success: function (jsonObj) {
              courseTypesList=jsonObj[0];
             
             /*  elem = document.getElementById('coursetype-dropdown');
              if(elem != null){
            	elem.parentNode.removeChild(elem);
              } 
             */
              for (var i = 0; i < courseTypesList.length; i++) {
  				var anchor2 = document.createElement('a');
  				anchor2.className="dropdown-item";
  				anchor2.setAttribute('href', "#");
  				anchor2.id = courseTypesList[i].courseTypeId + 'CT';
  				anchor2.textContent = courseTypesList[i].courseTypeName;
  				anchor2.setAttribute('onclick', "getCourseTypeId(this.id)");
  				document.getElementById('coursetype-dropdown').appendChild(anchor2);
			  }
              /*var elem = document.getElementById('dropdownMenuButtonCourseType');
                elem.parentNode.removeChild(elem);*/
            },
            error: function(){
              alert("Error");
              //document.getElementById("error").innerHTML = "Invalid email or password";
            }

          });
      }
    //END
var courseTypeElem;
var coursesList;
    
function getCourseTypeId(courseType_id){
	courseTypeId = courseType_id.substring(0, courseType_id.length-2);
    
    courseTypeElem = document.getElementById(courseType_id);
    var elem;
    for(i=0; i<courseTypesList.length; i++){
    	elem = document.getElementById(courseTypesList[i].courseTypeId + 'CT');
    	 elem.className = 'nav-link';
    }
    courseTypeElem.className = 'nav-link active';
    document.getElementById('dropdownMenuButtonCourseType').textContent = courseTypeElem.textContent;
   //var  =  courseTypeId.substring(0, courseTypeId.length-2);
    //START********
    var myData = {
        	streamId: streamId,
        	courseTypeId:courseTypeId
        };
        $.ajax({
            type: 'POST',
            url: '/OnlineEvaluationSystem/CommonController?action=StreamCourseTypeCoursesServlet',
            data: JSON.stringify(myData),
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            traditional: true,
            success: function (jsonObj) {
              coursesList=jsonObj[0];
             //alert(coursesList);
              /*elem = document.getElementById('coursetype-dropdown');
              if(elem != null){
            	elem.parentNode.removeChild(elem);
              } */
             
            /* var elem = document.getElementById('dropdownMenuButtonCourseType');
             elem.parentNode.removeChild(elem);
             */
              for (var i = 0; i < coursesList.length; i++) {
  				var anchor4 = document.createElement('a');
  				anchor4.className="dropdown-item";
  				anchor4.setAttribute('href', "#");
  				anchor4.id = coursesList[i].courseId + 'C';
  				anchor4.textContent = coursesList[i].courseName;
  				anchor4.setAttribute('onclick', "getCourseId(this.id)");
  				document.getElementById('course-dropdown').appendChild(anchor4);
			  }
              /*var elem = document.getElementById('dropdownMenuButtonCourseType');
                elem.parentNode.removeChild(elem);*/
            },
            error: function(){
              alert("Error");
              //document.getElementById("error").innerHTML = "Invalid email or password";
            }

          });
}
var topicsList;
var courseElem;
var evalElem;
function getCourseId(course_id){
	courseId = course_id.substring(0, course_id.length - 1);
	courseElem = document.getElementById(course_id);
    var elem;
    for(i=0; i<coursesList.length; i++){
    	elem = document.getElementById(coursesList[i].courseId + 'C');
    	 elem.className = 'nav-link';
    }
    courseElem.className = 'nav-link active';
    document.getElementById('dropdownMenuButtonCourse').textContent = courseElem.textContent;
    
    //elem = document.getElementById('course-dropdown');
   // elem.length=0;
    /*if(elem != null){
  	elem.parentNode.removeChild(elem);
    } */
    
    //Current system supports only MCQs.
    var Evaluationlist = ['MCQ'];
    //for (var i = 0; i < Evaluationlist.length; i++) {
      var anchor3 = document.createElement('a');
      anchor3.className="dropdown-item";
      anchor3.setAttribute('href', "#");
      //anchor4.id = 1 + 'E';
      anchor3.textContent = Evaluationlist[0];
      document.getElementById('Evaluation-dropdown').appendChild(anchor3);
    //}
      //evalElem = document.getElementById('1E');
      anchor3.className = 'nav-link active';
      document.getElementById('dropdownMenuButtonEvaluationType').textContent = Evaluationlist[0];
      
      var myData = {
          	courseId:courseId//.substring(0, courseId.length - 1)
          };
          $.ajax({
              type: 'POST',
              url: '/OnlineEvaluationSystem/CommonController?action=CourseTopicsSelectServlet',
              data: JSON.stringify(myData),
              dataType: 'json',
              contentType: 'application/json; charset=utf-8',
              traditional: true,
              success: function (jsonObj) {
                topicsList=jsonObj[0];
               //alert(topicsList);
                /*elem = document.getElementById('coursetype-dropdown');
                if(elem != null){
              	elem.parentNode.removeChild(elem);
                } */
               
              /* var elem = document.getElementById('dropdownMenuButtonCourseType');
               elem.parentNode.removeChild(elem);
               */
                for (var i = 0; i < topicsList.length; i++) {
    				var anchor5 = document.createElement('a');
    				anchor5.className="dropdown-item";
    				anchor5.setAttribute('href', "#");
    				anchor5.id = topicsList[i].topicId + 'T';
    				anchor5.textContent = topicsList[i].topicName;
    				anchor5.setAttribute('onclick', "getTopicId(this.id)");
    				document.getElementById('topic-dropdown').appendChild(anchor5);
  			  }
               
                /*var elem = document.getElementById('dropdownMenuButtonCourseType');
                  elem.parentNode.removeChild(elem);*/
              },
              error: function(){
                alert("Error");
                //document.getElementById("error").innerHTML = "Invalid email or password";
              }

            });
}

var topicId;
var diffLevelsList;
var topicElem;
function getTopicId(topic_id){
	topicId = topic_id.substring(0, topic_id.length - 1);
	
	topicElem = document.getElementById(topic_id);
    var elem;
    for(i=0; i<topicsList.length; i++){
    	elem = document.getElementById(topicsList[i].topicId + 'T');
    	 elem.className = 'nav-link';
    }
    topicElem.className = 'nav-link active';
    document.getElementById('dropdownMenuButtonTopics').textContent = topicElem.textContent;
    var myData = {
          	courseId:courseId
          };
          $.ajax({
              type: 'POST',
              url: '/OnlineEvaluationSystem/CommonController?action=DifficultyLevelServlet',
              data: JSON.stringify(myData),
              dataType: 'json',
              contentType: 'application/json; charset=utf-8',
              traditional: true,
              success: function (jsonObj) {
                diffLevelsList=jsonObj[1];
               //alert(diffLevelsList);
                /*elem = document.getElementById('coursetype-dropdown');
                if(elem != null){
              	elem.parentNode.removeChild(elem);
                } */
               
              /* var elem = document.getElementById('dropdownMenuButtonCourseType');
               elem.parentNode.removeChild(elem);
               */
                for (var i = 0; i < diffLevelsList.length; i++) {
    				var anchor6 = document.createElement('a');
    				anchor6.className="dropdown-item";
    				anchor6.setAttribute('href', "#");
    				anchor6.id = diffLevelsList[i].difficultyLevelId + 'D';
    				anchor6.textContent = diffLevelsList[i].difficultyLevelName;
    				anchor6.setAttribute('onclick', "getDiffLevelId(this.id)");
    				document.getElementById('diff-dropdown').appendChild(anchor6);
  			  }
              /*var elem = document.getElementById('dropdownMenuButtonCourseType');
                  elem.parentNode.removeChild(elem);*/
              },
              error: function(){
                alert("Error");
                //document.getElementById("error").innerHTML = "Invalid email or password";
              }

            });
}

var diffLevelId;
var diffLvlElem;
function getDiffLevelId(diffLevel_id){
	diffLevelId = diffLevel_id.substring(0, diffLevel_id.length - 1);
	
	diffLvlElem = document.getElementById(diffLevel_id);
    var elem;
    for(i=0; i<diffLevelsList.length; i++){
    	elem = document.getElementById(diffLevelsList[i].difficultyLevelId + 'D');
    	 elem.className = 'nav-link';
    }
    diffLvlElem.className = 'nav-link active';
    document.getElementById('dropdownMenuButtonDiffLvl').textContent = diffLvlElem.textContent;
}
var optionArr = ['option1','option2','option3','option4'];
function addQuestion(){
	//alert("Add Question");
	var question = document.getElementById('question').value;
	var option1 = document.getElementById(optionArr[0]).value;
	//alert(option1);
	var option2 = document.getElementById(optionArr[1]).value;
	//alert(option2);
	var option3 = document.getElementById(optionArr[2]).value;
	//alert(option3);
	var option4 = document.getElementById(optionArr[3]).value;
	//alert(option4);
	var correctOption = document.getElementById('correctOptions').value;
	//alert(correctOptions);
	var totalMarks = document.getElementById('totalMarks').value;
	//alert(totalMarks);
	var explanation = document.getElementById('explanation').value;
	//alert(explanation);
	var inCrt="No";
	if(courseTypeId == 2){
		inCrt="YES";
	}
	alert(inCrt);
	var myData = {
			courseId:courseId,
			topicId:topicId,
			question:question,
			option1:option1,
			option2:option2,
			option3:option3,
			option4:option4,
			correctOption:correctOption,
			totalMarks:totalMarks,
			explanation:explanation,
			difficultyLevelId:diffLevelId,
			inCrt:inCrt
	};
	//alert(myData);
	$.ajax({
        type: 'POST',
        url: '/OnlineEvaluationSystem/CommonController?action=AddQuestionServlet',
        data: JSON.stringify(myData),
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        traditional: true,
        success: function (jsonObj) {
        	//alert("FRom EMPDash");
        	var responseJson1=jsonObj[0], responseJson2=jsonObj[1], responseJson3=jsonObj[2];
			var locationJson = eval('(' + responseJson1 + ')');
			//alert("^^^^^^^" + locationJson);
			if (locationJson.success) {
				var strResJSON = JSON.stringify(responseJson2);
				var streamJSON = JSON.stringify(responseJson3);
				//alert("studentEmail : " + responseJson2.email);
				window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) + encodeURIComponent(streamJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";
			} 
          //window.location.href=;
        },
        error: function(){
          alert("Error");
          //document.getElementById("error").innerHTML = "Invalid email or password";
        }

      });
	alert("After AJAX");
}
//showing all-user content
document.getElementById('all-user-link').onclick=function() {
  if (document.getElementById('main-content').style.display === "block") {
    //alert("We are in if block");
    //document.getElementById('main-content').style.display = "none";
    //document.getElementById('admin-content').style.display = "block";
  } else {
    //alert("We are in else block");
    document.getElementById('all-user-content').style.display = "block";
    document.getElementById('main-content').style.display = "none";
    document.getElementById('admin-content').style.display="none";
  }
};

</script>

<!-- Js for All user  -->
<script type="text/javascript">
  //creating table dynamically
  var table = document.createElement('table');
  table.className="table table-hover";
  var thead = document.createElement('thead');
  var head = ['Sr.no','Username','Email','Address','Mobile No','Courses Done'];
  for (var i = 0; i < head.length; i++) {
    var th = document.createElement('th');
    th.textContent = head[i];
    thead.appendChild(th);
  }
  table.appendChild(thead);
  var td0 = ['1','2']; var td1 = ['Sahil','Sanika']; var td2 = ['sahil@','sanika@'];
  var td3 = ['M.G. Road','M.A.Road']; var td4=[12,23]; var td5 = ['c','cpp','java'];
  // var students = {Srno:1, Username:"Sahil",Email:"sahi@",Address:"PICT",MobileNo:121,CoursesDone:"C,CPP"};
   var students = {
     Srno:1, Username:"Sahil",Email:"sahi@",Address:"PICT",MobileNo:121,CoursesDone:"C,CPP"
   };

  //creating Tbody
  var tbody = document.createElement('tbody');
  var tr = document.createElement('tr');
   var td0 = document.createElement('td');
   td0.textContent = students.Srno;
   var td1 = document.createElement('td');
   td1.textContent = students.Username;
   var td2 = document.createElement('td');
   td2.textContent = students.Email;
   var td3 = document.createElement('td');
   td3.textContent = students.Address;
   var td4 = document.createElement('td');
   td4.textContent = students.MobileNo;
   var td5 = document.createElement('td');
   td5.textContent = students.CoursesDone;
   tr.appendChild(td0);
   tr.appendChild(td1);
   tr.appendChild(td2);
   tr.appendChild(td3);
   tr.appendChild(td4);
   tr.appendChild(td5);


  thead.appendChild(th);
  tbody.appendChild(tr);
  table.appendChild(tbody);

  document.getElementById('table').appendChild(table);

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
var data;
var userProfile;
var streamList;
$(document).ready(function() {
	var searchString = window.location.search.substring(1);
	var arr = searchString.split('&');
	var data= arr[0].split('=')[1];
	var decodedData = decodeURIComponent(data);
	//alert(decodedData);
	var data1 = decodedData.substring(0, decodedData.indexOf('}')+1);
	//alert(data1);
	userProfile =  eval('(' + data1 + ')');
	var data2 = decodedData.substring(decodedData.indexOf('}')+1, decodedData.length);
	//alert(data2);
	streamList = eval('(' + data2 + ')');
	//alert(streamList);
	document.getElementById('welcome').textContent = userProfile.firstName + " " + userProfile.lastName;
  // Javascript method's body can be found in assets/js/demos.js
    md.initDashboardPageCharts();

});

</script>
<script type="text/javascript">
// adding code for all components of dropdown
// first for select Stream
//var Streamlist = ['Technical','SoftSkills','General Aptitude'];
/* for (var i = 0; i < streamlist.length; i++) {
  var anchor = document.createElement('a');
  anchor.className="dropdown-item";
  anchor.setAttribute('href', "#");
  anchor.textContent = streamlist[i];
  document.getElementById('stream-dropdown').appendChild(anchor);
}
 */
//Second For Course List
/* var Coursetypelist = ['Modular','TBC','CRT'];
for (var i = 0; i < Coursetypelist.length; i++) {
  var anchor2 = document.createElement('a');
  anchor2.className="dropdown-item";
  anchor2.setAttribute('href', "#");
  anchor2.textContent = Coursetypelist[i];
  document.getElementById('coursetype-dropdown').appendChild(anchor2);
} */

//Third for Evaluation type
/* var Evaluationlist = ['MCQ','Coding','Descriptive'];
for (var i = 0; i < Evaluationlist.length; i++) {
  var anchor3 = document.createElement('a');
  anchor3.className="dropdown-item";
  anchor3.setAttribute('href', "#");
  anchor3.textContent = Evaluationlist[i];
  document.getElementById('Evaluation-dropdown').appendChild(anchor3);
}
 */
//Fourth for Course list
//var Courselist = ['C','C++','Java','JavaScript','Database','DataStructures'];
/* for (var i = 0; i < Courselist.length; i++) {
  var anchor4 = document.createElement('a');
  anchor4.className="dropdown-item";
  anchor4.setAttribute('href', "#");
  anchor4.textContent = Courselist[i];
  document.getElementById('course-dropdown').appendChild(anchor4);
} */

//Fifth for Topics
/* var TopicList = ['Basics','Functions','Operators','Input/output','pointers','FileHandling'];
for (var i = 0; i < TopicList.length; i++) {
  var anchor5 = document.createElement('a');
  anchor5.className="dropdown-item";
  anchor5.setAttribute('href', "#");
  anchor5.textContent = TopicList[i];
  document.getElementById('topic-dropdown').appendChild(anchor5);
} */

// Sixth for Difficulty level
/* var DiffList = ['Easy ','Medium','Hard'];
for (var i = 0; i < DiffList.length; i++) {
  var anchor6 = document.createElement('a');
  anchor6.className="dropdown-item";
  anchor6.setAttribute('href', "#");
  anchor6.textContent = DiffList[i];
  document.getElementById('diff-dropdown').appendChild(anchor6);
} */

//Adding Dynamic Option content

//var optionArr = ['option1','option2','option3','option4'];
for (var i = 0; i < optionArr.length; i++) {
  var row = document.createElement('div');
  row.className="row";
  var col = document.createElement('div');
  col.className="col-md-4";
  var formcheck = document.createElement('div');
  formcheck.className="form-check";
  var label = document.createElement('label');
  label.className="form-check-label";
  label.textContent = optionArr[i];
  var input1 =  document.createElement('input');
  input1.className="form-check-input";
  input1.setAttribute('type',"radio");
  input1.setAttribute('name', "exampleRadios");
  input1.id="exampleRadios2";
  input1.setAttribute('value',optionArr[i]);
  //input1.innerHTML= optionArr[i];
  // input1.setAttribute('style', "color:#000;");
  formcheck.appendChild(input1);
  formcheck.appendChild(label);
  var span = document.createElement('span');
  span.className="circle";
  var span2 = document.createElement('span');
  span2.className="check";
  span.appendChild(span2);

  label.appendChild(span);
  formcheck.appendChild(label);
  col.appendChild(formcheck);
  row.appendChild(col);
  var col2 = document.createElement('div');
  col2.className="col-md-4";
  var formgroup = document.createElement('div');
  formgroup.className="form-group";
  var label2 = document.createElement('label');
  label2.className="bmd-label-floating";
  label2.textContent = 'Enter the option content';
  var input2 = document.createElement('input');
  input2.setAttribute('type',"text");
  input2.className="form-control";
  input2.id=optionArr[i];
  formgroup.appendChild(input2);
  formgroup.appendChild(label2);
  col2.appendChild(formgroup);
  row.appendChild(col2);
  document.getElementById('inner-opt-content').appendChild(row);
}
</script>
</body>

</html>
