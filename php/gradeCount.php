<!--
gradeCount.php
Author:Angel Soto
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
        } elseif ($_POST["sectionNum"] == "" || $_POST["courseNum"] == "") {
          die('No Course Number or Section Number Provided');
        }
        //echo 'Connected successfully<p>';
        mysql_select_db(SERVERID,$serverDB);

        //print header
        echo "<h2 style='margin-left: 0px'>Grade Count</h2><BR>";
        echo "<h4>Course Number: " .$_POST["courseNum"], "</h4>";
        echo "<h4>Section Number: " .$_POST["sectionNum"], "</h4>";

        $GradeQuery = "SELECT Grade, COUNT(*) as 'Count'
                        FROM ENROLLMENT, COURSE, SECTION
                        WHERE Course_Number = Section_Course_Number
                        AND Enrollment_Course_Number = Course_Number
                        AND Enrollment_Section_Number = Section_Number
                        AND Section_Number = '".$_POST["sectionNum"]."'
                        AND Course_Number = '".$_POST["courseNum"]."'
                        GROUP BY Grade;";
        $gradeCount = mysql_query($GradeQuery, $serverDB) or die(mysql_error());
        $i=0;
        if ($i<mysql_numrows($gradeCount)){
        	//Print Courses
        	echo "<div class ='query'>";
          echo "<table id='gradeTable'>";
          echo "<tr>";
          echo "<th>Grade</th>";
          echo "<th>Count</th>";
          echo "</tr>";
        	for($i=0; $i<mysql_numrows($gradeCount); $i++){
            echo "<tr>";
            echo "<td>", mysql_result($gradeCount, $i, Grade), "</td>";
            echo "<td>", mysql_result($gradeCount, $i, Count), "</td>";
            echo "</tr>";
        	}
          echo "</table>";
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
