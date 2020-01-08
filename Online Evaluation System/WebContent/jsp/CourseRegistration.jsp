<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Course Registration Page</title>
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
                <!-- your content here -->
                <div class="row">
                  <div class="col-sm-12 col-md-12 col-lg-12">
                    <div class="card-header heading">
                      <h3>Course Registration</h3>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-11 col-lg-11">
                    <!--     <div class="card"> -->
                    <div class="card">
                      <div class="card-header card-header-tabs card-header" style="background-color:rgb(148, 21, 193);">
                        <div class="nav-tabs-navigation">
                          <div class="nav-tabs-wrapper">

                            <ul class="nav nav-tabs" data-tabs="tabs" id="nav-tab">

                            </ul>
                          </div>
                        </div>
                      </div>
                      <div id="drop11" class="dropdown drop1">

                      </div>
                    </div>
                    <div class="card" style="display:none;" id="CourseCard" >
                      <div class="card-body" id="courses">
                        <div class="tab-content" id="tab-content">
                          <div class="tab-pane active" id="profile"><br><br>
                           
                           <div class="row" id='courseList'></div>
                              </div>
							<div class="tab-pane active" id="registration">
							   <h6 id="courseName"></h6>
							 <a href="#" onclick="submitCourseRegistration()"><button class="Signbtn" type="button">Submit</button></a>
							<!-- <a href="#" onclick="alert('From Submit')"><button class="Signbtn" type="button">Submit</button></a> -->
							</div>
                              <div class="tab-pane" id="messages">
                               
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
                              <!--  <div id="drop11" class="dropdown drop1">

                            </div><br> -->
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
                    </div><!-- End card div -->


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
            //var stream_id = 0;

            //Start- Extract Stream List
            var streams = decodedData.substring(0, decodedData.indexOf(']')+1);
            //alert(streams);
            var streamList = eval('(' + streams + ')');
			//alert(streamList);


            for(i=0; i<streamList.length; i++){
              // alert(streamList[i].streamId + ":" + streamList[i].streamName)
              // var arr = ['Technical','SoftSkills','General Aptitude'];
              // for (var i = 0; i < arr.length; i++) {
              // Inserted code
              var div1 = document.createElement('div');
              div1.id="tab-div";
              var li = document.createElement('li');
              li.className='nav-item';
              li.id = streamList[i].streamId + 'l';

              var anchor =document.createElement('a');
              anchor.setAttribute('href',"#Profile");
              anchor.setAttribute('data-toggle',"tab");
              anchor.className='nav-link ';
              anchor.id = streamList[i].streamId + 'a';
              anchor.textContent=streamList[i].streamName;
              li.id = streamList[i].streamId;
             // alert("Li id = " + li.id);
              li.appendChild(anchor);
              li.setAttribute('onclick', "getStreamId(this.id)");
              div1.appendChild(li);
              document.getElementById("nav-tab").appendChild(div1);
              // End Inserted Code
            }
            // }
            var streamElem = document.getElementById(streamList[0].streamId + 'a');
            streamElem.className='nav-link active';
            
            //End- Extract Stream List
            var drop1 = document.getElementsByClassName('drop1');
            var btn = document.createElement('button');
            btn.className='btn btn-secondary dropdown-toggle';
            btn.id='dropdownMenuButton';
            btn.setAttribute('data-toggle', "dropdown");
            btn.setAttribute('aria-haspopup', "true");
            btn.setAttribute('aria-expanded',"false");
            btn.textContent="Course Category";
            document.getElementById('drop11').appendChild(btn);

            var dropdownMenu = document.createElement('div');
            dropdownMenu.className='dropdown-menu';
            dropdownMenu.id='dropdownMenu';
            dropdownMenu.setAttribute('aria-labelledby',"dropdownMenuButton");
            //Start- Extract Course Type List
            var decodedData1 = decodedData.substring(decodedData.indexOf(']')+1, decodedData.length);
            var courseTypes = decodedData1.substring(0, decodedData1.indexOf(']')+1);
            var courseTypesList = eval('(' + courseTypes + ')');
         //   alert("courseTypesList" + courseTypesList);
            
            
            // var arr2 = ['Modular','TBC','CRT'];
            for(i=0; i<courseTypesList.length; i++){
              var dropanchor = document.createElement('a');
              dropanchor.className='dropdown-item';
              dropanchor.setAttribute('href',"#");
              dropanchor.id=courseTypesList[i].courseTypeId;
              dropanchor.textContent=(courseTypesList[i].courseTypeName).toUpperCase();
              dropanchor.setAttribute('onclick',"displayStreamCourses(this.id, this.textContent)");

              dropdownMenu.appendChild(dropanchor);
              // alert(courseTypesList[i].courseTypeId + ":" + courseTypesList[i].courseTypeName)
            }
            document.getElementById('drop11').appendChild(dropdownMenu);
            
            var decodedData2 = decodedData1.substring(decodedData1.indexOf(']')+1, decodedData1.length);
            var studentCourses = decodedData2.substring(0, decodedData2.indexOf(']')+1);
            var studentCoursesList = eval('(' + studentCourses + ')');
     //       alert("studentCoursesList " + studentCoursesList);
            var studentCoursesCourseIdList = [];
            for(var i=0; i<studentCoursesList.length; i++){
   //         	alert("courseId = " + studentCoursesList[i].courseName);
            	studentCoursesCourseIdList.push(studentCoursesList[i].courseId);
            }
            //alert("studentCoursesCourseIdList length: " + studentCoursesCourseIdList.length);
            
            var decodedData3 = decodedData2.substring(decodedData2.indexOf(']')+1, decodedData2.length);
            var studentGACourses = decodedData3.substring(0, decodedData3.indexOf(']')+1);
            var studentGACoursesList = eval('(' + studentGACourses + ')');
       //     alert("studentGACoursesList = " + studentGACoursesList);
            var studentGACoursesCourseIdList = [];
            for(var i=0; studentGACoursesList.length; i++){
            	studentGACoursesCourseIdList.push(studentGACoursesList[i].courseId);
            }
            //alert("studentGACoursesCourseIdList : " + studentGACoursesCourseIdList); 
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
      <!--  Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
      <script src="../assets/js/plugins/bootstrap-selectpicker.js"></script>
      <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
      <script src="../assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
      <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
      <script src="../assets/js/plugins/jquery.dataTables.min.js"></script>
      <!--  Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
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
      
      //alert(streamList[i].streamId + ":" + streamList[i].streamName);
     
      var streamId=1;
      var courseId=1;
      var courseName;
      var courseTypeId;
      
      function getStreamId(stream_id){
    	  streamId = stream_id;
        
        var streamElem = document.getElementById(streamId + 'a');
        var elem;
        for(i=0; i<streamList.length; i++){
        	elem = document.getElementById(streamList[i].streamId + 'a');
        	 elem.className = 'nav-link';
        }
        streamElem.className = 'nav-link active';
       
        elem = document.getElementById('courseList');
        if(elem != null){
        	elem.parentNode.removeChild(elem);
        }        
        
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
              var courseTypesList=jsonObj[0];
             // alert(courseTypesList.length);
              //var strResJSON = JSON.stringify(responseJson);
            
            elem = document.getElementById('dropdownMenu');
            if(elem != null){
            	elem.parentNode.removeChild(elem);
            }
            
            var elem = document.getElementById('dropdownMenuButton');
            elem.parentNode.removeChild(elem);
            
            //var drop1 = document.getElementsByClassName('drop1');
            var btn = document.createElement('button');
            btn.className='btn btn-secondary dropdown-toggle';
            btn.id='dropdownMenuButton';
            btn.setAttribute('data-toggle', "dropdown");
            btn.setAttribute('aria-haspopup', "true");
            btn.setAttribute('aria-expanded',"false");
            btn.textContent="Course Category";
            document.getElementById('drop11').appendChild(btn);

			 
              var dropdownMenu = document.createElement('div');
              dropdownMenu.className='dropdown-menu';
              dropdownMenu.id='dropdownMenu';
              dropdownMenu.setAttribute('aria-labelledby',"dropdownMenuButton");
              for(i=0; i<courseTypesList.length; i++){
            	//  alert(courseTypesList[i].courseTypeName);
                  var dropanchor = document.createElement('a');
                  dropanchor.className='dropdown-item';
                  dropanchor.setAttribute('href',"#");
                  dropanchor.id=courseTypesList[i].courseTypeId;
                  var courseTypeName = (courseTypesList[i].courseTypeName).toUpperCase();
                  //alert(courseTypeName);
                  dropanchor.textContent=courseTypeName;
                  dropanchor.setAttribute('onclick',"displayStreamCourses(this.id, this.textContent)");

                  dropdownMenu.appendChild(dropanchor);
                  // alert(courseTypesList[i].courseTypeId + ":" + courseTypesList[i].courseTypeName)
                }

              document.getElementById('drop11').appendChild(dropdownMenu);
            },
            error: function(){
              alert("Error");
              //document.getElementById("error").innerHTML = "Invalid email or password";
            }


          });
        
      }

      function displayStreamCourses(courseType_id, courseTypeName ){
        //var streamId = stream_id;
        courseTypeId = courseType_id;
        //alert("stream_id = " + streamId + "courseType_id = " + courseType_id);
        
          document.getElementById('dropdownMenuButton').textContent = courseTypeName;
        
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
            document.getElementById('CourseCard').style.display="block";
            var responseJson=jsonObj[0];
            var strResJSON = JSON.stringify(responseJson);
//alert(strResJSON);
            // <div class="col-lg-3 col-md-6 col-sm-6 column3">
            //   <div class="card card-stats">
            //     <div class="card-header  card-header-primary card-header-icon">
            //       <div class="card-icon">
            //         <img src="../assets/img/Dashboard-main-page-images/js-brands.svg" alt="java" style=" height: 60px; width: 60px; ">
            //         </div>
            //         <a href="TestSelectPage.jsp" ><p class="card-category">JavaScript language</p></a>
            //       </div>
            //     </div>
            //   </div>
            var elem = document.getElementById('courseList');
            if(elem != null){
            	elem.parentNode.removeChild(elem);
            }
            //document.getElementById('profile').removeChild(document.getElementById('xyz'));

            for(i=0; i<(responseJson.length); i=i+3){
              var row  = document.createElement('div');
              row.className='row';
              row.id="courseList";
              for(j=i; j<i+3 && j<responseJson.length; j++){
                //alert("course : " + responseJson[j].courseId + "," + responseJson[j].courseName + "," + responseJson[j].iconLocation);
                var column = document.createElement('div');
                column.className='col-lg-3 col-md-6 col-sm-6 column3';
                var cardstats = document.createElement('div');
                cardstats.className='card card-stats';
                var cardheader = document.createElement('div');
                cardheader.className='card-header  card-header-primary card-header-icon';
                var cardicon = document.createElement('div');
                cardicon.className='card-icon';
                var image =document.createElement('img');
                image.setAttribute('src', responseJson[j].iconLocation);
                image.setAttribute('style', " height: 60px; width: 60px; ");
                image.setAttribute('alt',"java");
			    cardicon.appendChild(image);
				cardheader.appendChild(cardicon);
                var anchor = document.createElement('a');
                anchor.setAttribute('id', responseJson[j].courseId);
                
                var courseName =responseJson[j].courseName;
               
                var para = document.createElement('p');
                para.className='card-category';
                anchor.appendChild(para);
                
                if((studentCoursesCourseIdList!=null && studentCoursesCourseIdList.includes(responseJson[j].courseId))||
                        (studentGACoursesCourseIdList!=null && studentGACoursesCourseIdList.includes(responseJson[j].courseId))){
                   	//alert("Already Registered Course");
                   	anchor.removeAttribute('href');
                	para.textContent = courseName + '  Registered';
                } 
             	else{
             		//alert("Course not registered");
             		para.textContent=courseName;
             		anchor.setAttribute('href', "#");
             		anchor.setAttribute('onclick',"displayRegistrationForm(this.id,'" +  courseName + "',"+ streamId +" )");
             	}
                cardheader.appendChild(anchor);
                cardstats.appendChild(cardheader);
                column.appendChild(cardstats);
                row.appendChild(column);
              }
                document.getElementById('profile').appendChild(row);
            }
            document.getElementById('profile').style.display = "block";
            document.getElementById('registration').style.display="none";
          },
          error: function(){
            alert("Error");
            //document.getElementById("error").innerHTML = "Invalid email or password";
          }


        });
      }
      function displayRegistrationForm(selectedCourseId, selectedCourseName, selectedStreamId){
    	  courseId = selectedCourseId;
    	  streamId = selectedStreamId;
    	  courseName = selectedCourseName;
    	  //alert("Register for the course " + courseName);
    	  document.getElementById('profile').style.display = "none";
    	  document.getElementById('courseName').innerHTML="Registration for " + courseName + " Course";
    	  document.getElementById('registration').style.display = "block";
      }
      function submitCourseRegistration(){
    	  //alert("" + courseId + " " + streamId + " " + courseName + " " + courseTypeId );
    	  var myData = {
    	          streamId: streamId,
    	          courseTypeId: courseTypeId,
    	          courseId: courseId,
    	          courseName: courseName
    	        };
				
    	  var feeStatus = 'PAID'; 
    		  
    	        $.ajax({
    	          type: 'POST',
    	          url: '/OnlineEvaluationSystem/CommonController?action=CourseRegistrationServlet&feeStatus=' + feeStatus,
    	          data: JSON.stringify(myData),
    	          dataType: 'json',
    	          contentType: 'application/json; charset=utf-8',
    	          traditional: true,
    	          success: function (jsonObj) {

    	            var responseJson1 = jsonObj[0];
    	            var locationJson = eval('(' + responseJson1 + ')');

    	            var responseJson2=jsonObj[1];
    	            var responseJson3=jsonObj[2];
    	            
    	            var studCourseDetailsJSON = JSON.stringify(responseJson2);
    	            var studGACourseDetailsJSON = JSON.stringify(responseJson3);
    	            var courseTypeJSON = JSON.stringify(courseTypesList);
    	            var streamJSON = JSON.stringify(streamList);
    	            
    	            //window.location.href = locationJson.location;
    	          // window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) + "&username=" + "Anjali" +"&password=" + "Anjali";
    	            window.location.href = locationJson.location + "?varid=" + encodeURIComponent(streamJSON) + encodeURIComponent(courseTypeJSON)+ encodeURIComponent(studCourseDetailsJSON) + encodeURIComponent(studGACourseDetailsJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";
    	          },
    	          error: function(){
    	            alert("Error");
    	           // document.getElementById("error").innerHTML = "Invalid email or password";
    	          }


    	        });
      }
      function displayTestSelect(courseId, courseName){
        //alert("DisplayTestSelect Id = " + courseId);
        //var streamId = 1;
        //var courseTypeId = courseTypeId;
        var courseId = courseId;
        //alert(courseName);
        var myData = {
          streamId: streamId,
          courseTypeId: courseTypeId,
          courseId: courseId,
          courseName: courseName
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
              //alert("Test : " + responseJson2[i].evaluationTypeName + "," + responseJson2[i].courseName);
            }
            //window.location.href = locationJson.location;
            window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) + "&username=" + "Anjali" +"&password=" + "Anjali";
          },
          error: function(){
            alert("Error");
           // document.getElementById("error").innerHTML = "Invalid email or password";
          }


        });
      }
      </script>
    </body>
  </html>
