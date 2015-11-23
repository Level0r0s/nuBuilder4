<?php

    $nuSchema = array(
'zzzzsys_access_level' => array(
     'zzzzsys_access_level_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sal_code' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sal_description' => array(
          'type' => 'VARCHAR(200)',
          'null' => true
),
'sal_zzzzsys_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_access_level_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_access_level_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_access_level_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_access_level_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_access_level_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_access_level_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_access_level_form' => array(
     'zzzzsys_access_level_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'slf_zzzzsys_access_level_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'slf_zzzzsys_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'slf_add_button' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'slf_save_button' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'slf_delete_button' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'slf_clone_button' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'slf_new_button' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'slf_print_button' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'zzzzsys_access_level_form_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_access_level_form_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_access_level_form_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_access_level_form_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_access_level_form_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_access_level_form_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_browse' => array(
     'zzzzsys_browse_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sbr_zzzzsys_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'sbr_title' => array(
          'type' => 'VARCHAR(100)',
          'null' => true
),
'sbr_display' => array(
          'type' => 'VARCHAR(512)',
          'null' => true
),
'sbr_align' => array(
          'type' => 'CHAR',
          'null' => true
),
'sbr_format' => array(
          'type' => 'VARCHAR(10)',
          'null' => true
),
'sbr_searchable' => array(
          'type' => 'CHAR',
          'null' => true
),
'sbr_sort' => array(
          'type' => 'VARCHAR(512)',
          'null' => true
),
'sbr_sortable' => array(
          'type' => 'CHAR',
          'null' => true
),
'sbr_visible' => array(
          'type' => 'CHAR',
          'null' => true
),
'sbr_order' => array(
          'type' => 'INT',
          'null' => true
),
'sbr_width' => array(
          'type' => 'INT',
          'null' => true
),
'zzzzsys_browse_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_browse_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_browse_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_browse_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_browse_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_browse_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_debug' => array(
     'zzzzsys_debug_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'deb_message' => array(
          'type' => 'LONGTEXT',
          'null' => true
),
'deb_added' => array(
          'type' => 'DATETIME',
          'null' => false
))
,
'zzzzsys_event' => array(
     'zzzzsys_event_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sev_zzzzsys_object_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'sev_name' => array(
          'type' => 'VARCHAR(50)',
          'null' => false
),
'sev_javascript' => array(
          'type' => 'VARCHAR(3000)',
          'null' => false
),
'zzzzsys_event_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_event_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_event_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_event_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_event_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_event_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_file' => array(
     'zzzzsys_file_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sfi_filepicker' => array(
          'type' => 'VARCHAR(2000)',
          'null' => false
),
'sfi_code' => array(
          'type' => 'VARCHAR(10)',
          'null' => true
),
'sfi_description' => array(
          'type' => 'TEXT',
          'null' => true
),
'sfi_type' => array(
          'type' => 'VARCHAR(50)',
          'null' => false
),
'sfi_size' => array(
          'type' => 'VARCHAR(10)',
          'null' => false
),
'sfi_name' => array(
          'type' => 'VARCHAR(255)',
          'null' => false
),
'sfi_group' => array(
          'type' => 'VARCHAR(200)',
          'null' => true
),
'sfi_blob' => array(
          'type' => 'LONGBLOB',
          'null' => true
),
'zzzzsys_file_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_file_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_file_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_file_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_file_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_file_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_form' => array(
     'zzzzsys_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sfo_type' => array(
          'type' => 'VARCHAR(20)',
          'null' => false
),
'sfo_name' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sfo_title' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sfo_sql' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sfo_table' => array(
          'type' => 'VARCHAR(100)',
          'null' => true
),
'sfo_primary_key' => array(
          'type' => 'VARCHAR(100)',
          'null' => true
),
'sfo_width' => array(
          'type' => 'INT',
          'null' => false
),
'sfo_height' => array(
          'type' => 'INT',
          'null' => false
),
'sfo_breadcrumb' => array(
          'type' => 'VARCHAR(1000)',
          'null' => false
),
'sfo_add_button' => array(
          'type' => 'CHAR',
          'null' => true
),
'sfo_save_button' => array(
          'type' => 'CHAR',
          'null' => true
),
'sfo_delete_button' => array(
          'type' => 'CHAR',
          'null' => true
),
'sfo_clone_button' => array(
          'type' => 'CHAR',
          'null' => true
),
'sfo_new_button' => array(
          'type' => 'CHAR',
          'null' => true
),
'sfo_print_button' => array(
          'type' => 'CHAR',
          'null' => true
),
'sfo_add_title' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sfo_save_title' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sfo_delete_title' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sfo_clone_title' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sfo_new_title' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sfo_print_title' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sfo_add_button_display_condition' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sfo_save_button_display_condition' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sfo_delete_button_display_condition' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sfo_clone_button_display_condition' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sfo_new_button_display_condition' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sfo_print_button_display_condition' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sfo_custom_code_run_before_save' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sfo_custom_code_run_before_browse' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sfo_custom_code_run_before_delete' => array(
          'type' => 'MEDIUMTEXT',
          'null' => false
),
'sfo_custom_code_run_before_open' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sfo_custom_code_run_after_save' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sfo_custom_code_run_after_delete' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sfo_custom_code_run_javascript' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sfo_redirect_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'sfo_row_height' => array(
          'type' => 'INT',
          'null' => false
),
'sfo_rows' => array(
          'type' => 'INT',
          'null' => false
),
'zzzzsys_form_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_form_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_form_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_form_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_form_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_form_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_lookup' => array(
     'zzzzsys_lookup_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'slo_zzzzsys_object_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'zzzzsys_slo_table_field_name' => array(
          'type' => 'VARCHAR(100)',
          'null' => true
),
'zzzzsys_slo_object_name' => array(
          'type' => 'VARCHAR(100)',
          'null' => true
),
'zzzzsys_slo_field_function_name' => array(
          'type' => 'VARCHAR(2000)',
          'null' => false
),
'zzzzsys_lookup_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_lookup_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_lookup_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_lookup_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_lookup_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_lookup_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_object' => array(
     'zzzzsys_object_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sob_zzzzsys_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'sob_all_clone' => array(
          'type' => 'CHAR',
          'null' => true
),
'sob_all_display_condition' => array(
          'type' => 'TEXT',
          'null' => true
),
'sob_all_name' => array(
          'type' => 'VARCHAR(200)',
          'null' => true
),
'sob_all_order_number' => array(
          'type' => 'INT',
          'null' => true
),
'sob_all_zzzzsys_tab_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'sob_all_title' => array(
          'type' => 'VARCHAR(200)',
          'null' => true
),
'sob_all_type' => array(
          'type' => 'VARCHAR(200)',
          'null' => true
),
'sob_all_top' => array(
          'type' => 'INT',
          'null' => true
),
'sob_all_left' => array(
          'type' => 'INT',
          'null' => true
),
'sob_all_width' => array(
          'type' => 'INT',
          'null' => false
),
'sob_all_height' => array(
          'type' => 'INT',
          'null' => false
),
'sob_all_align' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'sob_all_no_blanks' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'sob_all_read_only' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'sob_all_default_value_sql' => array(
          'type' => 'MEDIUMTEXT',
          'null' => false
),
'sob_all_no_duplicates' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'sob_run_method' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'sob_run_skip_browse_record_id' => array(
          'type' => 'VARCHAR(200)',
          'null' => true
),
'sob_run_zzzzsys_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'sob_run_browse_filter' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sob_run_filter' => array(
          'type' => 'VARCHAR(500)',
          'null' => false
),
'sob_display_sql' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sob_dropdown_sql' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sob_html_code' => array(
          'type' => 'LONGTEXT',
          'null' => true
),
'sob_listbox_sql' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sob_lookup_code_field' => array(
          'type' => 'VARCHAR(100)',
          'null' => true
),
'sob_lookup_description_field' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sob_lookup_description_width' => array(
          'type' => 'INT',
          'null' => false
),
'sob_lookup_sql' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sob_lookup_zzzzsys_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'sob_lookup_id_field' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sob_lookup_javascript' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sob_lookup_php' => array(
          'type' => 'MEDIUMTEXT',
          'null' => false
),
'sob_lookup_autocomplete' => array(
          'type' => 'CHAR',
          'null' => true
),
'sob_subform_row_height' => array(
          'type' => 'INT',
          'null' => true
),
'sob_subform_deletable' => array(
          'type' => 'CHAR',
          'null' => true
),
'sob_subform_addable' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'sob_subform_foreign_key' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sob_subform_sql' => array(
          'type' => 'MEDIUMTEXT',
          'null' => true
),
'sob_subform_type' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'sob_text_format' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sob_text_type' => array(
          'type' => 'VARCHAR(50)',
          'null' => false
),
'zzzzsys_object_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_object_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_object_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_object_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_object_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_object_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_session' => array(
     'zzzzsys_session_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sss_zzzzsys_user_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'sss_timeout' => array(
          'type' => 'BIGINT',
          'null' => false
),
'zzzzsys_session_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_session_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_session_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_session_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_session_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_session_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_setup' => array(
     'zzzzsys_setup_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'set_title' => array(
          'type' => 'VARCHAR(100)',
          'null' => true
),
'set_time_out_minutes' => array(
          'type' => 'INT',
          'null' => true
),
'set_timezone' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'set_smtp_username' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'set_smtp_password' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'set_smtp_host' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'set_smtp_from_address' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'set_smtp_from_name' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'set_smtp_port' => array(
          'type' => 'INT',
          'null' => true
),
'set_smtp_use_ssl' => array(
          'type' => 'CHAR',
          'null' => true
),
'set_fonts' => array(
          'type' => 'TEXT',
          'null' => false
),
'set_language' => array(
          'type' => 'VARCHAR(20)',
          'null' => false
),
'set_css' => array(
          'type' => 'LONGTEXT',
          'null' => false
),
'set_denied' => array(
          'type' => 'VARCHAR(255)',
          'null' => false
),
'set_splash' => array(
          'type' => 'VARCHAR(1)',
          'null' => false
),
'set_inkfilepicker_key' => array(
          'type' => 'VARCHAR(500)',
          'null' => false
),
'zzzzsys_setup_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_setup_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_setup_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_setup_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_setup_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_setup_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_tab' => array(
     'zzzzsys_tab_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sab_zzzzsys_form_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'sab_zzzzsys_object_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'sab_title' => array(
          'type' => 'VARCHAR(200)',
          'null' => false
),
'sab_order' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_timezone' => array(
     'zzzzsys_timezone_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'stz_timezone' => array(
          'type' => 'MEDIUMTEXT',
          'null' => false
))
,
'zzzzsys_translate' => array(
     'zzzzsys_translate_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'trl_language' => array(
          'type' => 'VARCHAR(20)',
          'null' => false
),
'trl_english' => array(
          'type' => 'VARCHAR(300)',
          'null' => false
),
'trl_translation' => array(
          'type' => 'VARCHAR(300)',
          'null' => false
),
'zzzzsys_translate_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_translate_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_translate_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_translate_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_translate_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_translate_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))
,
'zzzzsys_user' => array(
     'zzzzsys_user_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => false,
          'pk' => true
),
'sus_zzzzsys_user_group_id' => array(
          'type' => 'VARCHAR(25)',
          'null' => true
),
'sus_name' => array(
          'type' => 'VARCHAR(50)',
          'null' => true
),
'sus_email' => array(
          'type' => 'VARCHAR(255)',
          'null' => true
),
'sus_login_name' => array(
          'type' => 'VARCHAR(20)',
          'null' => true
),
'sus_login_password' => array(
          'type' => 'VARCHAR(40)',
          'null' => true
),
'zzzzsys_user_log_added_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_user_log_added_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_user_log_changed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_user_log_changed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
),
'zzzzsys_user_log_viewed_at' => array(
          'type' => 'DATETIME',
          'null' => false
),
'zzzzsys_user_log_viewed_by' => array(
          'type' => 'VARCHAR(25)',
          'null' => false
))

    );

?>