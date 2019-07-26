<!DOCTYPE html>
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
              <div class="content">
                <div class="container-fluid">
                  <!-- your content here -->
                  <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-12">
                      <div class="card-header heading">
                          <h3>Courses Offered</h3>
                      </div>
                    </div>
                  </div>

                  <div class="row">
                     <div class="col-md-11 col-lg-11">
                      <div class="card">
                        <div class="card-header card-header-tabs card-header" style="background-color:rgb(148, 21, 193);">
                          <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">

                              <ul class="nav nav-tabs" data-tabs="tabs">
                                <li class="nav-item">
                                  <a class="nav-link active" href="#profile" data-toggle="tab">
                                    <i class="material-icons">computer</i>Technical Section
                                    <div class="ripple-container"></div>
                                  </a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" href="#messages" data-toggle="tab">
                                    <i class="material-icons">record_voice_over</i> SoftSkills Section
                                    <div class="ripple-container"></div>
                                  </a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" href="#settings" data-toggle="tab">
                                    <i class="material-icons">wb_incandescent</i> General Aptitude Section
                                    <div class="ripple-container"></div>
                                  </a>
                                </li>
                              </ul>
                            </div>
                          </div>
                        </div>

                        <div class="card-body">
                          <div class="tab-content">
                            <div class="tab-pane active" id="profile"><br><br>
                              <div class="dropdown drop1">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  Course Category
                                </button>
                                <div class="dropdown-menu"  aria-labelledby="dropdownMenuButton">
                                  <a class="dropdown-item" href="#" id = "2" onclick="displayStreamCourses(this.id)">Modular</a>
                                  <a class="dropdown-item" href="#">TBC</a>
                                  <a class="dropdown-item" href="#">CRT</a>
                                </div>
                              </div><br><br>
   
                              <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 column1">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-icon">
                                      <div class="card-icon" style="font-size:20px; background-color:rgb(7, 7, 79);" id="row1-card1">
                                        <i class="fa fa-copyright" style="font-size:70px;"></i>
                                      </div>
                                      <a href="#" id = "5" onclick="displayTestSelect(this.id)"><p class="card-category">C Language</p></a>
                                    </div>

                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column2">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-icon">
                                      <div class="card-icon" style="font-size:20px; background-color:rgb(19, 237, 165);">
                                        <img src="../assets/img/Dashboard-main-page-images/cpp-icon-file-format.svg" alt="java" style=" height: 60px; width: 60px; ">
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">C++ Language</p></a>
                                    </div>

                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column3">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-icon">

                                      <div class="card-icon" style="background-color:rgb(236, 13, 40);">
                                        <img src="../assets/img/Dashboard-main-page-images/java-brands.svg" alt="java" style=" height: 60px; width: 60px; ">
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">Java Language</p></a>
                                    </div>
                                  </div>
                                </div>
                              </div>

                              <div class="row ">
                                <div class="col-lg-3 col-md-6 col-sm-6 column1">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-warning card-header-icon">

                                      <div class="card-icon" style="font-size:20px;">
                                        <i class="fa fa-database" style="font-size:70px;"></i>
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">Database</p></a>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column3">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-info card-header-icon">

                                      <div class="card-icon" style="font-size:20px;" id="card">
                                        <i class="fa fa-windows" style="font-size:70px;"></i>
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">Operating System</p></a>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column3">
                                  <div class="card card-stats">
                                    <div class="card-header  card-header-primary card-header-icon">
                                      <div class="card-icon">
                                        <img src="../assets/img/Dashboard-main-page-images/js-brands.svg" alt="java" style=" height: 60px; width: 60px; ">
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">JavaScript language</p></a>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>

                            <div class="tab-pane" id="messages">
                              <div class="dropdown drop1">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  Course Category
                                </button>
                                <div class="dropdown-menu"  aria-labelledby="dropdownMenuButton">
                                  <a class="dropdown-item" href="#">Modular</a>
                                  <a class="dropdown-item" href="#">TBC</a>
                                  <a class="dropdown-item" href="#">CRT</a>
                                </div>
                              </div><br>
                              <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 column1">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-icon">
                                      <div class="card-icon" style="font-size:20px; background-color:rgb(0, 208, 139);" id="row1-card1">
                                        <i class="material-icons">sort_by_alpha</i>
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">English Language Skills</p></a>
                                    </div>

                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column2">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-icon">
                                      <div class="card-icon" style="font-size:20px; background-color:rgb(180, 3, 136);" id="row1-card1">
                                        <i class="material-icons">record_voice_over</i>
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">Oral Communication</p></a>
                                    </div>

                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column3">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-danger card-header-icon">

                                      <div class="card-icon">
                                      <i class="material-icons">how_to_reg</i>
                                      </div>
                                  <a href="TestSelectPage.jsp" >    <p class="card-category">Personality Development</p></a>
                                    </div>
                                  </div>
                                </div>
                              </div>

                            </div>
                            <div class="tab-pane" id="settings">
                              <div class="dropdown drop1">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  Course Category
                                </button>
                                <div class="dropdown-menu"  aria-labelledby="dropdownMenuButton">
                                  <a class="dropdown-item" href="#" >Modular</a>
                                  <a class="dropdown-item" href="#">TBC</a>
                                  <a class="dropdown-item" href="#">CRT</a>
                                </div>
                              </div><br>
                              <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 column1">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-icon">
                                      <div class="card-icon" style="font-size:20px; background-color:rgb(111, 209, 13)" id="row1-card1">
                                        <i class="material-icons">exposure</i>
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">Quantitative Aptitude</p></a>
                                    </div>

                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column2">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-info card-header-icon">
                                      <div class="card-icon" style="font-size:20px;">
                                        <i class="material-icons">extension</i>
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">Logical Reasoning</p></a>
                                    </div>

                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column3">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-icon">

                                      <div class="card-icon" style="background-color:rgb(218, 113, 31);">
                                        <i class="material-icons">find_in_page</i>
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">Verbal Reasoning</p></a>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 column4">
                                  <div class="card card-stats">
                                    <div class="card-header card-header-icon">
                                      <div class="card-icon" style="font-size:20px; background-color:rgb(251, 26, 30);">
                                <i class="material-icons">spellcheck</i>
                                      </div>
                                      <a href="TestSelectPage.jsp" ><p class="card-category">Verbal Ability</p></a>
                                    </div>

                                  </div>

                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>


                  </div>
                </div>
              </div>
		<script>
		/* &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
            var searchString = window.location.search.substring(1);
    		var arr = searchString.split('&');
    		var data= arr[0].split('=')[1];
    		//var decodedData = decodeURIComponent(data);
    		//var decodedData1 = eval('(' + decodedData + ')');
    		var streamList = decodeURIComponent(data);
    		//alert(decodedData);
    		var streamList1 =  eval('(' + streamList + ')');
    		alert("MainCoursePage *** " + streamList1.length);
    	
    		for(i=0; i<streamList1.length; i++){
    			alert(streamList1[i].streamName);
    		} 
    		&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& */
    		var searchString = window.location.search.substring(1);
    		var arr = searchString.split('&');
    		var data= arr[0].split('=')[1];
    		var decodedData = decodeURIComponent(data);
    		
    		//Start- Extract Stream List
    		var streams = decodedData.substring(0, decodedData.indexOf(']')+1);
    		var streamList = eval('(' + streams + ')');
    		/* for(i=0; i<streamList.length; i++){
    			alert(streamList[i].streamId + ":" + streamList[i].streamName)
    		} working code*/
    		//End- Extract Stream List
    		
    		//Start- Extract Course Type List
    		var courseTypes = decodedData.substring(decodedData.indexOf(']')+1, decodedData.length);
    		var courseTypesList = eval('(' + courseTypes + ')');
    		/* for(i=0; i<courseTypesList.length; i++){
    			alert(courseTypesList[i].courseTypeId + ":" + courseTypesList[i].courseTypeName)
    		} working code*/
    		//END- Extract Course Type List
    		
    		/* data= arr[0].split('=')[2];
    		var courseTypeList = decodeURIComponent(data);
    		var courseTypeList1 =  eval('(' + courseTypeList + ')');
    		alert("MainCoursePage *** " + courseTypeList1.length);
    	
    		for(i=0; i<courseTypeList1.length; i++){
    			alert(courseTypeList1[i].courseTypeName);
    		}  */
    	//****************************************************
     	//var x = 4;
     	// alert(<c:out value="${x}" />);
    	/*<c:out value="${'Welcome to WinPoint'}"/>
    	 <c:forEach items="${streamList1}"  var="streamItem">
    		alert("1");
			//alert('<c:out value="${streamItem.firstName}" />');
		</c:forEach>  */
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
	    //***********************************************************************************
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
			
				 function displayStreamCourses(clicked_id){
					 var streamId = 1;
						var courseTypeId = clicked_id;
						var myData = {

			                    streamId: streamId,
			                    courseTypeId: courseTypeId
			            };
					 
					$.ajax({
			            type: 'POST',
			            url: '/OnlineEvaluationSystem/CommonController?action=StreamCourseTypeCoursesServlet',
			            data: JSON.stringify(myData),
			            dataType: 'json',
			            contentType: 'application/json; charset=utf-8',
			            traditional: true,
			            success: function (jsonObj) {
			            	var responseJson=jsonObj[0];
			               	var strResJSON = JSON.stringify(responseJson);
			               	for(i=0; i<responseJson.length; i++){
			            		alert("course : " + responseJson[i].courseId + "," + responseJson[i].courseName);
			               	}    	
		            	},
		            	error: function(){
		            	//alert("Error");
		            		document.getElementById("error").innerHTML = "Invalid email or password";
		            	}
		

		          });
				}
				 function displayTestSelect(clicked_id){
					 alert("displayTestSelect Id = " + clicked_id);
					 var streamId = 1;
						var courseTypeId = clicked_id;
						courseId = 1;
						var myData = {
			                    streamId: streamId,
			                    courseTypeId: courseTypeId,
			                    courseId: courseId
			            };
					 
					$.ajax({
			            type: 'POST',
			            url: '/OnlineEvaluationSystem/CommonController?action=TestSelectServlet',
			            data: JSON.stringify(myData),
			            dataType: 'json',
			            contentType: 'application/json; charset=utf-8',
			            traditional: true,
			            success: function (jsonObj) {
			            	
			            	var responseJson1 = jsonObj[0]; 
			            	var locationJson = eval('(' + responseJson1 + ')');
			            	
			            	var responseJson2=jsonObj[1];
			               	var strResJSON = JSON.stringify(responseJson2);
			            	for(i=0; i<responseJson2.length; i++){
			            		alert("Test : " + responseJson2[i].evaluationTypeName + "," + responseJson2[i].courseName);
			               	}  
			               	//window.location.href = locationJson.location;
			            	window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) + "&username=" + "Anjali" +"&password=" + "Anjali";
		            	},
		            	error: function(){
		            	//alert("Error");
		            		document.getElementById("error").innerHTML = "Invalid email or password";
		            	}
		

		          });
				}		 
			</script>
          </body>
        </html>
