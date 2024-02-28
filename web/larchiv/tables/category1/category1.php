<?php
class tables_category1 {
    function outdated__display ($record)
    {
        if ($record->val('outdated') ==1 ) return 'X';
        else return ' ';
    }

    function getTitle($record)
    {
        return $record->val('category0').'-'.$record->val('category1').' '.$record->val('description');
    }
}