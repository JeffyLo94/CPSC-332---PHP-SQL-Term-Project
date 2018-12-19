<!--
profLookup.php

Author: Angel Soto

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
        echo "<h2 style='margin-left: 0px'>Professor Lookup</h2><BR>";
        echo "<h4>Professor: ", "</h4>";

        $FindProf = "SELECT Professor_Title, Professor_Name, Classroom, Meeting_Days, Beg_Time, End_Time
        			FROM PROFESSOR, SECTION
        			WHERE Section_Professor_SSN = Professor_SSN"
        			AND Professor_SSN = " .$_POST["professorSSN"]";
        $profResult = mysql_query($FindProf, $serverDB) or die(mysql_error());
        $i=0;
        if ($i<mysql_numrows($profResult)){
        	//Print  Prof Schedule
        	echo "<div class ='query'>";
        	for($i=0; $i<mysql_numrows($profResult); i++){
        		echo "Name: ", mysql_result($profResult, $i, Professor_Title), mysql_result($profResult, $i, Professor_Name), "<BR>";
        		echo "Classrooms: ", mysql_result($profResult, $i, Classroom), "<BR>";
        		echo "Meeting Days: ", mysql_result($profResult, $i, Meeting_Days), "<BR>";
        		echo "Times: ", mysql_result($profResult, $i, Beg_Time), mysql_result($profResult, $i, End_Time), "<BR>";

        		if($i<(mysql_numrows($profResult)-1)){
        			echo "<BR>";
        		}
        	}
        	echo "</div>";
        }
        else{
        	echo "<span id='Error'>ERROR - Invalid SSN", "<BR>", "PROF NOT FOUND", "<BR>", "</span";
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
