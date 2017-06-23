<?php

function nuBuildFastForm($table){

	$form_id		= nuID();
	$PK				= $table . '_id';
	$newT			= true;
	$q				= nuRunQuery("SELECT table_name FROM INFORMATION_SCHEMA.TABLES WHERE table_schema = DATABASE()");

	while($tableSchemaOBJ = db_fetch_object($q)){
		
		if($table == $tableSchemaOBJ->table_name){
			
			$PK 	= $_SESSION['tableSchema'][$table]['primary_key'][0];
			$newT	= false;

			
		}
		
	}

	$TT             = nuTT();
	$SF             = nuSubformObject('obj_sf');
	$tab_id         = nuID();
	$t              = nuRunQuery("SELECT COUNT(*) FROM zzzzsys_form WHERE SUBSTRING(sfo_code, 1, 2) = 'FF'");
	$r              = db_fetch_row($t);
	$form_code      = 'FF' . $r[0];
	$form_desc      = 'Fast Form ' . $r[0];
	$s              = Array();

	//----------add tab--------------------
	$sql            = "

					INSERT 
					INTO zzzzsys_tab
					(zzzzsys_tab_id,
					syt_zzzzsys_form_id,
					syt_title,
					syt_order)
					VALUES
					(?, ?, ?, ?)

	";

	$array          = Array($tab_id, $form_id, 'Main', 10);

	nuRunQuery($sql, $array);

	//----------add form--------------------

	$sql            = "

					INSERT 
					INTO zzzzsys_form
					(zzzzsys_form_id,
					sfo_type,
					sfo_code,
					sfo_description,
					sfo_table,
					sfo_primary_key,
					sfo_browse_sql)
					VALUES
					(?, ?, ?, ?, ?, ?, ?)

	";

	$array          = Array($form_id, 'browseedit', $form_code, $form_desc, $table, $PK, "SELECT * FROM $table");

	nuDebug($sql, $array);
	nuRunQuery($sql, $array);

	$sql            = "CREATE TABLE $TT SELECT * FROM zzzzsys_object WHERE false";
	
	nuRunQuery($sql);
	
	for($i = 0 ; $i < count($SF->rows) ; $i++){
		
		if($SF->rows[$i][4] == 0){							//-- not ticked as deleted
			
			$r          		= $SF->rows[$i][3];
			$newid				= nuID();
			$SF->rows[$i][3]	= $newid;
			$sql				= "INSERT INTO $TT SELECT * FROM zzzzsys_object WHERE zzzzsys_object_id = '$r'";
			
			nuRunQuery($sql);
			$sql				= "UPDATE $TT SET zzzzsys_object_id = '$newid' WHERE zzzzsys_object_id = '$r'";
			
			nuRunQuery($sql);
		
		}

	}

	$sql            = "

					UPDATE $TT
					SET 
						sob_all_id                  = ?,
						sob_all_label               = ?,
						sob_all_order               = ?,
						sob_all_top                 = ?,
						sob_all_left                = ?,
						sob_all_table               = ?,
						sob_all_zzzzsys_form_id     = ?,
						sob_all_zzzzsys_tab_id      = ?,
						zzzzsys_object_id           = ?
					WHERE 
						zzzzsys_object_id           = ?

	";

	$gap            = 30;
	$left			= 150;

	for($i = 0 ; $i < count($SF->rows) ; $i++){
		
		if($SF->rows[$i][4] == 0){							//-- not ticked as deleted
			
			$newid      = nuID();
			$label      = $SF->rows[$i][1];
			$field      = $SF->rows[$i][2];
			$oldid      = $SF->rows[$i][3];
			$corner		= $left + ($gap * $i);

			$array      = Array($field, $label, $corner, $corner, $corner, $table, $form_id, $tab_id, $newid, $oldid);

			nuRunQuery($sql, $array);
			
		}

	}

	$t              = nuRunQuery("SELECT * FROM $TT");
	$a              = Array();
	$n              = 'number date';

	while($r = db_fetch_object($t)){
		

		
		$y          = $r->sob_all_type;
		$i          = $r->sob_input_type;
		$id         = $r->sob_all_id;
		$l          = count($a);
		
		$date       = ($i == 'date' || $i == 'nuDate');
		$norm       = ($y == 'input' && $i != 'date' && $i != 'nuDate' && $i != 'nuNumber' && $i != 'number');
		
		if($y == 'lookup'){                         $a[] = Array('name'=>$id, 'type'=>'id');}
		if($y == 'select'){                         $a[] = Array('name'=>$id, 'type'=>'varchar');}
		if($y == 'calc'){                           $a[] = Array('name'=>$id, 'type'=>'varchar');}
		if($y == 'text'){                           $a[] = Array('name'=>$id, 'type'=>'text');}
		if($y == 'input' && $norm){                 $a[] = Array('name'=>$id, 'type'=>'varchar');}
		if($y == 'input' && $date){                 $a[] = Array('name'=>$id, 'type'=>'date');}
		if($y == 'input' && $i == 'number'){        $a[] = Array('name'=>$id, 'type'=>'int');}
		if($y == 'input' && $i == 'nuNumber'){      $a[] = Array('name'=>$id, 'type'=>'decimal');}
		
	}

	if($newT){

		$create		= nuBuildTable($table, $a);
			
		nuRunQuery($create);

	}

	$t              = nuRunQuery("SELECT * FROM $TT");
	$ord            = 1;

	while($r = db_fetch_object($t)){

		$ord++;
		
		$y          = $r->sob_all_type;
		$i          = $r->sob_input_type;
		$id         = $r->sob_all_id;
		$lab        = $r->sob_all_label;

		$sql            = "
		
						INSERT 
						INTO zzzzsys_browse
						(zzzzsys_browse_id,
						sbr_zzzzsys_form_id,
						sbr_title,
						sbr_display,
						sbr_align,
						sbr_format,
						sbr_order,
						sbr_width)
						VALUES
						(?, ?, ?, ?, ?, ?, ?, ?)
		
		";
		
		$array      = Array(nuID(), $form_id, $lab, $id, 'left', '', $ord * 10, 200);

		if($y == 'input'){
			
			if($i != 'file' && $i != 'button'){
				nuRunQuery($sql, $array);
			}
			
		}else{
			
			if($y != 'html' && $y != 'display' && $y != 'word' && $y != 'image'){
				nuRunQuery($sql, $array);
			}
			
		}

	}


	//----------add run button--------------------

	$sql            = "

					INSERT 
					INTO $TT
					(zzzzsys_object_id,
					sob_all_zzzzsys_form_id,
					sob_all_zzzzsys_tab_id,
					sob_all_id,
					sob_all_label,
					sob_all_table,
					sob_all_order,
					sob_all_top,
					sob_all_left,
					sob_all_width,
					sob_all_height,
					sob_run_zzzzsys_form_id,
					sob_run_method,
					sob_all_cloneable,
					sob_all_validate,
					sob_all_access,
					sob_all_type)
					VALUES
					(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)

	";

	$array          = Array(nuID(), 'nuhome', 'nutesttab', "ff$form_id", $table, $table, 11, 63, 250, 150, 30, $form_id, 'b', 0, 0, 0, 'run');
	nuRunQuery($sql, $array);

	nuRunQuery("INSERT INTO zzzzsys_object SELECT * FROM $TT");
	nuRunQuery("DROP TABLE $TT");

	nuDisplayMessage("<h1>A Table and Form have been created!</h1>");
	nuDisplayMessage("<p>(There is now a Button called <b>$table</b> on the Testing tab of the Home Form)</p>");
	nuDisplayMessage("<input type='button' value='Go to tab..' class='nuButton' onclick='nuGetBreadcrumb(0,2);'>");

	
	
	
}

?>