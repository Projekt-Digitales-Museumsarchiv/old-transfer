// in xataface-2.1.2/Dataface/Application.php
// nach Zeile 569

if (!isset($dbinfo['password'])) {
    $dbinfo['password'] = getenv('ENCRYPTED_PASSWORD');
}