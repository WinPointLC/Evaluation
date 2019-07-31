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

              <button type="submit" class="btn btn-primary pull-right">Save</button>
              <div class="clearfix"></div>
            </form>
          </div>
        </div>
      </div>

    </div>
  </div>
  <script src="../js/StarRating.js"></script>
</body>
</html>
