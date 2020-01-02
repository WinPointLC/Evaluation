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
  </head>

  <body>
    <!-- All USer content -->
    <div class="container-fluid" id="all-user-content">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-plain">
            <div class="card-header card-header-primary">
              <h4 class="card-title mt-0">List of all user </h4>
            </div><br><br>
            <div class="dropdown-section">
              <select class="dropdown" onchange="dropfunct(this);">
                <option id="11">Modular</option>
                <option id="22">TBC</option>
                <option id="33">CRT</option>
              </select>
            </div><br><br>
            <div class="dropdown-section2">
              <select class="dropdown2" onchange="dropfunct(this);" id="dropdown2">

              </select>
            </div><br><br>

            <div class="card-body">
              <div class="table-responsive" id="table">
                <!-- <table class="table table-hover">
                  <thead>
                    <th>Sr.no:</th>
                    <th>
                      Username
                    </th>
                    <th>
                      Email
                    </th>
                    <th>
                      Address
                    </th>
                    <th>
                      Mobile No:
                    </th>
                    <th>
                      Courses Done
                    </th>
                    <th>
                      Click here for Scores
                    </th>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        1
                      </td>
                      <td>
                        Sahil Naphade
                      </td>
                      <td>
                        sahil@gmail.com
                      </td>
                      <td>
                        Katraj
                      </td>
                      <td>
                        9850896993
                      </td>
                      <td>
                        C,CPP,JS
                      </td>
                      <td>
                        <button class="btn btn-primary" type="button">See Scores</button>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        2
                      </td>
                      <td>
                        Sanika Gandhe
                      </td>
                      <td>
                        SanikaG@gmail.com
                      </td>
                      <td>
                        Sinhgad Road
                      </td>
                      <td>
                        9850896993
                      </td>
                      <td>
                        C,CPP,JAVA
                      </td>
                      <td>
                        <button class="btn btn-primary" type="button">See Scores</button>
                      </td>
                    </tr>
                    <tr>
                      <td>
                        6
                      </td>
                      <td>
                        Shrirang Mhalgi
                      </td>
                      <td>
                        Shri@gmail.com
                      </td>

                      <td>
                        BibeWadi
                      </td>
                      <td>
                        9850896993
                      </td>
                      <td>
                        C,CPP,DS,JAVA
                      </td>
                      <td>
                        <button class="btn btn-primary" type="button">See Scores</button>
                      </td>
                    </tr>
                  </tbody>
                </table>-->

              </div>
            </div>
          </div>
        </div>

      </div>
    </div>

    <!-- End of All USer content  -->
    <!-- Js for All user  -->
    <script type="text/javascript">
      //creating table dynamically
      var table = document.createElement('table');
      table.className="table table-hover";
      var thead = document.createElement('thead');
      var head = ['Sr.no','Username','Email','Address','Mobile No','Courses Done','Analytics'];
      for (var i = 0; i < head.length; i++) {
        var th = document.createElement('th');
        th.textContent = head[i];
        thead.appendChild(th);
      }
      table.appendChild(thead);

       var students = {
         Srno:1, Username:"Sahil",Email:"sahi@",Address:"PICT",MobileNo:121,CoursesDone:"C,CPP",Button1:"Go to analytics"
       };

      //creating Tbody
      var tbody = document.createElement('tbody');
      var tr = document.createElement('tr');
       var td0 = document.createElement('td');
       td0.textContent = students.Srno;
       var td1 = document.createElement('td');
       td1.textContent = students.Username;
       var td2 = document.createElement('td');
       td2.textContent = students.Email;
       var td3 = document.createElement('td');
       td3.textContent = students.Address;
       var td4 = document.createElement('td');
       td4.textContent = students.MobileNo;
       var td5 = document.createElement('td');
       td5.textContent = students.CoursesDone;
       //creating Analytics and Result Button for all user.
       var td6  = document.createElement('td');
       var btn1 = document.createElement('button');
       btn1.textContent =students.Button1;
       td6.appendChild(btn1);

       tr.appendChild(td0);
       tr.appendChild(td1);
       tr.appendChild(td2);
       tr.appendChild(td3);
       tr.appendChild(td4);
       tr.appendChild(td5);
       tr.appendChild(td6);


      thead.appendChild(th);
      tbody.appendChild(tr);
      table.appendChild(tbody);

      document.getElementById('table').appendChild(table);
</script>
  </body>
