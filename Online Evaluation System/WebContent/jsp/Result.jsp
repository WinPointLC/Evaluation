<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <title>Result Page</title>

  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
  <link rel="stylesheet" href="../css/Result.css">
  <script src="https://cdn.anychart.com/releases/8.0.0/js/anychart-base.min.js"></script>

</head>
<body>
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

<script src="https://cdn.anychart.com/releases/v8/themes/dark_glamour.min.js"></script>
<script type="text/javascript">
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
</script>
</body>
</html>
