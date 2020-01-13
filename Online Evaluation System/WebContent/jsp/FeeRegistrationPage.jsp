<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

  <head>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css">
      <title>Employee Dashboard</title>
      <!-- Required meta tags -->
      <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <!--     Fonts and icons     -->

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
          <link rel="stylesheet" href="../assets/css/fontawesome.min.css">
            <!-- Material Kit CSS -->
            <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
            <!-- own CSS -->
            <link rel="stylesheet" href="../css/Dashboard.css">
              <link rel="stylesheet" href="../css/EmployeeDashboard.css">
                <script>
                <c:import url="/FeeDetailsServlet" />
                <c:set var="unpaidStudentsList" value="${requestScope.unpaidStudentsList}" />
                </script>
                <script>
                <c:import url="/FeeDetailsServlet" />
                <c:set var="unpaidStudentsList" value="${requestScope.unpaidStudentsList}" />
                </script>
              </head>

              <body>
                <!-- Fee Registration content -->
                <div class="container-fluid" id="fee-register-content">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="card card-plain">
                        <div class="card-header card-header-primary">
                          <h4 class="card-title mt-0">FEE REGISTRATION FOR USER</h4>
                        </div><br><br>

                        <div class="dropdown-section2">
                          <div class="search-container">
                            <form>
                              <input type="text" placeholder="Search a user..." name="search">
                                <button type="submit"><i class="fa fa-search"></i></button>
                              </form>
                            </div>
                          </div><br><br>

                          <div class="card-body">
                            <div class="table-responsive" id="table2">

                            </div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>
                  <script>
                  //--------------------- start of Fee register script----------------------------
                  //creating table dynamically

                  //function getFeeRegistrationPage(){
                  var table2 = document.createElement('table');
                  table2.className="table table-hover";
                  var thead2 = document.createElement('thead');
                  // var head = ['Sr.no','Username','Email','Address','Mobile No','Courses Done','Button1','Button2'];
                  var head2 = ['Username','Course','Fee of Course','Remaining Fees','Paid','REGISTRATION'];
                  for (var i = 0; i < head2.length; i++) {
                    var th2 = document.createElement('th');
                    th2.textContent = head2[i];
                    thead2.appendChild(th2);
                  }
                  table2.appendChild(thead2);
                  // var td0 = ['1','2']; var td1 = ['Sahil','Sanika']; var td2 = ['sahil@','sanika@'];
                  // var td3 = ['M.G. Road','M.A.Road']; var td4=[12,23]; var td5 = ['c','cpp','java']; var td6=['Analytics'];
                  // var students = {Srno:1, Username:"Sahil",Email:"sahi@",Address:"PICT",MobileNo:121,CoursesDone:"C,CPP"};

                  //------
                  // after the ajax call the data will be dumped here and then put the data in the html table (servlet call is GetFeeDetailsServlet)
                  //------



                  //var student = {
                  //   Username:"Sahil",Course:"C",Fee_Of_Course:4000,Remaining_Fees:0,Paid:"Paid",Registeration:"register link"
                  //};

                  </script>

                  <c:forEach var="unpaidStudent" items= "${unpaidStudentsList}" varStatus="i">

                    <script>

                    //creating Tbody
                    var tbody2 = document.createElement('tbody');
                    tbody2.setAttribute('id', "${unpaidStudent.userId}${unpaidStudent.courseId}");
                    var tr2 = document.createElement('tr');
                    var td02 = document.createElement('td');
                    td02.textContent = "${unpaidStudent.fisrtName}" + " " + "${unpaidStudent.lastName}"
                    var td12 = document.createElement('td');
                    td12.textContent = "${unpaidStudent.courseName}";
                    var td22 = document.createElement('td');
                    td22.textContent = "${unpaidStudent.fees}";
                    var td32 = document.createElement('td');
                    //Remove Hard coding
                    td32.textContent = 0;
                    var td42 = document.createElement('td');
                    var paidbtn = document.createElement('button');
                    paidbtn.textContent = "Paid";
                    paidbtn.setAttribute('onclick', "updateFeeStatus(${unpaidStudent.userId}, ${unpaidStudent.courseId})");
                    // td4.textContent = students.Paid;
                    td42.appendChild(paidbtn);

                    //creating Analytics and Result Button for all user.
                    var td62  = document.createElement('td');
                    var btn12 = document.createElement('button');
                    btn12.textContent ="Register";
                    td62.appendChild(btn12);

                    tr2.appendChild(td02);
                    tr2.appendChild(td12);
                    tr2.appendChild(td22);
                    tr2.appendChild(td32);
                    tr2.appendChild(td42);
                    tr2.appendChild(td62);



                    thead2.appendChild(th2);
                    tbody2.appendChild(tr2);
                    table2.appendChild(tbody2);

                    </script>
                  </c:forEach>
                  <script type="text/javascript">
                  document.getElementById('table2').appendChild(table2);
                  </script>
                  <script type="text/javascript">
                  function updateFeeStatus(userId, courseId){
                    var myData = {
                      userId: userId,
                      courseId: courseId
                    };

                    $.ajax({
                      type: 'POST',
                      url: '/OnlineEvaluationSystem/CommonController?action=FeeDetailsServlet',
                      data: JSON.stringify(myData),
                      dataType: 'json',
                      contentType: 'application/json; charset=utf-8',
                      traditional: true,
                      success: function (jsonObj) {
                        alert("success in updating the values");
                        document.getElementById(userId + '' + courseId).remove();
                      },
                      error: function(){
                        alert("Error in updating the fees");
                      }
                    });
                  }
                  </script>
                </body>
