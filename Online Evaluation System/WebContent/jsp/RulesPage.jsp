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
            <link rel="stylesheet" href="../css/RulesPage2.css">
              <script>
              var searchString = window.location.search.substring(1);
              var arr = searchString.split('&');
              //alert(arr);
              var data= arr[0].split('=')[1];
              var decodedData = decodeURIComponent(data);
              //alert("decodedData RulesPage = " + decodedData);
              //Start- Extract Rules List
              var rules = decodedData.substring(0, decodedData.indexOf(']')+1);

              var rulesList = eval('(' + rules + ')');
              // alert("Rules List = " + rulesList);

              var questions = decodedData.substring(decodedData.indexOf(']')+1, decodedData.lastIndexOf(']')+1);
              var questionsList = eval('(' + questions + ')');
              /* for(i=0; i<questionsList.length; i++){
              alert("Question : " + questionsList[i].questionId + "," + questionsList[i].question);

            } */
            var testDetail = decodedData.substring(decodedData.lastIndexOf(']')+1, decodedData.length);
            var testDetail = eval('(' + testDetail + ')');
            //alert("*******" + testDetail.testDetailId);
            // var arr2 = ['Modular','TBC','CRT'];
            var courseName = arr[1].split('=')[1];
            courseName = courseName.replace("%20", " ");
            //courseName= eval('(' + courseName + ')');



            var strResJSON = JSON.stringify(questionsList);
            alert(strResJSON);

            var encdata = encodeURIComponent(strResJSON) + "&courseName=" + courseName + "&username=" + "Anjali" +"&password=" + "Anjali";
            alert("encodeddata is:"+encdata);
            var link="OesQuestionPage.jsp";
            </script>
            <script type="text/javascript">

            var popupWindow=null;

            function child_open()
            {

              popupWindow =window.open(link+"?varid="+encdata,"_blank","directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=1500, height=766");

            }
            function parent_disable() {
              if(popupWindow && !popupWindow.closed)
              popupWindow.focus();
            }
            function clickAndDisable(link) {
              // disable subsequent clicks
              link.onclick = function(event) {
                event.preventDefault();
              }
            }
            </script>
          </head>
          <body onFocus="parent_disable();" onclick="parent_disable();">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                  <div class="Rule-content-1">
                    <div class="card card-plain">
                      <div class="card card-header card-header-primary">
                        <h3 class="card-title text-align mr-auto ml-auto" id="rules">Rules</h3>
                        <p class="card-category text-align mr-auto ml-auto">Read the Rules carefully</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Row 2 -->
              <div class="row">
                <div class="col-sm-12 col-md-12 col-lg-12">
                  <div class="Rule-content-2">
                    <div class="card-body" id="rules-content">

                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
                <div class="col-sm-1 col-md-2 col-lg-2 c3">
                  <div class="start-test-btn">
                    <%-- <a href="javascript:child_open()" onclick="displayQuestionPage()"><button class="btn btn-primary btn-block">Start Test</button></a> --%>
                    <a href="javascript:child_open()" onclick="clickAndDisable(this);"><button class="btn btn-primary btn-block">Start Test</button></a>
                  </div>
                </div>
              </div>
            </div>
            <script>

            for(i=0; i<rulesList.length; i++){
              //alert("Rules : " + rulesList[i].rulesId + "," + rulesList[i].rulesDescription);
              var par = document.createElement('p');
              par.textContent=i+1+". "+ rulesList[i].rulesDescription;
              document.getElementById('rules-content').appendChild(par);
            }

            document.getElementById("rules").textContent = "Rules: " + courseName;



            //   var searchString = window.location.search.substring(1);
            //   var arr = searchString.split('&');
            //   //alert(arr);
            //   var data= arr[0].split('=')[1];
            //   var decodedData = decodeURIComponent(data);
            //   //alert("decodedData RulesPage = " + decodedData);
            //   //Start- Extract Rules List
            //   var rules = decodedData.substring(0, decodedData.indexOf(']')+1);
            //
            //   var rulesList = eval('(' + rules + ')');
            //   // alert("Rules List = " + rulesList);
            //   for(i=0; i<rulesList.length; i++){
            //     //alert("Rules : " + rulesList[i].rulesId + "," + rulesList[i].rulesDescription);
            //     var par = document.createElement('p');
            //     par.textContent=i+1+". "+ rulesList[i].rulesDescription;
            //     document.getElementById('rules-content').appendChild(par);
            //   }
            //   var questions = decodedData.substring(decodedData.indexOf(']')+1, decodedData.lastIndexOf(']')+1);
            //   var questionsList = eval('(' + questions + ')');
            //   /* for(i=0; i<questionsList.length; i++){
            //   alert("Question : " + questionsList[i].questionId + "," + questionsList[i].question);
            //
            // } */
            // var testDetail = decodedData.substring(decodedData.lastIndexOf(']')+1, decodedData.length);
            // var testDetail = eval('(' + testDetail + ')');
            // //alert("*******" + testDetail.testDetailId);
            // // var arr2 = ['Modular','TBC','CRT'];
            // var courseName = arr[1].split('=')[1];
            // courseName = courseName.replace("%20", " ");
            // //courseName= eval('(' + courseName + ')');
            //
            // document.getElementById("rules").textContent = "Rules: " + courseName;
            //
            //

            // function displayQuestionPage(){
            //   alert("In display");

            // document.getElementById('body').onfocus=function () {
            //   parent_disable();
            // };
            /* var emailVal = $("#email").val();
            var passwordVal = $("#password").val();
            //alert("email = " + emailVal + " : passwordVal = " + passwordVal);
            var myData = {

            email: emailVal,
            password: passwordVal
          };
          //alert("*** " + JSON.stringify(myData));
          //console.log(myData);
          $.ajax({
          type: 'POST',
          url: '/OnlineEvaluationSystem/CommonController?action=QuestionPaperServlet',
          data: JSON.stringify(myData),
          dataType: 'json',
          contentType: 'application/json; charset=utf-8',
          traditional: true,
          success: function (jsonObj) {
          //alert("Success from LoginForm");
          var responseJson1=jsonObj[0], responseJson2=jsonObj[1];
          var locationJson = eval('(' + responseJson1 + ')');
          //var studentJson = eval('(' + responseJson2 + ')');
          if (locationJson.success) {
          var strResJSON = JSON.stringify(responseJson2);
          //alert("studentEmail : " + responseJson2.email); */

          //window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) +"&username=" + "Anjali" +"&password=" + "Anjali";
          /* } else {
          $('#ajaxGetUserServletResponse').text(responseText);
        }
      },
      error: function(){
      //alert("Error");
      document.getElementById("error").innerHTML = "Invalid email or password";
    }

  }); */

  // var strResJSON = JSON.stringify(questionsList);
  // alert(strResJSON);


  //

  // //alert("source2 = " + source2);
  // var iframe_ele = document.getElementById("CourseRegistration-frame");
  // iframe_ele.src = iframe_ele.src + source;


  // window.location.href = "OesQuestionPage.jsp" + "?varid=" + encodeURIComponent(strResJSON) + "&courseName=" + courseName + "&username=" + "Anjali" +"&password=" + "Anjali";
  // }

  </script>
</body>
</html>
