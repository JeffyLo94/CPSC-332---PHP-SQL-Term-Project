<!--
courseLookup.php

Author: Jeffrey Lo

-->
<html>

<head>
	<link rel="stylesheet" href="http://ecs.fullerton.edu/~cs332a44/stylesheets/default-style.css">
</head>

<body>

	<div id="main">
    <h1>CPSC 332 PROJECT - University DB</h1>
    <h2>by: Jeffrey Lo, Duong Duong, Angel Soto</h2>
  </div>

  <div>
    <fieldset>
      <?php
        define("SERVERID", 'cs332a44');
        define("PWD", 'ahsheepi');
        //NEED TO add correct names for mysql_connect command
        $serverDB = mysql_connect('ecsmysql', SERVERID, PWD);
        if (!$serverDB) {
          die('Failed to connect: ' . mysql_error());
        } elseif ($_POST["courseNum"] == ""){
          die('NO Course Number Provided');
        }

         //echo 'Connected successfully<p>';
        mysql_select_db(SERVERID,$serverDB);
        // Print Header
        echo "<h2 style='margin-left: 0px'>Course Lookup</h2><BR>";
        echo "<h4>Course Number: " .$_POST["courseNum"], "</h4>";

        $CourseQuery = "SELECT Course_Number, Course_Title, Section_Number, Professor_Name, Classroom, Meeting_Days, Beg_Time, End_Time, (Seats-COUNT(Enrollment_CWID)) as 'SeatsAvailable'
                    FROM COURSE, ENROLLMENT, SECTION, PROFESSOR
                    WHERE Enrollment_Section_Number = Section_Number
                    AND Professor_SSN = Section_Professor_SSN
                    AND Course_Number = Section_Course_Number
                    AND Enrollment_Course_Number = '".$_POST["courseNum"]."'
                    GROUP BY Section_Number";
        $courseResult = mysql_query($CourseQuery, $serverDB) or die(mysql_error());
        $i=0;
        if ($i<mysql_numrows($courseResult)){
        	//Print Courses
        	echo "<div class ='query'>";
          echo "Course Title: ", mysql_result($courseResult, $i, Course_Title), "<BR>";
          echo "Total Sections Found: ", mysql_numrows($courseResult), "<BR>", "<BR>";
        	for($i=0; $i<mysql_numrows($courseResult); $i++){
            echo "Section: ", mysql_result($courseResult, $i, Section_Number), "<BR>";
            echo "Instructor: ", mysql_result($courseResult, $i, Professor_Name), "<BR>";
            echo "Classroom: ", mysql_result($courseResult, $i, Classroom), "<BR>";
        		echo "Meeting Days: ", mysql_result($courseResult, $i, Meeting_Days), "<BR>";
        		echo "Times: ", mysql_result($courseResult, $i, Beg_Time), " - ", mysql_result($courseResult, $i, End_Time), "<BR>";
            echo "Seats Available: ", mysql_result($courseResult, $i, SeatsAvailable), "<BR>";

        		if($i<(mysql_numrows($courseResult)-1)){
        			echo "<BR>";
        		}
        	}
        	echo "</div>";
        }
        else{
        	echo "<span id='Error'>Error - Invalid", "<BR>", "No Courses Found", "<BR>", "</span";
        }
        //close databse
        mysql_close($serverDB);
      ?>
    </fieldset>
  </div>


  <div class="btnHolder">
    <button onclick="goBack()">Go Back</button>
  </div>
  <script>
    function goBack() {
      window.history.back();
    }
  </script>


</body>

</html>
