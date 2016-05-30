<?php

function nuDragSave($data){
    $response = array('success' => false, 'error' => 'Could not save. Error updating fields in the database.');
    $response['testdragdata'] = $data;
    
    // check that fields are safe to update
    $fieldCheck = true;
    $leftCheck = true;
    $topCheck = true;
    $widthCheck = true;
    $heightCheck = true;
    $tabOrderCheck = true;
    foreach($data['nuDragState']['tabs'] as $tab){
        foreach($tab['objects'] as $field){
            $checkFieldExistsQRY = nuRunQuery("SELECT * FROM zzzzsys_object WHERE sob_all_zzzzsys_form_id = '".$data['form_id']."' AND sob_all_id = '".str_replace("'","\n",$field['id'])."' ");
            if(db_num_rows($checkFieldExistsQRY) != 1)
                $fieldCheck = false;
            if(!is_numeric($field['tab_order']))
                $tabOrderCheck = false;
            if(!is_numeric($field['left']))
                $leftCheck = false;
            if(!is_numeric($field['top']))
                $topCheck = false;
            if(!is_numeric($field['width']))
                $widthCheck = false;
            if(!is_numeric($field['height']))
                $heightCheck = false;
        }
    }
    if(!$fieldCheck){
        $response['success'] = false;
        $response['error'] = 'Could not find a suitable field to update for one of the fields in the nuDrag dialog. (Field could have been deleted, or there is more than 1 field with that id)';
        return $response;
    }
    if(!$tabOrderCheck){
        $response['success'] = false;
        $response['error'] = 'One of the fields given has a non-numeric tab_order value.';
        return $response;
    }
    if(!$leftCheck){
        $response['success'] = false;
        $response['error'] = 'One of the fields given has a non-numeric left value.';
        return $response;
    }
    if(!$topCheck){
        $response['success'] = false;
        $response['error'] = 'One of the fields given has a non-numeric top value.';
        return $response;
    }
    if(!$widthCheck){
        $response['success'] = false;
        $response['error'] = 'One of the fields given has a non-numeric width value.';
        return $response;
    }
    if(!$heightCheck){
        $response['success'] = false;
        $response['error'] = 'One of the fields given has a non-numeric height value.';
        return $response;
    }

    // fields are safe to update
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
    $response['success'] = true;
    $response['error'] = false;
    return $response;
}

?>