<?php /** @noinspection ALL */
/** @noinspection PhpUndefinedClassInspection */

// Default Sortierung fuer Aufenthalte
;if ( !isset($_REQUEST['-sort']) and @$_REQUEST['-table'] == 'aufenthalt' ){
;    $_REQUEST['-sort'] = $_GET['-sort'] = 'Von desc';
;}

// Include the Xataface API
setlocale (LC_NUMERIC, 'de_DE');
require_once '../xataface-2.1.2/dataface-public-api.php';

// Initialize Xataface framework
df_init(__FILE__, '../xataface-2.1.2');
    // first parameter is always the same (path to the current script)
    // 2nd parameter is relative URL to xataface directory (used for CSS files and javascripts)

// Create a new application
$app =& Dataface_Application::getInstance();

// Display the application
$app->display()
?>