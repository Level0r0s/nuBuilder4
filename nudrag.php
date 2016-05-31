<?php

function nuDragSave($data){
    foreach($data['nuDragState']['tabs'] as $tab){
        foreach($tab['objects'] as $field){
            nuRunQuery("
                UPDATE zzzzsys_object SET 
                sob_all_order = ?,
                sob_all_left = ?,
                sob_all_top = ?,
                sob_all_width = ?,
                sob_all_height = ?
                WHERE zzzzsys_object_id = ? 
            ", array($field['tab_order'], $field['left'], $field['top'], $field['width'], $field['height'], $field['object_id']));
        }
    }
    return new stdClass;
}

?>