<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
      <title>Course Selectio Page</title>
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
          <link rel="stylesheet" href="../assets/css/fontawesome.min.css">
            <!-- Material Kit CSS -->
            <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
            <link rel="stylesheet" href="../css/CourseSelectPage.css">
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
            </head>
            <body>
              <div class="container-fluid" id="main-container">

              </div>
              <script>
              // $(document).ready(function(){
              var searchString = window.location.search.substring(1);
              var arr = searchString.split('&');
              var data= arr[0].split('=')[1];
              var testList = decodeURIComponent(data);

              //Start- Extract Tests List
              var tests = testList.substring(0, testList.indexOf(']')+1);
              var testsList = eval('(' + tests + ')');

              // Code for adding tables dynamically
              var row1 = document.createElement('div');
              row1.className='row R1';
              column1 = document.createElement('div');
              column1.className='col-sm-12 col-md-12 col-lg-12';
              var cardheader1 = document.createElement('div');
              cardheader1.className='card-header heading';
              cardheader1.setAttribute('style',"background-color:rgb(6, 7, 102)");
              var courseheader = document.createElement('h3');
              courseheader.setAttribute('style', "#fff");
              cardheader1.appendChild(courseheader);
              column1.appendChild(cardheader1);
              row1.appendChild(column1);
              document.getElementById('main-container').appendChild(row1);
              // code for Row2

              var row2 = document.createElement('div');
              row2.className='row R2';
              var column2 = document.createElement('div');
              column2.className='col-md-3';
              var selecttest = document.createElement('button');
              selecttest.className='btn btn-primary btn-block';
              selecttest.setAttribute('type', "button");
              selecttest.setAttribute('name', "button");
              selecttest.textContent = 'Select a Test';
              column2.appendChild(selecttest);
              row2.appendChild(column2);
              document.getElementById('main-container').appendChild(row2);

              //code for row3

              var row3 = document.createElement('div');
              row3.className='row R3';
              var tablecontainer = document.createElement('div');
              tablecontainer.className='container';
              tablecontainer.setAttribute('style', "overflow-y: scroll; height:250px;");
              row3.appendChild(tablecontainer);
              var table = document.createElement('table');
              table.className='table table-hover';
              tablecontainer.appendChild(table);
              var thread1 = document.createElement('thread');
              tablecontainer.appendChild(thread1);
              var tr = document.createElement('tr');
              thread1.appendChild(tr);

              var th = document.createElement('th');

              th.textContent("Test No");
              th.textContent("Test Name");
              th.textContent("Register");
              th.textContent("Start Test");
              tr.appendChild(th);

              // End of table head row of table

              // start of table body
              var tbody = document.createElement('tbody');
              tablecontainer.appendChild(tbody);
              var tr2 = document.createElement('tr');
              tbody.appendChild(tr2);

              var td1 = document.createElement('td');
              var td2 = document.createElement('td');
              var td3 = document.createElement('td');
              var td4 = document.createElement('td');


              var ancdiv = document.createElement('div');
              ancdiv.className="col-md-5";
              var anchort2 = document.createElement('a');
              anchort2.setAttribute('href',"RulesPage.jsp");
              var ancbtn = document.createElement('button');
              ancbtn.setAttribute('style', "background-color: darkslateblue;");
              ancbtn.className='btn';
              ancbtn.setAttribute('type', "button");
              anchort2.appendChild(ancbtn);
              ancdiv.appendChild(anchort2);
              td4.appendChild(ancdiv);

              var td4 = document.createElement('td');
              var anchort = document.createElement('a');

              // var arr3 = ['MCQ','Coding','Descriptive'];
              // for (var i = 0; i < arr3.length; i++) {
              // td1.textContent="1";
              // td2.textContent=arr3[i];
              //
              // anchort.setAttribute('href', "#");
              // anchort.textContent="Register";
              // td3.appendChild(anchort);
              //
              // ancbtn.textContent="Go To Test";
              // }
              tr2.appendChild(td1);
              tr2.appendChild(td2);
              tr2.appendChild(td3);
              tr2.appendChild(td4);
              document.getElementById('main-container').appendChild(row3);

              for(i=0; i<testsList.length; i++){
                // alert(testsList[i].evaluationTypeName + ":" + testsList[i].testFees)
                td1.textContent="1";
                td2.textContent=arr3[i];

                anchort.setAttribute('href', "#");
                anchort.textContent="Register";
                td3.appendChild(anchort);

                ancbtn.textContent="Go To Test";

              }
              //End- Extract Tests List
              //  });

              function displayRulesPage(clicked_id){
                alert("displayTestSelect Id = " + clicked_id);
                var testDetailId = 1;
                var myData = {
                  testDetailId: testDetailId
                };

                $.ajax({
                  type: 'POST',
                  url: '/OnlineEvaluationSystem/CommonController?action=RulesServlet',
                  data: JSON.stringify(myData),
                  dataType: 'json',
                  contentType: 'application/json; charset=utf-8',
                  traditional: true,
                  success: function (jsonObj) {

                    var responseJson1 = jsonObj[0];
                    var locationJson = eval('(' + responseJson1 + ')');

                    var responseJson2=jsonObj[1];
                    var strResJSON = JSON.stringify(responseJson2);
                    for(i=0; i<responseJson2.length; i++){
                      alert("Rules : " + responseJson2[i].rulesId + "," + responseJson2[i].rulesDescription);
                    }
                    //window.location.href = locationJson.location;
                    window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) + "&username=" + "Anjali" +"&password=" + "Anjali";
                  },
                  error: function(){
                    //alert("Error");
                    document.getElementById("error").innerHTML = "Invalid email or password";
                  }


                });
              }
              </script>
            </body>
          </html>
