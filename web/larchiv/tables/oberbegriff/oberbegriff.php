<?php
class tables_oberbegriff {
    function veraltet__display ($record)
    {
        if ($record->val('veraltet') ==1 ) return 'X';
        else return ' ';
    }
}