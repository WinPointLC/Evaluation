<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%-- <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
                    "http://www.w3.org/TR/html4/loose.dtd"> --%>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script>
  $(document).ready(function(){

   var out = false;
   $("body").mouseover(function(){
     out=false;
   }).mouseout(function(){
     out=true;
   });


   $(window).bind('beforeunload', function(e){
   if(out)
       {
         return "Do you really want to leave this page now?"
       }
   });

  });
  </script>

  <script language="javascript">
    var questionsList = null;
    var currentQuestion;
    var reviewFlag;
    var answerList = null;
    var isCorrect = null;
    var marks = 0;
    var totalMarks = 0;
    var courseId;
    var courseName;
    var numberOfTotalQuestions = 0;
	var numberOfAttempedQuestions = 0;
	var numberOfCorrectAnswers = 0;
	var attempted = null;
	$(function () {
      var searchString = window.location.search.substring(1);
      var arr = searchString.split('&');
      //alert(arr);
      var data= arr[0].split('=')[1];
      var decodedData = decodeURIComponent(data);
      // alert(decodedData);
      questionsList = eval('(' + decodedData + ')');
      numberOfTotalQuestions = questionsList.length;
      //alert(questionsList);
      answerList = new Array(questionsList.length);
      isCorrect = new Array(questionsList.length);
      reviewFlag = new Array(questionsList.length);
      attempted = new Array(questionsList.length);
       for(i=0; i<questionsList.length; i++){
          //alert("Question : " + questionsList[i].questionId + "," + questionsList[i].courseId);
    	   answerList[i] = 0;
    	   isCorrect[i] = 0;
    	   attempted[i] = 0;
        }
        courseName = arr[1].split('=')[1];
        courseId = questionsList[0].courseId;
        //alert("CourseId = " + courseId);
        document.getElementById("test-name").textContent = courseName + " Test"
        var start=0;
        //alert(questionsList.length/5);

      for(i=0; i<Math.floor(questionsList.length/5); i++){
      //alert("Question : " + questionsList[i].questionId + "," + questionsList[i].question);

      // creating dynamic button-list
        var btnrow = document.createElement('div');
        btnrow.className='button-row'+(i+1);
        btnrow.setAttribute('id', "btn-r"+(i+1));

        for (var j = start; (j <start+5) ; j++) {
          var btn = document.createElement('button');
          btn.className='btn btn-outline-dark';
          btn.setAttribute('id', ""+(j+1));
          btn.textContent = ""+(j+1);
          //btn.value =""+(j+1);
          //btn.setAttribute('style', 'color:#0000');
          btn.setAttribute('onclick', "goToQuestion(this.id)");
          btnrow.appendChild(btn);
        }
        start = j;
        document.getElementById('button-list').appendChild(btnrow);
      }

      var btnrow = document.createElement('div');
      btnrow.className='button-row'+(i+1);
      btnrow.setAttribute('id', "btn-r"+(i+1));
      for(var j=start; j<questionsList.length; j++){
    	  var btn = document.createElement('button');
          btn.className='btn btn-outline-dark';
          btn.setAttribute('id', ""+(j+1));
          btn.textContent = ""+(j+1);
          btn.setAttribute('onclick', "goToQuestion(this.id)");
          btnrow.appendChild(btn);
      }
      document.getElementById('button-list').appendChild(btnrow);

    currentQuestion=0;
    document.getElementById("question-no").innerHTML = "Question No: " + (currentQuestion+1);
    document.getElementById("question-content").innerHTML = questionsList[currentQuestion].question;
    document.getElementById("radio-1").innerHTML = questionsList[currentQuestion].option1;
    document.getElementById("radio-2").innerHTML = questionsList[currentQuestion].option2;
    document.getElementById("radio-3").innerHTML = questionsList[currentQuestion].option3;
    document.getElementById("radio-4").innerHTML = questionsList[currentQuestion].option4;

   // for(i=0; i<questionsList.length; i++){
    /* 	$('#'+3).click(function() {
    	 isCurrentAttempted(currentQuestion);
    	 questionNo = 3;
	  	  currentQuestion = questionNo-1;
	  	  //alert(questionsList);
   		document.getElementById("question-no").innerHTML = "Question No: " + questionNo;
   		document.getElementById("question-content").innerHTML = questionsList[questionNo-1].question;
   		document.getElementById("radio-1").innerHTML = questionsList[questionNo-1].option1;
  		 document.getElementById("radio-2").innerHTML = questionsList[questionNo-1].option2;
   		document.getElementById("radio-3").innerHTML = questionsList[questionNo-1].option3;
   		document.getElementById("radio-4").innerHTML = questionsList[questionNo-1].option4;

  	 var ele = document.getElementsByName("radio-group");
	  //alert("currentQuestion = " + currentQuestion + "answerList[currentQuestion] = " + answerList[currentQuestion]);
	  if(answerList[currentQuestion] !=0)
 	     ele[answerList[currentQuestion]].checked = true;
	  else
		  reset();

    });
 */   //}

    $('#next').click(function() {
      // alert("From Next button");
      //alert(currentQuestion);
      isCurrentAttempted(currentQuestion);
      //isCurrentAttempted();

      if(currentQuestion < questionsList.length-1){
    	  currentQuestion++;

      }
      //alert(currentQuestion);
      document.getElementById("question-no").innerHTML = "Question No: " + (currentQuestion+1);
      document.getElementById("question-content").innerHTML = questionsList[currentQuestion].question;
      document.getElementById("radio-1").innerHTML = questionsList[currentQuestion].option1;
      document.getElementById("radio-2").innerHTML = questionsList[currentQuestion].option2;
      document.getElementById("radio-3").innerHTML = questionsList[currentQuestion].option3;
      document.getElementById("radio-4").innerHTML = questionsList[currentQuestion].option4;

      var ele = document.getElementsByName("radio-group");
	  //alert("From NEXT -- currentQuestion = " + currentQuestion + "answerList[currentQuestion] = " + answerList[currentQuestion]);
	  if(answerList[currentQuestion] !=0){
		//  alert("From if");
		  //alert(">>>>>>>" + answerList);
    	  ele[answerList[currentQuestion]-1].checked = true;
	  }
	  else{
		  //alert("From else");
		  //alert(">>>>>>> Next1" + answerList);
		 reset();
		  //alert(">>>>>>> Next2" + answerList);
	  }
    });

    $('#prev').click(function() {
      // alert("From Next button");

      isCurrentAttempted(currentQuestion);
      //isCurrentAttempted();
      if(currentQuestion > 0){
    	 currentQuestion--;
      }
      document.getElementById("question-no").innerHTML = "Question No: " + (currentQuestion+1);
      document.getElementById("question-content").innerHTML = questionsList[currentQuestion].question;
      document.getElementById("radio-1").innerHTML = questionsList[currentQuestion].option1;
      document.getElementById("radio-2").innerHTML = questionsList[currentQuestion].option2;
      document.getElementById("radio-3").innerHTML = questionsList[currentQuestion].option3;
      document.getElementById("radio-4").innerHTML = questionsList[currentQuestion].option4;

      var ele = document.getElementsByName("radio-group");
	  //alert("PREV currentQuestion = " + currentQuestion + "answerList[currentQuestion] = " + answerList[currentQuestion]);
	  if(answerList[currentQuestion] !=0){
    	ele[answerList[currentQuestion]-1].checked = true;
	  //alert(">>>>>>>" + answerList);
	  }
	  else{
		  //alert(">>>>>>>" + answerList);
		  reset();
	  }
    })

    $('#rev').click(function() {
      // alert("From Next button");
      if(!reviewFlag[currentQuestion]){
      		document.getElementById(currentQuestion+1).className = 'btn btn-warning';
      		reviewFlag[currentQuestion] = true;
      }
      else{
    	  document.getElementById(currentQuestion+1).className = 'btn btn-outline-dark';
    	  reviewFlag[currentQuestion] = false;
      }
    })
	});
   // $('#sub-btn').click(function() {
	  function submitAnswers() {
      //alert("From submit button" + numberOfAttempedQuestions);
      if(document.getElementById(currentQuestion+1).className != 'btn btn-success'){
    	  var ele = document.getElementsByName("radio-group");
      	  for(var i=0;i<ele.length;i++){
	    	if(ele[i].checked == true){
	    		answerList[currentQuestion]=i+1;
	    		numberOfAttempedQuestions++;
	    		//numberOfTotalQuestions++;
	    		//alert("From submit button" + numberOfAttempedQuestions);
	    		break;
	    	}
	  	  }
      }
      var answerStrList = ["A", "B", "C", "D"];
      alert(answerList);
      for(i=0; i<answerList.length; i++){
    	 //alert("answerList[" + i + "] = " + answerList[i]);
    	 //alert("answerStrList[answerList[i]-1] = " + answerStrList[answerList[i]-1]);
    	 //alert("Questionlist ans = "  + questionsList[i].correctOption);
    	  if(answerStrList[answerList[i]-1] == questionsList[i].correctOption){
    		  marks += questionsList[i].totalMarks;
    		  isCorrect[i]=1;
    		  numberOfCorrectAnswers++;
    	  }
    	  totalMarks += questionsList[i].totalMarks;
      }
      //alert("marks = " + marks + "total marks = " + totalMarks);
     // window.location.href = '/OnlineEvaluationSystem/jsp/FeedBackForm.jsp';
     callServlet();
    };
    function callServlet() {

/*       var testname = $('#test-name').val();

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

 */     // alert("**" + JSON.stringify(myData2));
 	var hours = 0;
 	hours = hour;//document.getElementById('hr').value;
 	var minutes = 0;
 	minutes = min;//document.getElementById('min').value;
 	var seconds = 0;
 	seconds = sec;//document.getElementById('sec').value;
 	//alert("hours : " + hours + " minutes : " + minutes + " seconds " + seconds);
 	alert("courseId before submit = " + courseId);
   var myData = {
		courseId: courseId,
		courseName: courseName,
		marks: marks,
		totalMarks: totalMarks,
		numberOfCorrectAnswers: numberOfCorrectAnswers,
		numberOfAttempedQuestions: numberOfAttempedQuestions,
		numberOfTotalQuestions: numberOfTotalQuestions,
		hours: hours,
		minutes: minutes,
		seconds: seconds
   };


 $.ajax({
	 	type: 'POST',
        url: '/OnlineEvaluationSystem/CommonController?action=ResultServlet',
        data: JSON.stringify(answerList) + JSON.stringify(questionsList) + JSON.stringify(isCorrect) + JSON.stringify(myData),
        dataType: 'json',
        contentType: 'application/json; charset=utf-8',
        traditional: true,

        success: function (jsonObj) {
          //alert("Success");
          var responseJson1=jsonObj[0];
          var locationJson = eval('(' + responseJson1 + ')');
          var responseJson2 = jsonObj[1];
          //alert(responseJson2);
          var feedbackQuestionsJSON = JSON.stringify(responseJson2);
          //alert(feedbackQuestionsJSON);
          var marksJSON = JSON.stringify(myData);
          //alert("marksJSON = " + marksJSON);
          window.location.href = locationJson.location + "?varid=" + encodeURIComponent(marksJSON) + encodeURIComponent(feedbackQuestionsJSON);
        },
        error: function(){
          alert("Error");
        }
      });
    }


  function goToQuestion(questionNo){
	  isCurrentAttempted(currentQuestion);
	  //alert("No of qusts attempted = " +  numberOfAttempedQuestions);
	  //isCurrentAttempted()
	  	  currentQuestion = questionNo-1;
	  	  //alert(questionsList);
    document.getElementById("question-no").innerHTML = "Question No: " + questionNo;
    document.getElementById("question-content").innerHTML = questionsList[questionNo-1].question;
    document.getElementById("radio-1").innerHTML = questionsList[questionNo-1].option1;
    document.getElementById("radio-2").innerHTML = questionsList[questionNo-1].option2;
    document.getElementById("radio-3").innerHTML = questionsList[questionNo-1].option3;
    document.getElementById("radio-4").innerHTML = questionsList[questionNo-1].option4;

    var ele = document.getElementsByName("radio-group");
	  //alert("currentQuestion = " + currentQuestion + "answerList[currentQuestion] = " + answerList[currentQuestion]);
	  if(answerList[currentQuestion] !=0)
  	     ele[answerList[currentQuestion]-1].checked = true;
	  else
		  reset();

  }

  function isCurrentAttempted(currentQuestion){
//	function isCurrentAttempted(){
	  var ele = document.getElementsByName("radio-group");
	  //var attempted = false;
	  //if(document.getElementById(currentQuestion+1).className == 'btn btn-success'){
		 if(attempted[currentQuestion] == 1){
	  	     //alert("Question Already attempted");
	  	     attempted[currentQuestion] = 0;
		     numberOfAttempedQuestions--;
	     }
	     for(var i=0;i<ele.length;i++){
	    	if(ele[i].checked == true){
	    		answerList[currentQuestion]=i+1;
	    		//alert("currentQuestion = "+currentQuestion+" answerList[currentQuestion] = "+answerList[currentQuestion]);
	    		//document.getElementById(currentQuestion+1).className = 'btn btn-success';
	    		//numberOfTotalQuestions++;
	    		numberOfAttempedQuestions++;
	    		//attempted = true;
	    		attempted[currentQuestion] = 1;
	    		break;
	    	}
	    }
	    //alert(">>>>>>>" + answerList);
	    if(reviewFlag[currentQuestion]){
	    	document.getElementById(currentQuestion+1).className = 'btn btn-warning';
	    }
	    else{
	    	//if(!attempted){
	    		if(!attempted[currentQuestion]){
	    		document.getElementById(currentQuestion+1).className = 'btn btn-primary';
	    	}
	    	else{
	    		document.getElementById(currentQuestion+1).className = 'btn btn-success';
	    	}
	    }
  }

  function reset() {
    //console.log("We are in reset function");
    // var radiobtn = document.getElementsByName('radio-group');
    // radiobtn.setAttribute('checked', false);
    var ele = document.getElementsByName("radio-group");
    for(var i=0;i<ele.length;i++)
       ele[i].checked = false;
    answerList[currentQuestion] = 0;
  }
</script>

</head>
<body onload="startTimer();">
  <jsp : useBean id="" class=" ">

    <div class="container-fluid main-frame">
      <div class="row R1 main-frame2">
        <div class="col-lg-12 col-sm-12 col-md-12 col-xl-12">
          <div class="outter-frame">
            <h4 id="test-name"></h4>
          </div>
        </div>
      </div>

      <div class="row R2 main-row-frame">

        <div class="col-xl-9 col-lg-9 col-sm-6 col-md-7 left-frame">
          <div class="inner-frame">
            <div class="content-frame1">
              <div class="question-frame1">
                <h4 id="question-no">Question No:1</h4>
              </div>
              <div class="question-frame2">
                <h6 id="question-content" >
                </h6>
              </div>
              <div class="question-frame3">
                <form action="#">
                  <p>
                    <input type="radio" id="test1" name="radio-group"  >
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

                <div class="question-frame4">
                  <input type="button" class="btn btn-outline-info" name="previous" value="Previous" id="prev">
                  <input type="button" class="btn btn-outline-warning" name="review" value="Review" id="rev">
                  <input type="button" class="btn btn-outline-danger" name="save" value="Reset Question" id="reset" onclick="reset();">
                  <input type="button" class="btn btn-outline-info" name="next" value = " Next" id="next">
                </div>
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
              <div class="clock-header2">
                <h5 id="hr-name" style="float: left; margin:2%; margin-left: 30%; color: rgb(250, 52, 0);">Hr</h5>
                <h5 id="min-name" style="float: left;margin: 2%;color: rgb(42, 250, 0);"> Min</h5>
                <h5 id="sec-name" style="float: left;margin: 2%;color: rgb(12, 0, 250);"> Sec</h5>
              </div>
              <div class="clock-content">
                <label id="hr"></label>
                <label id="min"></label>
                <label id="sec"></label>
              </div>
              <div class="Expired">
                <p id="Expired"></p>
              </div>
            </div>
            <div class="question-frame5">
              <div class="button-list" id="button-list">
                <div class="question-list">
                  <h6>Question list</h6>
                </div>
                <!-- <div class="button-row1" id="btn-r1" >
                <button  class="btn btn-success" >1</button><button class="btn btn-primary" >2</button><button class="btn btn-warning" id="3" onclick="goToQuestion(this.id)" >3</button><button class="btn btn-outline-dark" >4</button><button class="btn btn-outline-dark" >5</button>
              </div>
              <div class="button-row2" id="btn-r2">
              <button class="btn btn-outline-dark" >6</button><button class="btn btn-outline-dark" >7</button><button class="btn btn-outline-dark" >8</button><button class="btn btn-outline-dark" >9</button><button class="btn btn-outline-dark" >10</button>
            </div>
            <div class="button-row3" id="btn-r3">
            <button class="btn btn-outline-dark" >11</button><button class="btn btn-outline-dark" >12</button><button class="btn btn-outline-dark" >13</button><button class="btn btn-outline-dark" >14</button><button class="btn btn-outline-dark" >15</button>
          </div>
          <div class="button-row4" id="btn-r4">
          <button class="btn btn-outline-dark" >16</button><button class="btn btn-outline-dark" >17</button><button class="btn btn-outline-dark" >18</button><button class="btn btn-outline-dark" >19</button><button class="btn btn-outline-dark" >20</button>
        </div> -->
      </div>
      <div class="question-info">
        <div class="question-info-outter">
          <h6>LEGEND</h6>
        </div>
        <div>
          <button class="btn btn-success" id="b1"></button><label>Current Question which is saved</label>
        </div>
        <div >
          <button class="btn btn-primary" id="b2"></button><label>Question visited but not attempted</label>
        </div>
        <div>
          <button class="btn btn-warning" id="b3"></button><label>Marked question for review</label>
        </div>
      </div>
      <div class="question-submit">
        <button class="btn btn-danger text center" id="sub-btn" onclick="submitAnswers()"><i class="material-icons">lock</i>Finish Exam</button>
      </div>
    </div>
  </div>
</div>
</div>
</div>
<script type="text/javascript">
var timer = 3600;
var hour=0;
var min = 0;
var sec = 0;
function startTimer() {

    min = parseInt(timer/60);
    hour=parseInt(min/60);
    sec = parseInt(timer%60);
    timer--;
    if(timer < 0 ){
        document.getElementById('Expired').textContent="Time Expired";
        alert("Time is up. Your test will be submitted and result will be displayed shortly");
        clearTimeout(timeOut);
        submitAnswers();
    }

    document.getElementById('hr').textContent=hour.toString()+" "+":";
    document.getElementById('min').textContent=min.toString()+" "+":";
    document.getElementById('sec').textContent=sec.toString();

    timeOut = setTimeout(function() {
        startTimer();
    },1000);
}

</script>

</body>
</html>
