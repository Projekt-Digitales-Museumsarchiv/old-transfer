<?php
class tables_locker {
    function outdated__display ($record)
    {
        if ($record->val('outdated') ==1 ) return 'X';
        else return ' ';
    }

    function locker__display($record) {
        return 'Schrank '.$record->val('locker');
    }

    function getTitle($record)
    {
        return 'Schrank '.$record->val('locker');
    }

    function titleColumn() {
        return CONCAT('Schrank ',locker);
    }
}