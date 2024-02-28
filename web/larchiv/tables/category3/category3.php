<?php
class tables_category3 {
    function outdated__display ($record)
    {
        if ($record->val('outdated') ==1 ) return 'X';
        else return ' ';
    }
    function getTitle($record)
    {
        return $record->val('category0').'-'.$record->val('category1').'-'.$record->val('category2').'-'.$record->val('category3').' '.$record->val('description');
    }
}