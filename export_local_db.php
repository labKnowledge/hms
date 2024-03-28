<?php

error_reporting(E_ALL);

include_once("Ifsnop\Mysqldump\Mysqldump.php");
use Ifsnop\Mysqldump as IMysqldump;

try {
    $dumpSettings = array(
        'exclude-tables' => array(
            '/^prescription_medicine_view*/', // Exclude the first view
            '/^medicine_subquery_view*/'    // Exclude the second view (add more if needed)
        ),
        'compress' => IMysqldump\Mysqldump::NONE,
        'no-data' => false,
        'add-drop-table' => true,
        'single-transaction' => true,
        'lock-tables' => true,
        'add-locks' => true,
        'extended-insert' => false,
        'disable-keys' => true,
        'skip-triggers' => false,
        'add-drop-trigger' => true,
        'routines' => true,
        'databases' => false,
        'add-drop-database' => false,
        'hex-blob' => true,
        'no-create-info' => false,
        'where' => ''
        );
    $dump = new IMysqldump\Mysqldump('mysql:host=localhost;dbname=epiz_32822078_hospitalhms', 'root', '',$dumpSettings);
    $dump->start('dump.sql');
    echo 'Database saved to : :: : dump.sql';
    header("Location: import_local_db.php");
} catch (\Exception $e) {
    echo 'mysqldump-php error: ' . $e->getMessage();
}