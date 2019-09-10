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
                        <h3 class="card-title text-align mr-auto ml-auto">Result for Test Name</h3>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-sm-8 col-md-8 col-lg-11 col-xl-11" id="result-header-card" style="margin:auto;">
                  <div class="card card-plain">
                    <div class="card card-header card-header-success">
                      <h3 class="card-title text-align mr-auto ml-auto" id="congrats"></h3>
                    </div>
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
                          <p id="Time-Taken">Time Taken:40 minutes</p>
                          <div class="border1"></div>
                        </div>
                        <div class="Attempted">
                          <i class="material-icons">done_all</i>
                          <p id="Attempted-Questions">Attempted Questions:50</p>
                          <div class="border2"></div>
                        </div>
                        <div class="Correct">
                          <i class="material-icons">check_circle</i>
                          <p id="Correct-Answer">Correct:49</p>
                          <div class="border3"></div>
                        </div>
                        <div class="Wrong">
                          <i class="material-icons">cancel</i>
                          <p id="Wrong-Answer">Wrong Answer:1</p>
                          <div class="border4"></div>
                        </div>
                      </div>
                    </div>

                  </div>
                </div>
              </div>

              <!-- <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8" id="result-header-card2" style="margin:auto;">
                  <div class="card card-plain">
                    <div class="card card-header card-header-info">
                      <h3 class="card-title text-align mr-auto ml-auto">Topicwise marks of Test Name</h3>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row R4">
                <div class="col-sm-6 col-md-8 col-lg-12 col-xl-12">
                  <div id="graph" style="width: 50%; margin:auto; height: 250%"></div>
                </div>
              </div> -->

            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
  <!-- <script type="text/javascript">
  anychart.onDocumentReady(function() {
    var data = {
      header: ["Topic Name", "Marks"],
      rows: [
        ["Functions ", 20],
        ["Pointers", 4],
        ["Operators", 10],
        ["File Handling", 6],
        ["Basic Concept", 9]
      ]}
      var chart = anychart.bar();
      anychart.theme(anychart.themes.dark_glamour);
      chart.data(data);
      chart.title("Topicwise Marks");
      chart.container('graph');
      chart.draw();
    });
  </script> -->

  <script>

    var searchString = window.location.search.substring(1);
    var arr = searchString.split('&');
    var data= arr[0].split('=')[1];
    var resultJson = decodeURIComponent(data);
    var result =  eval('(' + resultJson + ')');
    var firstName = (arr[1].split('=')[1]).toUpperCase();
    var lastName = (arr[2].split('=')[1]).toUpperCase();
    //alert(result.courseName + result.marks + ' ' + result.totalMarks);
    document.getElementById('courseName').textContent = result.courseName;
    document.getElementById('score').textContent = result.marks + '/' + result.totalMarks;
    document.getElementById('congrats').textContent = 'Congratulations ' + firstName + " " + lastName + ' for Clearing the Test of ' + result.courseName;
  </script>
  <!--  End Modal -->
  <script src="../MaterialKitHomePage/assets/js/core/jquery.min.js" type="text/javascript"></script>
  <!-- <script src="./assets/js/core/popper.min.js" type="text/javascript"></script> -->
  <script src="../MaterialKitHomePage/assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <!-- <script src="https://cdn.anychart.com/releases/v8/themes/dark_glamour.min.js"></script> -->
  <!-- <script src="../js/Modal.js" charset="utf-8"></script> -->
</body>
</html>
