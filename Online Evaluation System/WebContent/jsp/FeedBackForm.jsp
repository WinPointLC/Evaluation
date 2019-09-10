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
      <div class="col-md-7 main-col">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title">FeedBack Form</h4>
            <p class="card-category">Complete your FeedBack Form</p>
          </div>
          <div class="card-body">
            <form>
              <div class="row ">
                <div class="col-md-5">
                  <div class="form-group" >
                    <label class="bmd-label-floating">Clarity of Questions</label>
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="star">
                    <x-star-rating value="3" number="5"></x-star-rating>
                  </div>
                </div>
              </div>
              <div class="row ">
                <div class="col-md-5">
                  <div class="form-group">
                    <label class="bmd-label-floating">Usability of Test Interface</label>
                  </div>

                </div>
                <div class="col-md-5">
                  <div class="star">
                    <x-star-rating value="3" number="5"></x-star-rating>
                  </div>
                </div>
              </div>
              <div class="row ">
                <div class="col-md-5">
                  <div class="form-group">
                    <label class="bmd-label-floating">Usability of Code Editor</label>
                  </div>
                </div>
                <div class="col-md-5">
                  <div class="star">
                    <x-star-rating value="3" number="5"></x-star-rating>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-md-12 ">
                  <div class="form-group">
                    <label class="bmd-label-floating">Additional Comments</label>
                    <textarea name="TellUs" rows="4" cols="80" class="form-control"></textarea>
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
