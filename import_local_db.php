<?php
// Increase maximum execution time to a larger value (e.g., 300 seconds)
ini_set('max_execution_time', 9999);

// Rest of your code...
error_reporting(E_ALL);

$filename = 'dump.sql';
$mysql_host = 'localhost';
$mysql_username = 'root';
$mysql_password = '';
$mysql_database = 'epiz_32822078_hospitalhms';

// Connect to MySQL server
$link = mysqli_connect($mysql_host, $mysql_username, $mysql_password, $mysql_database) or die('Error connecting to MySQL server: ' . mysqli_connect_error());

// Read the SQL file content
$sqlContent = file_get_contents($filename);

// Split the SQL content into individual queries
$queries = explode(';', $sqlContent);

$chunkSize = 100; // Number of queries to execute per iteration
$totalQueries = count($queries);

for ($i = 0; $i < $totalQueries; $i += $chunkSize) {
    $chunk = array_slice($queries, $i, $chunkSize);
    $chunkQueries = implode(';', $chunk);


    if (!mysqli_ping($link)) {
        mysqli_close($link);
        $link = mysqli_connect($mysql_host, $mysql_username, $mysql_password, $mysql_database) or die('Error reconnecting to MySQL server: ' . mysqli_connect_error());
    }
    

    if (mysqli_multi_query($link, $chunkQueries)) {
        // Check for errors and handle them as needed
        do {
            if ($result = mysqli_store_result($link)) {
                mysqli_free_result($result);
            }
        } while (mysqli_more_results($link) && mysqli_next_result($link));
    } else {
        echo 'Error performing query batch: ' . mysqli_error($link) . PHP_EOL;
    }
}

// Close the connection
mysqli_close($link);

// Now that all queries are executed, perform the redirect
// header("Location: http://hms.ouraim.org/");
exit;
?>
