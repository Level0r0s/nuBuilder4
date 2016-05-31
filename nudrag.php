<?php

function nuDragSave($data){
    foreach($data['nuDragState']['tabs'] as $tab){
        foreach($tab['objects'] as $field){
            nuRunQuery("
                UPDATE zzzzsys_object SET 
                sob_all_order = '".$field['tab_order']."',
                sob_all_left = '".$field['left']."',
                sob_all_top = '".$field['top']."',
                sob_all_width = '".$field['width']."',
                sob_all_height = '".$field['height']."'
                WHERE sob_all_zzzzsys_form_id = '".$data['form_id']."' AND sob_all_id = '".str_replace("'","\n",$field['id'])."' 
            ");
        }
    }
}

?>