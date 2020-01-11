<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Admin Page
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <!-- <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" /> -->
  <link href="../MaterialKitHomePage/assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
  <link rel="stylesheet" href="../css/AdminPage.css">
</head>
<body>
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

  <!-- first script for Admin page Start  -->

  <!--<script type="text/javascript">
    // adding code for all components of dropdown
    // first for select Stream
    var Streamlist = ['Technical','SoftSkills','General Aptitude'];
    for (var i = 0; i < Streamlist.length; i++) {
      var anchor = document.createElement('a');
      anchor.className="dropdown-item";
      anchor.setAttribute('href', "#");
      anchor.textContent = Streamlist[i];
      document.getElementById('stream-dropdown').appendChild(anchor);
    }

    //Second For Course List
    var Coursetypelist = ['Modular','TBC','CRT'];
    for (var i = 0; i < Coursetypelist.length; i++) {
      var anchor2 = document.createElement('a');
      anchor2.className="dropdown-item";
      anchor2.setAttribute('href', "#");
      anchor2.textContent = Coursetypelist[i];
      document.getElementById('coursetype-dropdown').appendChild(anchor2);
    }

    //Third for Evaluation type
    var Evaluationlist = ['MCQ','Coding','Descriptive'];
    for (var i = 0; i < Evaluationlist.length; i++) {
      var anchor3 = document.createElement('a');
      anchor3.className="dropdown-item";
      anchor3.setAttribute('href', "#");
      anchor3.textContent = Evaluationlist[i];
      document.getElementById('Evaluation-dropdown').appendChild(anchor3);
    }

    //Fourth for Course list
    var Courselist = ['C','C++','Java','JavaScript','Database','DataStructures'];
    for (var i = 0; i < Courselist.length; i++) {
      var anchor4 = document.createElement('a');
      anchor4.className="dropdown-item";
      anchor4.setAttribute('href', "#");
      anchor4.textContent = Courselist[i];
      document.getElementById('course-dropdown').appendChild(anchor4);
    }

    //Fifth for Topics
    var TopicList = ['Basics','Functions','Operators','Input/output','pointers','FileHandling'];
    for (var i = 0; i < TopicList.length; i++) {
      var anchor5 = document.createElement('a');
      anchor5.className="dropdown-item";
      anchor5.setAttribute('href', "#");
      anchor5.textContent = TopicList[i];
      document.getElementById('topic-dropdown').appendChild(anchor5);
    }

    // Sixth for Difficulty level
    var DiffList = ['Easy ','Medium','Hard'];
    for (var i = 0; i < DiffList.length; i++) {
      var anchor6 = document.createElement('a');
      anchor6.className="dropdown-item";
      anchor6.setAttribute('href', "#");
      anchor6.textContent = DiffList[i];
      document.getElementById('diff-dropdown').appendChild(anchor6);
    }

//Adding Dynamic Option content

var optionArr = ['option1','option2','option3','option4'];
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
  formgroup.appendChild(input2);
  formgroup.appendChild(label2);
  col2.appendChild(formgroup);
  row.appendChild(col2);
  document.getElementById('inner-opt-content').appendChild(row);
}
  </script>-->
  <!-- first script for Admin page End  -->

  <!-- New Script for AdminPage Start -->
  <script type="text/javascript">

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
  </script>
  <script type="text/javascript">

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
  <!-- New Script for AdminPage End -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="../assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
</body>
</html>
