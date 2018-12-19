<!-- 
gradeCount.php

Author:

Add php sql calls here:
-->
<!-- 
gradeCount.php
Author:Angel Soto
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

        //print header
        echo "<h2 style='margin-left: 0px'>Grade Lookup</h2><BR>";

       //table format
        <div class="container">
		<div class="row">
		<div class="col-md-12">
		<h2>Taking an account of how many students got each disticnct grade:</h2>
		<table class='table table-bordered'>
		<tr>
		<th>Country</th><th>Number of authors</th>
		</tr>
		<?php
 










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
