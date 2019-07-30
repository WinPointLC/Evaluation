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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  <script>

  </script>
  <script language="javascript">
    var questionsList = null;
    var currentQuestion;
    var reviewFlag=false;
    $(function () {
      var searchString = window.location.search.substring(1);
      var arr = searchString.split('&');
      //alert(arr);
      var data= arr[0].split('=')[1];
      var decodedData = decodeURIComponent(data);
      // alert(decodedData);
      var questionsList = eval('(' + decodedData + ')');
      /* for(i=0; i<questionsList.length; i++){
          alert("Question : " + questionsList[i].questionId + "," + questionsList[i].question);

        }  */
        var courseName = arr[1].split('=')[1];
        document.getElementById("test-name").textContent = courseName + " Test"
      for(i=0; i<questionsList.length/5; i++){
      alert("Question : " + questionsList[i].questionId + "," + questionsList[i].question);
      // creating dynamic button-list
        var btnrow = document.createElement('div');
        btnrow.className='button-row'+(i+1);
        btnrow.setAttribute('id', "btn-r"+(i+1));
        for (var j = i; j <5; j++) {
          var btn = document.createElement('button');
          btn.className='btn btn-outline-dark';
          btn.setAttribute('id', ""+(j+1));
          btn.setAttribute('textContent', ""+(j+1));
          btn.innerHTML = "" + (j+1);
          btn.setAttribute('value', ""+(j+1));
          btn.setAttribute('style', 'color:#0000');
          btn.setAttribute('onclick', "goToQuestion(this.id)");
          btnrow.appendChild(btn);
        }
        document.getElementById('button-list').appendChild(btnrow);
      }

      
        currentQuestion=0;
    document.getElementById("question-no").innerHTML = "Question No: " + (currentQuestion+1);
    document.getElementById("question-content").innerHTML = questionsList[currentQuestion].question;
    document.getElementById("radio-1").innerHTML = questionsList[currentQuestion].option1;
    document.getElementById("radio-2").innerHTML = questionsList[currentQuestion].option2;
    document.getElementById("radio-3").innerHTML = questionsList[currentQuestion].option3;
    document.getElementById("radio-4").innerHTML = questionsList[currentQuestion].option4;

    $('#next').click(function() {
      // alert("From Next button");
      if(currentQuestion < questionsList.length-1){
    	  currentQuestion++;
        
      }
      document.getElementById("question-no").innerHTML = "Question No: " + (currentQuestion+1);
      document.getElementById("question-content").innerHTML = questionsList[currentQuestion].question;
      document.getElementById("radio-1").innerHTML = questionsList[currentQuestion].option1;
      document.getElementById("radio-2").innerHTML = questionsList[currentQuestion].option2;
      document.getElementById("radio-3").innerHTML = questionsList[currentQuestion].option3;
      document.getElementById("radio-4").innerHTML = questionsList[currentQuestion].option4;
    })
    $('#prev').click(function() {
      // alert("From Next button");
      if(currentQuestion > 0){
    	  currentQuestion--;
      }
      document.getElementById("question-no").innerHTML = "Question No: " + (currentQuestion+1);
      document.getElementById("question-content").innerHTML = questionsList[currentQuestion].question;
      document.getElementById("radio-1").innerHTML = questionsList[currentQuestion].option1;
      document.getElementById("radio-2").innerHTML = questionsList[currentQuestion].option2;
      document.getElementById("radio-3").innerHTML = questionsList[currentQuestion].option3;
      document.getElementById("radio-4").innerHTML = questionsList[currentQuestion].option4;
    })

    $('#rev').click(function() {
      // alert("From Next button");
      if(!reviewFlag){
      		document.getElementById(currentQuestion+1).className = 'btn btn-warning';
      		reviewFlag = true;
      }
      else{
    	  document.getElementById(currentQuestion+1).className = 'btn btn-outline-dark';
    	  reviewFlag = false;
      }
    })

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
  function goToQuestion(questionNo){
	  currentQuestion = questionNo-1;
    document.getElementById("question-no").innerHTML = "Question No: " + questionNo;
    document.getElementById("question-content").innerHTML = questionsList[questionNo-1].question;
    document.getElementById("radio-1").innerHTML = questionsList[questionNo-1].option1;
    document.getElementById("radio-2").innerHTML = questionsList[questionNo-1].option2;
    document.getElementById("radio-3").innerHTML = questionsList[questionNo-1].option3;
    document.getElementById("radio-4").innerHTML = questionsList[questionNo-1].option4;
  }
  function reset() {
    console.log("We are in reset function");
    // var radiobtn = document.getElementsByName('radio-group');
    // radiobtn.setAttribute('checked', false);
    var ele = document.getElementsByName("radio-group");
    for(var i=0;i<ele.length;i++)
    ele[i].checked = false;
  }
</script>
</head>
<body>
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
              <div class="clock-content">
                <label id="hr">0 :</label>
                <label id="min">40 :</label>
                <label id="sec">50</label>
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
        <button class="btn btn-danger text center" id="sub-btn"><i class="material-icons">lock</i>Finish Exam</button>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</body>
</html>
