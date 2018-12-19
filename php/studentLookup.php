<!--
studentLookup.php

Author: Jeffrey Lo

Add php sql calls here:
-->
<html>
<head>
	<link rel="stylesheet" href="http://ecs.fullerton.edu/~cs332a44/stylesheets/default-style.css">
</head>

<body>

  <div id="main">
    <h1>CPSC 332 PROJECT - University DB</h1>
    <h2>by: Jeffrey Lo, James Duong, Angel Soto</h2>
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
        }

        //echo 'Connected successfully<p>';
        mysql_select_db(SERVERID,$serverDB);
        // Print Header
        echo "<h2 style='margin-left: 0px'>Student Query</h2><BR>";
        echo "<h4>Student Record: ", "</h4>";
        $StudentQuery = "SELECT Student_FName, Student_LName, Student_Address, Student_Phone, D1.Department_Name as Major_Name, D2.Department_Name as Minor_Name
                        FROM STUDENT, DEPARTMENT D1, DEPARTMENT D2, MINOR
                        WHERE Minor_Student_CWID = Student_CWID
                        AND D1.Department_Number = Major
                        AND D2.Department_Number = Minor_Dept
                        AND Student_CWID =" .$_POST["studentCWID"];
        $sResult = mysql_query($StudentQuery,$serverDB) or die('Student Query Failed: ' . mysql_error());
        //Student Query Results
        echo "<div class='query'>";
        echo "Student CWID: " .$_POST["studentCWID"], "<BR>";
        echo "Student Name: ", mysql_result($sResult, 0, Student_FName), " ", mysql_result($sResult, Student_LName), "<BR>";
        echo "Student Phone: ", mysql_result($sResult, 0, Student_Phone), "<BR>";
        echo "Student Address: ", mysql_result($sResult, 0, Student_Address), "<BR>";
        echo "Student Major: ", mysql_result($sResult, 0, Major_Name), "<BR>";
        echo "Student Minor: ", mysql_result($sResult, 0, Minor_Name), "<BR>";
        echo "</div>";


        $AcadHistQuery = "SELECT Course_Title, Enrollment_Course_Number, Enrollment_Section_Number, Grade
                	FROM ENROLLMENT, COURSE
                	WHERE Enrollment_Course_Number = Course_Number
                	AND Enrollment_CWID =" .$_POST["studentCWID"];
        $ahqResult = mysql_query($AcadHistQuery,$serverDB) or die(mysql_error());
        $i=0;
        if ($i<mysql_numrows($ahqResult)){
          //Print Course Results
          echo "<h4>Courses Enrolled: ", mysql_numrows($ahqResult), "</h4>";
          echo "<div class='query'>";
          for($i=0; $i<mysql_numrows($ahqResult); $i++){
            echo "Course Name: ", mysql_result($ahqResult, $i, Course_Title), "<BR>";
            echo "Course ID: ", mysql_result($ahqResult, $i, Enrollment_Course_Number), "<BR>";
            echo "Section: ", mysql_result($ahqResult, $i, Enrollment_Section_Number), "<BR>";
            echo "Grade: ", mysql_result($ahqResult, $i, Grade), "<BR>";
            if ($i<(mysql_numrows($ahqResult)-1)){
              echo "<BR>";
            }
          }
          echo "</div>";
        }
        else{
          echo "<span id='Error'>ERROR - Invalid CWID", "<BR>", "STUDENT NOT FOUND", "<BR>", "</span";
        }
        // Close Database
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
