<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Analytics Page
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../MaterialKitHomePage/assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
  <link rel="stylesheet" href="../css/Analytics.css">
</head>
<body>
  <div class="row main-row" >
    <div class="col-sm-6 col-md-12 col-lg-12 col-xl-12 main-col">

      <div class="row row-header-1">
        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 col-header-1">
          <div class="Rule-content-1">
            <div class="card card-plain">
              <div class="card card-header card-header-primary">
                <h3 class="card-title text-align mr-auto ml-auto">Analytics Section</h3>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row row-header-2">
        <div class="card card-plain">
          <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8 col-header-2" id="result-header-card2" style="margin:auto;">
            <div class="card card-header card-header-info">
              <h3 class="card-title text-align mr-auto ml-auto">Marks of all Evaluation</h3>
            </div>
          </div>
        </div>
      </div>
      <!-- Inner Header  -->
      <div class="row row-inheader-1">

          <div class="col-md-6 col-inheader-1">
            <div class="card card-plain">
            <div class="card card-header card-header-danger">
              <h3 class="card-title text-align mr-auto ml-auto">Technical Evaluation</h3>
            </div>
            </div>
        </div>
          <div class="col-md-6 col-inheader-1" >
            <div class="card card-plain">
            <div class="card card-header card-header-rose">
              <h3 class="card-title text-align mr-auto ml-auto">General Aptitude Evaluation</h3>
            </div>
          </div>
          </div>
      </div>
      <div class="row ">
        <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
          <div id="piechart" style="margin-left:10%;"></div>
        </div>
          <div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
          <div id="donutchart" style="margin-left:7%;"></div>
        </div>
      </div>


    </div>
  </div>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

  <script type="text/javascript">
    // Load google charts
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    // Draw the chart and set the chart values
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
      ['CourseName', 'Marks'],
      ['C', 13],
      ['C++', 25],
      ['Java', 20],
      ['JavaScript', 27],
      ['Database', 18]
      ]);

      // Optional; add a title and set the width and height of the chart
      var options = {'title':'Your Score in Previous Technical Evaluations', 'width':550, 'height':400};

      // Display the chart inside the <div> element with id="piechart"
      var chart = new google.visualization.PieChart(document.getElementById('piechart'));
      chart.draw(data, options);

      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['CourseName', 'Marks'],
          ['Quantitative Aptitude', 14],
          ['Logical Reasoning',  25],
          ['Verbal Reasoning', 16],
          ['Verbal Ability', 23]
        ]);

        var options = {
          title: 'Your Score in Previous General Aptitude Evaluations',
          pieHole: 0.4,
          'width':550,
          'height':400
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }

    }
  </script>

</body>
</html>
