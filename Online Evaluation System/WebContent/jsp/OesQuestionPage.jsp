<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/OesQuestionPage.css">

  <script language="javascript">

  $(function () {
  	 $('#sub-btn').click(function() {
  		 alert("From submit button");
  	        callServlet();
  	  })
  	function callServlet() {

  	   var testname = $('#test-name').val();

  	   var questionno = $('#question-no').val();

  	   var questioncontent = $('question-content').val();
  	   //Options content
  	   var radio1=$('radio-1').val();
  	   var radio2=$('radio-2').val();
  	   var radio3=$('radio-3').val();
  	   var radio4=$('radio-4').val();

  	   //bottom-buttons section
  	   var previous = $('#prev').val();
  	   var review = $('#rev').val();
  	   var reset = $('#reset').val();
  	   var next =$('#next').val();

  	   //Clock data
  	   var hours = $('#hr').val();
  	   var minutes = $('#min').val();
  	   var seconds = $('#sec').val();
  	 	//button list data
  	 	var buttonR1 = $('#btn-r1').val();
  	 	var buttonR2 = $('#btn-r2').val();
  	 	var buttonR3 = $('#btn-r3').val();
  	 	var buttonR4 = $('#btn-r4').val();

  	 	//Question-info button color
  	 	var cbtn1 = $('#b1').val();
  	 	var cbtn2 = $('#b2').val();
  	 	var cbtn3 = $('#b3').val();

       	//submit btn
       	var submit = $('#sub-btn').val();


         var myData2 ={
                	   "test-name":"testname",
                	   "question-no":"questionno",
                	   "question-content":"questioncontent",
                	   "radio-1":"radio1",
                	   "radio-2":"radio2",
                	   "radio-3":"radio3",
                	   "radio-4":"radio4",

                	   "prev":"previous",
                	   "rev":"review",
                	   "reset":"reset",
                	   "next":"next",
                	   "hr":"hours",
                	   "min":"minutes",
                	   "sec":"seconds",
                	   "btn-r1":"buttonR1",
                	   "btn-r2":"buttonR2",
                	   "btn-r3":"buttonR3",
                	   "btn-r4":"buttonR4",
                	   "b1":"cbtn1",
                	   "b2":"cbtn2",
                	   "b3":"cbtn3",
                	   "sub-btn":"submit"
             };

         alert("**" + JSON.stringify(myData2));
         $.ajax({
             type: 'POST',
             url: '',
             data: JSON.stringify(myData2),
             dataType: 'json',
             contentType: 'application/json; charset=utf-8',
             traditional: true,

             success: function (jsonObj) {
          	   alert("Success");

             },
             error: function(){
             	alert("Error");
             }

         });
     }
    });
  </script>
</head>
<body>
<jsp : useBean id="" class=" ">

<div class="container-fluid main-frame">
      <div class="row main-frame2">
        <div class="col-sm-6 col-md-8 col-lg-12">
          <div class="outter-frame">
            <h4 id="test-name">Test Name</h4>
          </div>
        </div>
      </div>
        <div class="row main-row-frame">
          <div class="col-sm-6 col-lg-9 left-frame">
            <div class="inner-frame">
            <div class="content-frame1">
              <div class="question-frame1">
                <h4 id="question-no">Question No: 1</h4>
              </div>
              <div class="question-frame2">
                <h6 id="question-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</h6>
              </div>
              <div class="question-frame3">
                <!-- Radio buttons -->
                <form action="#">
                  <p>
                    <input type="radio" id="test1" name="radio-group" checked>
                    <label for="test1" id="radio-1" >Option 1</label>
                  </p>
                  <p>
                    <input type="radio" id="test2" name="radio-group">
                    <label for="test2" id="radio-2" >Option 2</label>
                  </p>
                  <p>
                    <input type="radio" id="test3" name="radio-group">
                    <label for="test3" id="radio-3" >Option 3</label>
                  </p>
                  <p>
                    <input type="radio" id="test4" name="radio-group">
                    <label for="test4" id="radio-4" >Option 4</label>
                  </p>
                </form>
                <!-- End Radio buttons  -->
                <!-- bottom buttons -->
                <div class="question-frame4">
                  <input type="button" class="btn btn-outline-info" name="previous" value="<--Previous" id="prev">
                  <input type="button" class="btn btn-outline-warning" name="review" value="Review" id="rev">
                  <input type="button" class="btn btn-outline-danger" name="save" value="Reset Question" id="reset">
                  <input type="button" class="btn btn-outline-info" name="next" value="Next-->" id="next">
                </div>
                <!-- End bottom buttons -->
              </div>
            </div>
          </div>
          </div>
          <div class="col-sm-3 col-md-3 col-lg-3 right-frame">
            <div class="content-frame2">
              <div class="clock">
                <div class="clock-header">
                  <h6>Time Left</h6>
                </div>
                <div class="clock-content">
                  <label id="hr">0 :</label>
                  <label id="min">40 :</label>
                  <label id="sec">50</label>
                </div>
              </div>
              <div class="question-frame5">
                <div class="button-list">
                  <div class="question-list">
                    <h6>Question list</h6>
                  </div>
                  <div class="button-row1" id="btn-r1" >
                    <button  class="btn btn-success" >1</button><button class="btn btn-primary" >2</button><button class="btn btn-warning" >3</button><button class="btn btn-outline-dark" >4</button><button class="btn btn-outline-dark" >5</button>
                  </div>
                  <div class="button-row2" id="btn-r2">
                    <button class="btn btn-outline-dark" >6</button><button class="btn btn-outline-dark" >7</button><button class="btn btn-outline-dark" >8</button><button class="btn btn-outline-dark" >9</button><button class="btn btn-outline-dark" >10</button>
                  </div>
                  <div class="button-row3" id="btn-r3">
                    <button class="btn btn-outline-dark" >11</button><button class="btn btn-outline-dark" >12</button><button class="btn btn-outline-dark" >13</button><button class="btn btn-outline-dark" >14</button><button class="btn btn-outline-dark" >15</button>
                  </div>
                  <div class="button-row4" id="btn-r4">
                    <button class="btn btn-outline-dark" >16</button><button class="btn btn-outline-dark" >17</button><button class="btn btn-outline-dark" >18</button><button class="btn btn-outline-dark" >19</button><button class="btn btn-outline-dark" >20</button>
                  </div>
                </div>
                <div class="question-info">
                  <div class="question-info-outter">
                    <h6>LEGEND</h6>
                  </div>
                  <button class="btn btn-success" id="b1"></button><label>Current Question which is saved</label>
                  <button class="btn btn-primary" id="b2"></button><label>Question visited but not attempted</label>
                  <button class="btn btn-warning" id="b3"></button><label>Marked question for review</label>
                </div>
                <div class="question-submit">
                  <button class="btn btn-danger text center" id="sub-btn"><i class="material-icons">lock</i>Finish Exam</button>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>

</body>
</html>
