<?php
class tables_ebene2 {
    function veraltet__display ($record)
    {
        if ($record->val('veraltet') ==1 ) return 'X';
        else return ' ';
    }
}