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
          <%-- <link href="../assets/demo/demo.css" rel="stylesheet" /> --%>
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
                        <div class="card-body" id="card-body">
                          <!-- <form>
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

                          </form>-->
                        </div>

                      </div>
                    </div>

                  </div>
                </div>


                <script type="text/javascript">

                function saveFeedback() {

                  var userFeedback = [];
                  for(var i=0; i<feedbackQuestionsList.length; i++){
                	    console.log(i);
                	    var curStarRateElemVal = document.getElementById(feedbackQuestionsList[i].feedbackQuestionId).value;
                	    var feedback = {
                	    		feedbackQuestionId : feedbackQuestionsList[i].feedbackQuestionId,
                	    		response : curStarRateElemVal
                	    };
                	    userFeedback.push(feedback);
                	}

                  //alert(userFeedback[0].feedbackQuestionId + " " + userFeedback[0].response);

                  $.ajax({
                    type: 'POST',
                    url: '/OnlineEvaluationSystem/CommonController?action=FeedbackServlet',
                    data: JSON.stringify(userFeedback) + JSON.stringify(result),
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
              <script type="text/javascript">
              //code to make it dynamic
              //var FeedBackQuestion = ['Clarity of Question','Usability of UserInterface','Usability of Code Editor'];
              var searchString = window.location.search.substring(1);
                var data= searchString.split('=')[1];
                /* var resultJson = decodeURIComponent(data);
                var result =  eval('(' + resultJson + ')'); */
                var decodedData = decodeURIComponent(data);
                //alert(decodedData);
                //var stream_id = 0;

                //Start- Extract Resut
                var resultJson = decodedData.substring(0, decodedData.indexOf('}')+1);
                //alert(streams);
                var result = eval('(' + resultJson + ')');
                //alert("CourseId from FB Form " + result.courseId);
                //alert("result **** = " + result.numberOfCorrectAnswers + ' ' + result.numberOfAttempedQuestions + ' ' + result.numberOfTotalQuestions);

                var feedbackQuestionsListJson = decodedData.substring(decodedData.indexOf('}')+1, decodedData.length);
                var feedbackQuestionsList = eval('(' + feedbackQuestionsListJson + ')');
                //alert(feedbackQuestionsList);
                var form = document.createElement('form');
              for (var i = 0; i < feedbackQuestionsList.length; i++) {
                var row = document.createElement('div');
                row.className="row";
                var col = document.createElement('div');
                col.className="col-md-5";
                var formgroup = document.createElement('div');
                formgroup.className="form-group";
                var label = document.createElement('label');
                label.className="bmd-label-floating";
                label.textContent = feedbackQuestionsList[i].feedbackQuestion;
                formgroup.appendChild(label);
                col.appendChild(formgroup);
                row.appendChild(col);

                var col2 = document.createElement('div');
                col2.className="col-md-5";
                var star = document.createElement('div');
                star.className="star";
                var starrate =document.createElement('x-star-rating');
                starrate.setAttribute('value', 0);
                starrate.setAttribute('number', 5);
                starrate.id = feedbackQuestionsList[i].feedbackQuestionId;
                starrate.setAttribute('onclick', 'getStarRateValue(this.id)');
                star.appendChild(starrate);
                col2.appendChild(star);
                row.appendChild(col2);

                form.appendChild(row);
                document.getElementById('card-body').appendChild(form);
              }

                var row2 = document.createElement('div');
                row2.className="row";
                var aboutCol = document.createElement('div');
                aboutCol.className="col-md-12";
                var formgroup2=document.createElement('div');
                formgroup2.className="form-group";
                var label2 = document.createElement('label');
                label2.className="bmd-label-floating";
                label2.textContent = 'Additional Comments';
                var textarea=document.createElement('textarea');
                textarea.setAttribute('name', "TellUs");
                textarea.setAttribute('rows', 4);
                textarea.setAttribute('cols', 80);
                textarea.className="form-control";
                formgroup2.appendChild(label2);
                formgroup2.appendChild(textarea);
                aboutCol.appendChild(formgroup2);
                row2.appendChild(aboutCol);
                document.getElementById('card-body').appendChild(row2);


                var btn = document.createElement('button');
                btn.className="btn btn-primary pull-right";
                btn.setAttribute('type', "button");
                btn.setAttribute('onclick','saveFeedback()');
                btn.textContent = 'Save';
                document.getElementById('card-body').appendChild(btn);

				function getStarRateValue(starRateId){
				}
            </script>
            <script src="../js/StarRating.js"></script>
          </body>
        </html>
