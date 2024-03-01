<?php
class tables_room {

    function getTitle($record)
    {
        return 'Raum '.$record->val('room');
    }

    function titleColumn()
    {
        return CONCAT('Raum ',room);
    }

    function room__display($record) {
        return 'Raum '.$record->val('room');
    }
}