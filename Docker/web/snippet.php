// in xataface-2.1.2/Dataface/Application.php
// nach Zeile 569

if (!isset($dbinfo['password'])) {
$dbinfo['password'] = getenv('MARIADB_PASSWORD');
}
if (!isset($dbinfo['user'])) {
$dbinfo['user'] = getenv('MARIADB_USER');
}

