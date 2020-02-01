<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
      <link rel="icon" type="image/png" href="./assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
          Result Page
        </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
          <!-- CSS Files -->
          <link href="../MaterialKitHomePage/assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
          <link rel="stylesheet" href="../css/Result.css">
            <script src="https://cdn.anychart.com/releases/8.0.0/js/anychart-base.min.js"></script>
          </head>
          <body>
            <!-- Large modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">Click Here To get Result</button>

            <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="container-fluid">
                    <div class="row main-row">
                      <div class="col-sm-6 col-md-9 col-lg-12 col-xl-12" id="main-column" >
                        <div class="row">
                          <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                            <div class="Rule-content-1">
                              <div class="card card-plain">
                                <div class="card card-header card-header-primary">
                                  <h3 class="card-title text-align mr-auto ml-auto" id="resultHeading"></h3>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-sm-8 col-md-8 col-lg-11 col-xl-11" id="result-header-card" style="margin:auto;">
                            <div class="card card-plain" id="card-plain">
                              <!-- <div class="card card-heade4r card-header-success">
                              <h3 class="card-title text-align mr-auto ml-auto" id="congrats"></h3>
                            </div> -->
                          </div>
                        </div>
                      </div>
                      <div class="row R3">
                        <div class="col-sm-6 col-md-12 col-lg-12 col-xl-12">
                          <div class="Your-score">
                            <div class="col-sm-5 col-md-5 col-lg-5 col-xl-5 score">
                              <div class="card-header card-header-icon" style="background-color:ghostwhite;">
                                <div class="card-heading">
                                  <h6 id="courseName"></h6>
                                </div>
                                <div class="card-icon" style="font-size:20px;" id="row1-card1">
                                  <i class="fa fa-copyright" style="font-size:70px;"></i>
                                </div>
                                <p class="card-category">You Score</p>
                                <h3 class="card-title" id="score">
                                </h3>
                              </div>
                              <div class="card-footer result-footer" style="background-color: chartreuse;">
                                <div class="stats">
                                </div>
                              </div>
                            </div>

                            <div class="col-sm-5 col-md-7 col-lg-7 stats2">
                              <div class="card detail-card" style="background-color:rgb(255, 255, 255);">
                                <div class="time">
                                  <i class="material-icons">alarm</i>
                                  <!-- <p id="Time-Taken">Time Taken: <span id="Time"></span> </p> -->
                                  <p id="Time-Taken" style="color: rgb(0, 0, 255);">Time Taken: </p><p id="Time"> </p>
                                  <div class="border1"></div>
                                </div>
                                <div class="Attempted">
                                  <i class="material-icons">done_all</i>
                                  <p id="Attempted-Questions" style="color: rgb(0, 0, 255);">Attempted Questions: <span id="attemptQues" style="color: rgb(0, 0, 0);"></span> </p>
                                  <div class="border2"></div>
                                </div>
                                <div class="Correct">
                                  <i class="material-icons">check_circle</i>
                                  <p id="Correct-Answer" style="color: rgb(0, 0, 255);">Correct: <span id="correctAns" style="color: rgb(0, 0, 0);"></span> </p>
                                  <div class="border3"></div>
                                </div>
                                <div class="Wrong" >
                                  <i class="material-icons">cancel</i>
                                  <p id="Wrong-Answer" style="color: rgb(0, 0, 255);">Wrong Answer: <span id="wrongAns" style="color: rgb(0, 0, 0);"></span> </p>
                                  <div class="border4"></div>
                                </div>
                              </div>
                            </div>

                            <div class="back-to-dashboard">
                              <a href="javascript:close_window();"> Back to Dashboard </a>
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

          var carheader = document.createElement('div');
          carheader.className = "card card-header";
          carheader.id="card-header";
          var h3 = document.createElement('h3');
          h3.className = "card-title text-align mr-auto ml-auto";
          h3.id="congrats";
          carheader.appendChild(h3);
          document.getElementById('card-plain').appendChild(carheader);

          var searchString = window.location.search.substring(1);
          var arr = searchString.split('&');
          var data= arr[0].split('=')[1];
          var resultJson = decodeURIComponent(data);
          var result =  eval('(' + resultJson + ')');
          var firstName = (arr[1].split('=')[1]).toUpperCase();
          var lastName = (arr[2].split('=')[1]).toUpperCase();
          //alert(result.numberOfAttempedQuestions + ' ' + result.numberOfCorrectAnswers + ' ' + result.numberOfTotalQuestions);
          //Code for marks shown
          document.getElementById('resultHeading').textContent = 'Result for ' + result.courseName;
          var hrs = 0 - result.hours;
          var mins = 59 - result.minutes;
          var secs = 60 - result.seconds;
          var timevalue= hrs + "hrs " + mins + "mins " + secs + "secs";
          var attemptedQues= result.numberOfAttempedQuestions;//50;
          var correctAnswer = result.numberOfCorrectAnswers;//40;
          var wrongAnswer = attemptedQues - correctAnswer;//10;
          var timetaken = document.getElementById('Time');
          timetaken.textContent = timevalue;

          var attempted = document.getElementById('attemptQues');
          attempted.textContent = attemptedQues;
          var correctAns = document.getElementById('correctAns');
          correctAns.textContent = correctAnswer;
          var wrongAns = document.getElementById('wrongAns');
          wrongAns.textContent =wrongAnswer ;

          /* var searchString = window.location.search.substring(1);
          var arr = searchString.split('&');
          var data= arr[0].split('=')[1];
          var resultJson = decodeURIComponent(data);
          var result =  eval('(' + resultJson + ')');
          var firstName = (arr[1].split('=')[1]).toUpperCase();
          var lastName = (arr[2].split('=')[1]).toUpperCase(); */
          //alert(correctAnswer + ' ' + attemptedQues + ' ' + wrongAnswer);
          document.getElementById('courseName').textContent = result.courseName;
          document.getElementById('score').textContent = result.marks + '/' + result.totalMarks;
          // code for heading of congrats user

          if(result.marks > result.totalMarks/2){
            carheader.className="card card-header card-header-success";
            document.getElementById('congrats').textContent = 'Congratulations ' + firstName + " " + lastName + ' for Clearing the Test of ' + result.courseName;
          }
          else if (result.marks < result.totalMarks/2) {
            carheader.className="card card-header card-header-danger";
            document.getElementById('congrats').textContent = 'Sorry ' + firstName + " " + lastName + ' for Not Clearing the Test of ' + result.courseName;
          }
          function close_window() {
            if (confirm("Close Window?")) {
              close();
            }
          }

          </script>
          <!--  End Modal -->
          <script src="../MaterialKitHomePage/assets/js/core/jquery.min.js" type="text/javascript"></script>
          <script src="../MaterialKitHomePage/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
        </body>
      </html>
