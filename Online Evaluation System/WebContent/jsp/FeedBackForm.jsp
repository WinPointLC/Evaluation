<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8"/>
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <title>FeedBack Form</title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
  <!-- For Star Rating -->
  <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="../css/StarRating.css">
  <link rel="stylesheet" href="../css/FeedBackForm.css">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
  <div class="container-fluid">
    <div class="row main-row">
      <div class="col-md-8 main-col">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title">FeedBack Form</h4>
            <p class="card-category">Complete your FeedBack Form</p>
          </div>
          <div class="card-body">
            <form>
              <div class="row">
                <div class="col-md-3">
                  <div class="form-group">
                    <label class="bmd-label-floating">Username</label>
                    <input type="text" class="form-control" id="username">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">Email address</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">Mobile No:</label>
                    <input type="number" class="form-control" id="mobileNumber">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label class="bmd-label-floating">Tell us how you feel while experiencing our System.</label>
                    <input type="text" class="form-control" id="TellUs" >
                  </div>
                </div>
              </div>
              <div class="row ">
                <div class="col-md-9">
                  <div class="form-group">
                    <label class="bmd-label-floating">How much you want to rate our Questions(in terms of difficulty)</label>
                  </div>
                  <div class="star">
                    <x-star-rating value="3" number="5"></x-star-rating>
                  </div>
                </div>
              </div>

              <button type="button" class="btn btn-primary pull-right" onclick="saveFeedback()">Save</button>
              <div class="clearfix"></div>
            </form>
          </div>
        </div>
      </div>

    </div>
  </div>

  <!-- <dialog id="myDialog">
    <div class="container-fluid">
      <div class="row main-row">
        <div class="col-sm-6 col-md-9 col-lg-9 col-xl-9" id="main-column">
          <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
              <div class="Rule-content-1">
                <div class="card card-plain">
                  <div class="card card-header card-header-primary">
                    <h3 class="card-title text-align mr-auto ml-auto">Result for Test Name</h3>

                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-8 col-md-8 col-lg-8 col-xl-8" id="result-header-card">
              <div class="card card-plain">
                <div class="card card-header card-header-success">
                  <h3 class="card-title text-align mr-auto ml-auto">Congratulations "Username" for Clearing Test Name</h3>
                </div>
              </div>
            </div>
          </div>
          <div class="row R3">
            <div class="col-sm-6 col-md-12 col-lg-12 col-xl-12 c2">
              <div class="Your-score">
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="card card-stats">
                    <div class="card-header card-header-icon">
                      <div class="card-heading">
                        <h6>C language</h6>
                      </div>
                      <div class="card-icon" style="font-size:20px;" id="row1-card1">
                        <i class="fa fa-copyright" style="font-size:70px;"></i>
                      </div>
                      <p class="card-category">You Score</p>
                      <h3 class="card-title">49/50
                      </h3>
                    </div>
                    <div class="card-footer result-footer" style="background-color: chartreuse;">
                      <div class="stats">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row ">
            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5 stats2">
              <div class="card card-stats">
                <div class="time">
                  <i class="material-icons">alarm</i>
                  <p>Time Taken:40 minutes</p>
                  <div class="border1"></div>
                </div>
                <div class="Attempted">
                  <i class="material-icons">done_all</i>
                  <p>Attempted Questions:50</p>
                  <div class="border2"></div>
                </div>
                <div class="Correct">
                  <i class="material-icons">check_circle</i>
                  <p>Correct:49</p>
                  <div class="border3"></div>
                </div>
                <div class="Wrong">
                  <i class="material-icons">cancel</i>
                  <p>Wrong Answer:1</p>
                  <div class="border4"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6" id="result-header-card2">
              <div class="card card-plain">
                <div class="card card-header card-header-info">
                  <h3 class="card-title text-align mr-auto ml-auto">Topicwise marks of Test Name</h3>
                </div>
              </div>
            </div>
          </div>
          <div class="row R4">

            <div class="col-sm-6 col-md-12 col-lg-12 col-xl-12" style="margin-left:20%;">

              <div id="graph" style="width: 50%; height: 250%"></div>

            </div>

          </div>
        </div>
      </div>
    </div>
  </dialog> -->

  <script src="../js/StarRating.js"></script>
  <script type="text/javascript">
  var searchString = window.location.search.substring(1);
  var data= searchString.split('=')[1];
  var resultJson = decodeURIComponent(data);
  var result =  eval('(' + resultJson + ')');
  //alert("result **** = " + result.courseName + result.marks + ' ' + result.totalMarks);
  function saveFeedback() {
	  //alert("clicked Save");
	  var feedback1 = 'hhahdhf';//$('#TellUs').val();
	  var rating = '5';
	  var myFeedback = {
			  feedback1: feedback1,
			  rating: rating
	  };
	  $.ajax({
		 	type: 'POST',
	        url: '/OnlineEvaluationSystem/CommonController?action=FeedbackServlet',
	        data: JSON.stringify(myFeedback),
	        dataType: 'json',
	        contentType: 'application/json; charset=utf-8',
	        traditional: true,
	        success: function (jsonObj) {
	          //alert("Success");
	          var responseJson1=jsonObj[0];
	          var locationJson = eval('(' + responseJson1 + ')');
	          //alert(locationJson.location);
	          //alert(locationJson.fistName);
	          var marksJSON = JSON.stringify(result);
	          window.location.href = locationJson.location + "?varid=" + encodeURIComponent(marksJSON) + "&firstName=" + locationJson.firstName +  "&lastName=" + locationJson.lastName ;
	        },
	        error: function(){
	          alert("Error");
	        }
	 
	      });
    //document.getElementById('ResultPage').showModal();
  }
  </script>
</body>
</html>
