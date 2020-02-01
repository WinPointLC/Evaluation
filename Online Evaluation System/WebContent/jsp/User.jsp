<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
      <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
          Student Dashboard
        </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
          <!-- CSS Files -->
          <link href="../assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
          <link href="../MaterialKitHomePage/assets/css/material-kit.css?v=2.0.5" rel="stylesheet" />
          <link rel="stylesheet" href="../css/User.css">

            <script>
            <c:import url="/SignUpServlet" />
            <c:set var="securityQuestions" value="${requestScope.securityQuestionsList}" />
            </script>

            <script>

            <c:set var="userCategories" value="${requestScope.userCategoryList}" />
            </script>
          </head>

          <body>
            <%-- <div class="wrapper "> --%>

            <%-- <div class="main-panel"> --%>

            <div class="content">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-8">
                    <div class="card">
                      <div class="card-header card-header-primary">
                        <h4 class="card-title">Edit Profile</h4>
                        <p class="card-category">Complete your profile</p>
                        <h4 style="float:left;">UserId:&nbsp </h4><h4 id="userid"></h4>
                        <input type="hidden" id="hiddenUserId"></input>
                      </div>
                      <div class="card-body">
                        <form>
                          <div class="row">
                            <!-- <div class="col-md-3">
                            <div class="form-group">
                            <label>User Name</label>
                            <input type="text" class="form-control" id="userName">
                          </div>
                        </div> -->
                        <div class="col-md-4">
                          <div class="form-group">
                            <label>Email address</label>
                            <input type="email" class="form-control"  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="email">
                            </div>
                          </div>
                          <div class="col-md-4">
                            <div class="form-group">
                              <label>Mobile No:</label>
                              <input type="number" class="form-control"  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="mobileNumber">
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-3">
                              <div class="form-group">
                                <label>Fist Name</label>
                                <input type="text" class="form-control "  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="firstName">
                                </div>
                              </div>
                              <div class="col-md-3">
                                <div class="form-group">
                                  <label>Last Name</label>
                                  <input type="text" class="form-control "  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="lastName">
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label>College Name</label>
                                    <input type="text" class="form-control "  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="college">
                                    </div>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col-md-4">
                                    <div class="form-group">
                                      <label>Degree</label>
                                      <input type="text" class="form-control "  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="degree">
                                      </div>
                                    </div>
                                    <div class="col-md-4">
                                      <div class="form-group">
                                        <label>Year of Graduation</label>
                                        <input type="number" class="form-control "  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="yearOfGraduation">
                                        </div>
                                      </div>
                                      <div class="col-md-3">
                                        <div class="form-group">
                                          <label>Branch</label>
                                          <input type="text" class="form-control "  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="branch">
                                          </div>
                                        </div>
                                        <div class="col-md-12">
                                          <div class="form-group">
                                            <label>Adress</label>
                                            <input type="text" class="form-control "  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="address">
                                            </div>
                                          </div>
                                        </div>
                                        <!--
                                        <div class="row">
                                        <div class="col-md-4">
                                        <div class="form-group">
                                        <label>City</label>
                                        <input type="text" class="form-control" id="city">
                                      </div>
                                    </div>
                                    <div class="col-md-4">
                                    <div class="form-group">
                                    <label>Country</label>
                                    <input type="text" class="form-control" id="Country">
                                  </div>
                                </div>
                                <div class="col-md-4">
                                <div class="form-group has-default bmd-form-group">
                                <label>Postal Code</label>
                                <input type="text" class="form-control" id="postal">
                              </div>
                            </div>
                          </div>
                        -->
                        <div class="row">
                          <div class="col-md-4">
                            <div class="form-group">
                              <label>Password</label>
                              <input type="password" class="form-control textf" id="password">
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-group">
                                <label>Security Question</label>
                                <select class="form-control" id="securityQuestion" required>
                                  <option id="securityQuestionOption">Security Question</option>
                                </select>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="form-group">
                                <label>Security Answer</label>
                                <input type="text" class="form-control "  onfocus="if(this.value == 'undefined') { this.value = ''; }" id="secanswer">
                                </div>
                              </div>
                              <!--   <div class="col-md-12">
                              <div class="form-group">
                              <label>About Me</label>
                              <div class="form-group">
                              <label></label>
                              <textarea class="form-control" rows="5" id="aboutme"></textarea>
                            </div>
                          </div>
                        </div> -->
                      </div>
                      <button type="submit" class="btn btn-primary pull-right" onclick="saveUserProfile()">Save Profile</button>
                      <div class="clearfix"></div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card card-profile">
                  <div class="card-avatar">
                    <a href="#pablo">
                      <img id="uploadPreview" style="width: 100px; height: 100px;" />
                    </a>
                  </div>
                  <div class="choosefile">
                    <input id="uploadImage" type="file" name="myPhoto" onchange="PreviewImage();" />
                  </div>
                  <div class="card-body">
                    <h6 class="card-category text-gray">Student</h6>
                    <h4 class="card-title" id="studProfileName"></h4>
                    <p class="card-description" id="profileDesc"></p>
                    <!--  <a href="#pablo" class="btn btn-primary btn-round">Save</a> -->
                  </div>
                </div>
              </div>
            </div>
            <%-- </div> --%>
            <%-- </div> --%>

          </div>
        </div>

        <!--   Core JS Files   -->
        <script src="../assets/js/core/jquery.min.js"></script>
        <script src="../assets/js/core/popper.min.js"></script>
        <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
        <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!-- Plugin for the momentJs  -->
        <script src="../assets/js/plugins/moment.min.js"></script>
        <!--  Plugin for Sweet Alert -->
        <script src="../assets/js/plugins/sweetalert2.js"></script>
        <!-- Forms Validations Plugin -->
        <script src="../assets/js/plugins/jquery.validate.min.js"></script>
        <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
        <script src="../assets/js/plugins/jquery.bootstrap-wizard.js"></script>
        <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
        <script src="../assets/js/plugins/bootstrap-selectpicker.js"></script>
        <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
        <script src="../assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
        <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
        <script src="../assets/js/plugins/jquery.dataTables.min.js"></script>
        <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
        <script src="../assets/js/plugins/bootstrap-tagsinput.js"></script>
        <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
        <script src="../assets/js/plugins/jasny-bootstrap.min.js"></script>
        <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
        <script src="../assets/js/plugins/fullcalendar.min.js"></script>
        <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
        <script src="../assets/js/plugins/jquery-jvectormap.js"></script>
        <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
        <script src="../assets/js/plugins/nouislider.min.js"></script>
        <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
        <!-- Library for adding dinamically elements -->
        <script src="../assets/js/plugins/arrive.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!-- Chartist JS -->
        <script src="../assets/js/plugins/chartist.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="../assets/js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="../assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
        <!-- Material Dashboard DEMO methods, don't include it in your project! -->
        <script src="../assets/demo/demo.js"></script>
        <script>

        function PreviewImage() {
          var oFReader = new FileReader();
          oFReader.readAsDataURL(document.getElementById('uploadImage').files[0]);
          oFReader.onload = function (oFREvent) {
            document.getElementById('uploadPreview').src = oFREvent.target.result;
          }
        }
        function camelCase(str) {
          return str.replace(/(?:^\w|[A-Z]|\b\w)/g, function(word, index)
          {
            return index == 0 ? word.toLowerCase() : word.toUpperCase();
          }).replace(/\s+/g, '');
        }
        function saveUserProfile(){

          var userId = document.getElementById('hiddenUserId').value;

          var firstName = document.getElementById("firstName").value;
          var lastName = document.getElementById("lastName").value;
          var email = document.getElementById('email').value;
          var mobileNumber = document.getElementById("mobileNumber").value;
          var address = document.getElementById('address').value;
          var college = document.getElementById("college").value;
          var degree = document.getElementById('degree').value;
          var yearOfGraduation = document.getElementById('yearOfGraduation').value//new Date(document.getElementById('yearOfGraduation').value);
          var branch = document.getElementById('branch').value;
          var photoLocation = document.getElementById('uploadPreview').src;
          var password = document.getElementById("password").value;
          // var secquestionId = document.getElementById('securityQuestion').value;

           var secquestionTxt = document.getElementById('securityQuestion').value;
           var secquestionId;
          <c:forEach var="secQuestion" items= "${securityQuestions}" varStatus="i">
          if(secquestionTxt =='${secQuestion.securityQuestion}'){
            // document.getElementById('securityQuestionOption').textContent='${secQuestion.securityQuestion}';
             secquestionId = ${secQuestion.securityQuestionId};
          }
          </c:forEach>

          alert("secquestionId:"+secquestionId);

          var secanswer = document.getElementById('secanswer').value;

          /*** Following fields need to be removed from the form */

          /* var userName = document.getElementById('userName').value;
          var city = document.getElementById('city').value;
          var country = document.getElementById('country').value;
          var aboutMe = document.getElementById("aboutme").value; */
          /*************************************/

          /*** Following fields need to be added in the form */
          var birthDate = " ";//document.getElementById("birthDate,").value;
          var userCategoryId = "1";//document.getElementById("userCategoryId,").value;
          var occupation = "Student";//document.getElementById("occupation").value;
          var organisation = " ";//document.getElementById("organisation").value;
          var designation = " ";//document.getElementById("designation").value;
          var domain = " ";//document.getElementById("domain").value;
          var role = " ";//document.getElementById("role").value;
          var experience = "1";//document.getElementById("experience").value;
          var gender = " ";
          /*************************************/
          //alert("After setting variables");

          var userProfileData = {
            userId:userId,
            // userName: userName,
            firstName: firstName,
            lastName: lastName,
            email: email,
            mobileNumber: mobileNumber,
            address: address,
            //birthDate: birthDate,
            college: college,
            degree: degree,
            branch: branch,
            yearOfGraduation: yearOfGraduation,
            photoLocation: photoLocation,
            password: password,
            gender:gender,
            securityQuestionId:secquestionId,
            securityAnswer: secanswer,
            userCategoryId: userCategoryId,
            occupation: occupation,
            organisation: organisation,
            designation: designation,
            domain: domain,
            role: role,
            experience: experience
          };
          //alert("UserProfileData = " + userProfileData);
          $.ajax({
            type: 'POST',
            url: '/OnlineEvaluationSystem/CommonController?action=UserProfileServlet',
            data: JSON.stringify(userProfileData),
            dataType: 'json',
            contentType: 'application/json; charset=utf-8',
            traditional: true,
            success: function (jsonObj) {
              alert("Successfully updated");
              var responseJson1=jsonObj[0];
              var locationJson = eval('(' + responseJson1 + ')');
              var userProfileJSON = JSON.stringify(userProfileData);
              //alert(userProfileJSON);
              alert("locationJson :"+locationJson.location);
              window.location.href = locationJson.location + "?varid=" + encodeURIComponent(userProfileJSON) + "&username=" + "Anjali" +"&password=" + "Anjali";
            },
            error: function(){
              alert("Error");
            }
          });
        }

        $(document).ready(function() {
          var searchString = window.location.search.substring(1);
          var arr = searchString.split('&');
          var data= arr[0].split('=')[1];
          var userProfile = decodeURIComponent(data);
          var userProfile1 =  eval('(' + userProfile + ')');
          //alert("Client is " + userProfile1.userId + ":" + userProfile1.photoLocation+ " " + userProfile1.lastName);
          //alert(userProfile1);
          userId = userProfile1.userId;
          var photoLocation = userProfile1.photoLocation;
          //document.getElementById("studProfileName").innerHTML = camelCase(userProfile1.firstName) + " " + camelCase(userProfile1.lastName);
          document.getElementById('hiddenUserId').value = userProfile1.userId;
          document.getElementById("studProfileName").innerHTML = userProfile1.firstName.toUpperCase() + " " + userProfile1.lastName.toUpperCase();
          document.getElementById("profileDesc").innerHTML = "Hello, I am " + userProfile1.firstName.toUpperCase() + " " + userProfile1.lastName.toUpperCase() +
          " from " + userProfile1.college;
          document.getElementById('uploadPreview').src = userProfile1.photoLocation;
          // document.getElementById('userName').value=userProfile1.userName;
          document.getElementById('email').value=userProfile1.email;
          document.getElementById('degree').value=userProfile1.degree;
          document.getElementById('yearOfGraduation').value=userProfile1.yearOfGraduation;
          document.getElementById('branch').value=userProfile1.branch;
          document.getElementById('address').value=userProfile1.address;
          //document.getElementById('city').value=userProfile1.City;

          // document.getElementById('securityQuestionOption').value=userProfile1.securityQuestionId;
          var secID = userProfile1.securityQuestionId;
          <c:forEach var="secQuestion" items= "${securityQuestions}" varStatus="i">
          if(secID == ${secQuestion.securityQuestionId}){
            document.getElementById('securityQuestionOption').textContent='${secQuestion.securityQuestion}';
          }
          </c:forEach>

          var selectVar = document.getElementById('securityQuestion');
          <c:forEach var="securityQuestion" items= "${securityQuestions}" varStatus="i">
          var option = document.createElement('option');
          option.textContent = "${securityQuestion.securityQuestion}";
          option.value=${securityQuestion.securityQuestionId};
          selectVar.appendChild(option);
          </c:forEach>

          document.getElementById('secanswer').value=userProfile1.securityAnswer;

          document.getElementById("firstName").value = userProfile1.firstName;
          document.getElementById("lastName").value = userProfile1.lastName;
          document.getElementById("mobileNumber").value = userProfile1.mobileNumber;
          document.getElementById("password").value =userProfile1.password;
          document.getElementById("college").value =userProfile1.college;
          document.getElementById('userid').textContent=userProfile1.userId;


          $().ready(function() {

            $sidebar = $('.sidebar');

            $sidebar_img_container = $sidebar.find('.sidebar-background');

            $full_page = $('.full-page');

            $sidebar_responsive = $('body > .navbar-collapse');

            window_width = $(window).width();

            fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

            if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
              if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                $('.fixed-plugin .dropdown').addClass('open');
              }

            }

            $('.fixed-plugin a').click(function(event) {
              // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
              if ($(this).hasClass('switch-trigger')) {
                if (event.stopPropagation) {
                  event.stopPropagation();
                } else if (window.event) {
                  window.event.cancelBubble = true;
                }
              }
            });

            $('.fixed-plugin .active-color span').click(function() {
              $full_page_background = $('.full-page-background');

              $(this).siblings().removeClass('active');
              $(this).addClass('active');

              var new_color = $(this).data('color');

              if ($sidebar.length != 0) {
                $sidebar.attr('data-color', new_color);
              }

              if ($full_page.length != 0) {
                $full_page.attr('filter-color', new_color);
              }

              if ($sidebar_responsive.length != 0) {
                $sidebar_responsive.attr('data-color', new_color);
              }
            });

            $('.fixed-plugin .background-color .badge').click(function() {
              $(this).siblings().removeClass('active');
              $(this).addClass('active');

              var new_color = $(this).data('background-color');

              if ($sidebar.length != 0) {
                $sidebar.attr('data-background-color', new_color);
              }
            });

            $('.fixed-plugin .img-holder').click(function() {
              $full_page_background = $('.full-page-background');

              $(this).parent('li').siblings().removeClass('active');
              $(this).parent('li').addClass('active');


              var new_image = $(this).find("img").attr('src');

              if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                $sidebar_img_container.fadeOut('fast', function() {
                  $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                  $sidebar_img_container.fadeIn('fast');
                });
              }

              if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                $full_page_background.fadeOut('fast', function() {
                  $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                  $full_page_background.fadeIn('fast');
                });
              }

              if ($('.switch-sidebar-image input:checked').length == 0) {
                var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              }

              if ($sidebar_responsive.length != 0) {
                $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
              }
            });

            $('.switch-sidebar-image input').change(function() {
              $full_page_background = $('.full-page-background');

              $input = $(this);

              if ($input.is(':checked')) {
                if ($sidebar_img_container.length != 0) {
                  $sidebar_img_container.fadeIn('fast');
                  $sidebar.attr('data-image', '#');
                }

                if ($full_page_background.length != 0) {
                  $full_page_background.fadeIn('fast');
                  $full_page.attr('data-image', '#');
                }

                background_image = true;
              } else {
                if ($sidebar_img_container.length != 0) {
                  $sidebar.removeAttr('data-image');
                  $sidebar_img_container.fadeOut('fast');
                }

                if ($full_page_background.length != 0) {
                  $full_page.removeAttr('data-image', '#');
                  $full_page_background.fadeOut('fast');
                }

                background_image = false;
              }
            });

            $('.switch-sidebar-mini input').change(function() {
              $body = $('body');

              $input = $(this);

              if (md.misc.sidebar_mini_active == true) {
                $('body').removeClass('sidebar-mini');
                md.misc.sidebar_mini_active = false;

                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

              } else {

                $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                setTimeout(function() {
                  $('body').addClass('sidebar-mini');

                  md.misc.sidebar_mini_active = true;
                }, 300);
              }

              // we simulate the window Resize so the charts will get updated in realtime.
              var simulateWindowResize = setInterval(function() {
                window.dispatchEvent(new Event('resize'));
              }, 180);

              // we stop the simulation of Window Resize after the animations are completed
              setTimeout(function() {
                clearInterval(simulateWindowResize);
              }, 1000);

            });

          });
        });
        </script>
      </body>

    </html>
