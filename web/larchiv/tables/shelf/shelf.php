<?php
class tables_shelf {

    function getTitle($record)
    {
        return 'Schrank '.$record->val('locker').' Fach '.$record->val('shelf');
    }

    function titleColumn() {
        return CONCAT('Schrank ',locker,' Fach ',shelf);
    }

    function shelf__display($record)
    {
        return 'Schrank '.$record->val('locker').' Fach '.$record->val('shelf');
    }
}