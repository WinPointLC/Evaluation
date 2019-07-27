<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Rules Page</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/fontawesome.min.css">
    <!-- Material Kit CSS -->
    <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
    <link rel="stylesheet" href="../css/RulesPage.css">
  </head>
  <body>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
          <div class="Rule-content-1">
            <div class="card card-plain">
              <div class="card card-header card-header-primary">
                <h3 class="card-title text-align mr-auto ml-auto">Rules</h3>
                <p class="card-category text-align mr-auto ml-auto">Read the Rules carefully</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Row 2 -->
      <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
          <div class="RuleIframe">
          	<iframe src="RulesIframe.jsp" frameborder="0" ></iframe>
          </div>
        </div>
      </div>

        <div class="row">
        <div class="col-sm-2 col-md-2 col-lg-2 c3">
          <div class="start-test-btn">
            <a href="#" onclick="displayQuestionPage()"><button class="btn btn-primary btn-block">Start Test</button></a>
          </div>
        </div>
      </div>
    </div>
    <script>
    var searchString = window.location.search.substring(1);
    var arr = searchString.split('&');
    var data= arr[0].split('=')[1];
    var decodedData = decodeURIComponent(data);
	//alert("decodedData RulesPage = " + decodedData);
    //Start- Extract Rules List
    var rules = decodedData.substring(0, decodedData.indexOf(']')+1);
    var rulesList = eval('(' + rules + ')');
	//alert("Rules List = " + rulesList);
    for(i=0; i<rulesList.length; i++){
    	alert("Rules : " + rulesList[i].rulesId + "," + rulesList[i].rulesDescription);
    }
    var testDetail = decodedData.substring(decodedData.indexOf(']')+1, decodedData.length);
    var testDetail = eval('(' + testDetail + ')');
    alert("*******" + testDetail.testDetailId);
    // var arr2 = ['Modular','TBC','CRT'];
    
    function displayQuestionPage(){
    	window.location.href = "OesQuestionPage.jsp";
    }
    </script>
  </body>
</html>
