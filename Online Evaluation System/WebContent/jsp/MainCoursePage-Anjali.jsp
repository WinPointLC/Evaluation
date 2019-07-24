<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <title>Main Course Page</title>
    <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
          <link rel="stylesheet" href="../assets/css/fontawesome.min.css">
            <!-- Material Kit CSS -->
            <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
            <link rel="stylesheet" href="../css/MainCoursePage.css">            
            </head>
            <body>
              <div class="container-fluid">
                <div class="row r1">
                  <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="card card-plain">
                      <div class="card card-header card-header-primary">
                        <h3 class="card-title text-align mr-auto ml-auto">Courses offered for you by Winpoint</h3>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row r2">
                  <div class="col-sm-4 col-md-4 col-lg-4 c1">
                    <button class="btn btn-info btn-block tablinks" onclick="Showdiv1()" >Technical</button>
                  </div>
                  <div class="col-sm-4 col-md-4 col-lg-4 c2">
                    <button class="btn btn-info btn-block tablinks" onclick="Showdiv2()" >SoftSkills</button>
                  </div>
                  <div class="col-sm-4 col-md-4 col-lg-4 c3">
                    <button class="btn btn-info btn-block tablinks" onclick="Showdiv3()" >General Aptitude</button>
                  </div>
                 <div>
        			<c:forEach items="${streamList1}"  var="streamItem">
        			<p><c:out value="${streamItem.firstName}" /></p>
        			</c:forEach>
    			  </div>
                </div>
                <div class="row r3">
                  <div class="col-sm-12 col-md-12 col-lg-12">
                    <div id="Technical" class="tabcontent" >
                      <h3 class="content-header">Technical Section</h3>
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Course Category
                        </button>
                        <div class="dropdown-menu"  aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Modular</a>
                          <a class="dropdown-item" href="#">TBC</a>
                          <a class="dropdown-item" href="#">CRT</a>
                        </div>
                      </div><br><br>
                      <div class="row ">
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-danger btn-block">C</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-danger btn-block">Cpp</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-danger btn-block">Java</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-danger btn-block">JavaScript</button></a>
                          </div>
                        </div>
                      </div><br><br>
                      <div class="row ">
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list-row2">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-danger btn-block">Data Structures</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list-row2">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-danger btn-block">Database</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list-row2">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-danger btn-block">Operating System</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list-row2">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-danger btn-block">Computer Networks</button></a>
                          </div>
                        </div>
                      </div><br><br>

                    </div>
                  </div>
                  <div class="col-sm-12 col-md-12 col-lg-12">
                    <div id="SoftSkills" class="tabcontent" style="display:none;">
                      <h3 class="content-header">Softskills Section</h3>
                      <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Course Category
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Modular</a>
                          <a class="dropdown-item" href="#">TBC</a>
                          <a class="dropdown-item" href="#">CRT</a>
                        </div>
                      </div><br><br>
                      <div class="row ">
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list2-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-block">English language Skills</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list2-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-block">Writing Skills</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list2-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-block">Oral Communication</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list2-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-block">Personality Development</button></a>
                          </div>
                        </div>
                      </div><br><br>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-12 col-lg-12 content-align mr-auto ml-auto">
                    <div id="GA" class="tabcontent" style="display:none;">
                      <h3 class="content-header">General Aptitude</h3>
                      <div class="dropdown ">
                        <button class="btn btn-secondary dropdown-toggle " type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  >
                          Course Category
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Modular</a>
                          <a class="dropdown-item" href="#">TBC</a>
                          <a class="dropdown-item" href="#">CRT</a>
                        </div>
                      </div><br><br>
                      <div class="row ">
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list3-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-warning btn-block">Quantitative Aptitude</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list3-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-warning btn-block">Logical Reasoning</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list3-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-warning btn-block">Verbal Reasoning</button></a>
                          </div>
                        </div>
                        <div class="col-sm-2 col-md-2 col-lg-2 content-align mr-auto ml-auto">
                          <div class="course-list3-row1">
                            <a href="CourseSelectPage.jsp"><button type="button" name="button" class="btn btn-warning btn-block">Verbal Ability</button></a>
                          </div>
                        </div>
                      </div><br><br>
                    </div>
                  </div>
                </div>

              </div>

              <script>
              function Showdiv1() {
                document.getElementById('Technical').style.display="block";
                document.getElementById('SoftSkills').style.display="none";
                document.getElementById('GA').style.display="none";
              }
              function Showdiv2() {
                document.getElementById('SoftSkills').style.display="block";
                document.getElementById('Technical').style.display="none";
                document.getElementById('GA').style.display="none";
              }
              function Showdiv3() {
                document.getElementById('GA').style.display="block";
                document.getElementById('SoftSkills').style.display="none";
                document.getElementById('Technical').style.display="none";
              }
            </script>
            <script>
            var searchString = window.location.search.substring(1);
    	var arr = searchString.split('&');
    	var data= arr[0].split('=')[1];
    	var streamList = decodeURIComponent(data);
    	var streamList1 =  eval('(' + streamList + ')');
    	alert(streamList1);
    	<c:forEach items="${streamList1}"  var="streamItem">
    		alert("1");
			//alert('<c:out value="${streamItem.firstName}" />');
		</c:forEach>
		/* var groupMap = {
			    <c:forEach items="${configuredGroupMap}" var="groupMap" varStatus="loop">
		        "${groupMap.key}": "${groupMap.value}"${!loop.last ? ',' : ''}
		    </c:forEach>
		};
		output of this is like
		var groupMap = {
			    "key1": "value1",
			    "key2": "value2",
			    "key3": "value3"
			};
		 */
	    //alert("Client is " + userProfile1.userId + ":" + userProfile1.firstName + " " + userProfile1.lastName);
	    /* document.getElementById("photoId").src = stream1.photoLocation;
	    document.getElementById("firstName").value = stream1.firstName;
	    document.getElementById("lastName").value = stream1.lastName; */
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

          </body>
        </html>
