<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
      <title>Course Selection Page</title>
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
           // Code for adding tables dynamically
              var row1 = document.createElement('div');
              row1.className='row R1';
              column1 = document.createElement('div');
              column1.className='col-sm-12 col-md-12 col-lg-12';
              var cardheader1 = document.createElement('div');
              cardheader1.className='card-header heading';
              cardheader1.setAttribute('style',"background-color:rgb(6, 7, 102)");
              var courseheader = document.createElement('h3');
              courseheader.setAttribute('style', "margin-left:41%;font-family:sans-serif;text-transform:uppercase;color:#fff;");
              //var courseName =  arr[1].split('=')[1];
            // courseheader.textContent=courseName;
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
              selecttest.setAttribute('style',"margin-top:10%;");
              column2.appendChild(selecttest);
              row2.appendChild(column2);
              document.getElementById('main-container').appendChild(row2);

              //code for row3
              var row3 = document.createElement('div');
              row3.className='row R3';
              var tablecontainer = document.createElement('div');
              tablecontainer.className='container';
              tablecontainer.setAttribute('style', "overflow-y: scroll; height:250px;");
              var table = document.createElement('table');
              table.className='table table-hover';
              var thead = document.createElement('thead');
              var tr = document.createElement('tr');
              var th1 = document.createElement('th');

              th1.textContent="Test No";
              var th2 = document.createElement('th');
              th2.textContent="Test Name";
              var th3 = document.createElement('th');
              th3.textContent="Register";
              var th4 = document.createElement('th');
              th4.textContent="Start Test";
              tr.appendChild(th1);
              tr.appendChild(th2);
              tr.appendChild(th3);
              tr.appendChild(th4);
              thead.appendChild(tr);
              table.appendChild(thead);
              //tablecontainer.appendChild(table);
              //row3.appendChild(tablecontainer);
              // End of table head row of table

              // start of table body

              var tbody = document.createElement('tbody');


              var searchString = window.location.search.substring(1);
              var arr = searchString.split('&');
              var data= arr[0].split('=')[1];
              var testList = decodeURIComponent(data);

              //Start- Extract Tests List
              var tests = testList.substring(0, testList.indexOf(']')+1);
              var testsList = eval('(' + tests + ')');

              for(i=0; i<testsList.length; i++){
                // alert(testsList[i].evaluationTypeName + ":" + testsList[i].testFees);
                var tr2 = document.createElement('tr');
                var td1 = document.createElement('td');
                var td2 = document.createElement('td');
                var td3 = document.createElement('td');
                var td4 = document.createElement('td');
                td1.textContent=i+1;
                td2.textContent=testsList[i].evaluationTypeName;

                var anchort = document.createElement('a');
                anchort.setAttribute('href', "#");
                anchort.textContent="Register";
                anchort.setAttribute("href", "LoginForm.jsp");

                td3.appendChild(anchort);


                var ancdiv = document.createElement('div');
                ancdiv.className="col-md-5";
                var anchort2 = document.createElement('a');
                anchort2.setAttribute('href',"#");
                anchort2.setAttribute('id',testsList[i].testDetailId);
                anchort2.style.pointerEvents="none";
            	anchort2.style.cursor="default";
                anchort2.setAttribute('onclick',"displayRulesPage(this.id)");
                var ancbtn = document.createElement('button');
                ancbtn.setAttribute('style', "background-color: darkslateblue;");
                ancbtn.className='btn';
                ancbtn.setAttribute('type', "button");
                ancbtn.textContent="Go To Test";
                anchort2.appendChild(ancbtn);
                ancdiv.appendChild(anchort2);
                td4.appendChild(ancdiv);

                //alert(">>>>>>>" + testsList[i].feeStatus)
                if(testsList[i].feeStatus){
                //	alert("testsList[i].attempted  = " + testsList[i].attempted);
                	if(testsList[i].attempted){
                		anchort.style.pointerEvents="none";
                		anchort.style.cursor="default";
                		anchort2.removeAttribute('href');
                		anchort2.style.pointerEvents='none';
                		anchort2.style.cursor="default";
                		ancbtn.textContent="Attempted";
                	}
                	else{
                	    anchort.style.pointerEvents="none";
                		anchort.style.cursor="default";
                		anchort2.setAttribute('href',"#");
                		anchort2.style.pointerEvents='';
                		anchort2.style.cursor="default";
                	}
                }

                tr2.appendChild(td1);
                tr2.appendChild(td2);
                tr2.appendChild(td3);
                tr2.appendChild(td4);

                tbody.appendChild(tr2);
              }

              table.appendChild(tbody);
              tablecontainer.appendChild(table);
              row3.appendChild(tablecontainer);
              // $(document).ready(function(){
              document.getElementById('main-container').appendChild(row3);

              var courseName =  testsList[0].courseName;
              courseheader.textContent=courseName;

              //End- Extract Tests List
              //  });

              function displayRulesPage(testDetailId){
               // alert("displayTestSelect Id = " + testDetailId);
               // var testDetailId = 1;
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
                    /* for(i=0; i<responseJson2.length; i++){
                      alert("Rules : " + responseJson2[i].rulesId + "," + responseJson2[i].rulesDescription);
                    } */
                    
                    var questionJson = jsonObj[2];
                    var questionJSON = JSON.stringify(questionJson);

                    var testDetailsJson = jsonObj[3];
                    var testDetailsJSON = JSON.stringify(testDetailsJson);


                    //window.location.href = locationJson.location;
                    window.location.href = locationJson.location + "?varid=" + encodeURIComponent(strResJSON) + encodeURIComponent(questionJSON) + encodeURIComponent(testDetailsJSON) + "&courseName=" + courseName + "&username=" + "Anjali" +"&password=" + "Anjali";
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
