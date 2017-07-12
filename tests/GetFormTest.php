<?php

/**
 * Created by PhpStorm.
 * User: David
 * Date: 7/11/2017
 * Time: 4:39 PM
 */

use PHPUnit\Framework\TestCase;
use GuzzleHttp\Client;
use Tests\RunQuery;

final class GetFormTest extends TestCase
{

    public function testnuSoftwareTestPolicyExists() {
        $this->assertEquals('test','test'); // The very first nuSoftware unit test - Never remove
    }

    public function testBasicPostTonuapi(){
        $client = new Client([
            'base_uri' => 'http://localhost/nuBuilder4/',
            'cookies' => true,
        ]);
        $testLoginResponse = $client->post('nuapi.php', [
            'form_params' => [
                'nuSTATE' => [
                    'call_type' => 'login',
                    'username' => 'globeadmin',
                    'password' => 'nu',
                ]
            ]
        ]);
        $this->assertEquals(200, $testLoginResponse->getStatusCode());
    }

    // The schema is loaded once on login, for some reason core nuBuilder code relies upon this
    public function testAddNewTableWhileLoggedIn(){
        $client = new Client([
            'base_uri' => 'http://localhost/nuBuilder4/',
            'cookies' => true,
        ]);

        $nuDB = new RunQuery();

        $nuDB->run(" DROP TABLE IF EXISTS test_auto_inc_pk ");
        $nuDB->run("
            CREATE TABLE nubuilder4.test_auto_inc_pk
            (
                id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
                test varchar(50),
                dummy_id varchar(25)
            )
        ");
        $nuDB->run("CREATE UNIQUE INDEX test_auto_inc_pk_dummy_id_pk ON nubuilder4.test_auto_inc_pk (dummy_id) ");
        $nuDB->run("INSERT INTO nubuilder4.test_auto_inc_pk (test, dummy_id) VALUES ('test', 's14997524023241') ");
        $nuDB->run("
            REPLACE INTO nubuilder4.zzzzsys_object (zzzzsys_object_id, sob_all_zzzzsys_form_id, sob_all_table, sob_all_type, sob_all_id, sob_all_label, sob_all_zzzzsys_tab_id, sob_all_order, sob_all_top, sob_all_left, sob_all_width, sob_all_height, sob_all_cloneable, sob_all_align, sob_all_validate, sob_all_access, sob_all_default_value_sql, sob_calc_formula, sob_calc_format, sob_run_zzzzsys_form_id, sob_run_filter, sob_run_method, sob_run_id, sob_display_sql, sob_select_multiple, sob_select_sql, sob_lookup_code, sob_lookup_description, sob_lookup_description_width, sob_lookup_autocomplete, sob_lookup_zzzzsys_form_id, sob_lookup_javascript, sob_lookup_php, sob_lookup_table, sob_subform_zzzzsys_form_id, sob_subform_foreign_key, sob_subform_add, sob_subform_delete, sob_subform_type, sob_subform_table, sob_input_count, sob_input_format, sob_input_type, sob_input_javascript, sob_html_code, sob_image_zzzzsys_file_id) VALUES ('s14997520120835', 's14997519205096', 'test_auto_inc_pk', 'input', 'test', 'Test', 's14997519205097', 10, 27, 144, 200, 20, '1', 'left', '0', '0', '', '', '', '', '', '', '', '', '0', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', 0, '', 'text', '', '', '')
        ");
        $nuDB->run("
            REPLACE INTO nubuilder4.zzzzsys_object (zzzzsys_object_id, sob_all_zzzzsys_form_id, sob_all_table, sob_all_type, sob_all_id, sob_all_label, sob_all_zzzzsys_tab_id, sob_all_order, sob_all_top, sob_all_left, sob_all_width, sob_all_height, sob_all_cloneable, sob_all_align, sob_all_validate, sob_all_access, sob_all_default_value_sql, sob_calc_formula, sob_calc_format, sob_run_zzzzsys_form_id, sob_run_filter, sob_run_method, sob_run_id, sob_display_sql, sob_select_multiple, sob_select_sql, sob_lookup_code, sob_lookup_description, sob_lookup_description_width, sob_lookup_autocomplete, sob_lookup_zzzzsys_form_id, sob_lookup_javascript, sob_lookup_php, sob_lookup_table, sob_subform_zzzzsys_form_id, sob_subform_foreign_key, sob_subform_add, sob_subform_delete, sob_subform_type, sob_subform_table, sob_input_count, sob_input_format, sob_input_type, sob_input_javascript, sob_html_code, sob_image_zzzzsys_file_id) VALUES ('s14997519548528', 'nuhome', '', 'run', 'test_autoID', 'Test Auto ID', 'nutesttab', 180, 170, 64, 150, 30, '1', 'right', '1', '0', '', '', '', 's14997519205096', '', 'b', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '')
        ");
        $nuDB->run("
            REPLACE INTO nubuilder4.zzzzsys_tab (zzzzsys_tab_id, syt_zzzzsys_form_id, syt_title, syt_order) VALUES ('s14997519205097', 's14997519205096', 'Details', 10)
        ");
        $nuDB->run("
            REPLACE INTO nubuilder4.zzzzsys_form (zzzzsys_form_id, sfo_type, sfo_code, sfo_description, sfo_table, sfo_primary_key, sfo_browse_redirect_form_id, sfo_browse_row_height, sfo_browse_rows_per_page, sfo_browse_sql, sfo_javascript) VALUES ('s14997519205096', 'browseedit', 'AUTOID', 'Auto ID Test', 'test_auto_inc_pk', 'dummy_id', '', 0, 0, 'SELECT * FROM test_auto_inc_pk', '')
        ");
        $nuDB->run("
            REPLACE INTO nubuilder4.zzzzsys_browse (zzzzsys_browse_id, sbr_zzzzsys_form_id, sbr_title, sbr_display, sbr_align, sbr_format, sbr_order, sbr_width) VALUES ('s14997519205099', 's14997519205096', 'Test', 'test', 'l', '', 10, 200)
        ");

        $testLoginResponse = $client->post('nuapi.php', [
            'form_params' => [
                'nuSTATE' => [
                    'call_type' => 'login',
                    'username' => 'globeadmin',
                    'password' => 'nu',
                ]
            ]
        ]);
        $this->assertEquals(200, $testLoginResponse->getStatusCode());

        $test_response = $client->post('nuapi.php', [
            'form_params' => [
                'nuSTATE' => [
                    'form_id' => 's14997519205096',
                    'record_id' => 's14997524023241',
                    'call_type' => 'getform',
                ]
            ]
        ]);
        $test_response_array = json_decode($test_response->getBody()->getContents(),true);
        $this->assertArrayHasKey('objects', $test_response_array);
        $this->assertEquals(1, count($test_response_array['objects']));
        $this->assertEquals('test', $test_response_array['objects'][0]['value']);

        $nuDB->run("DROP TABLE test_auto_inc_pk ");

        $client_two = new Client([
            'base_uri' => 'http://localhost/nuBuilder4/',
            'cookies' => true,
        ]);

        $testLoginResponse = $client_two->post('nuapi.php', [
            'form_params' => [
                'nuSTATE' => [
                    'call_type' => 'login',
                    'username' => 'globeadmin',
                    'password' => 'nu',
                ]
            ]
        ]);
        $this->assertEquals(200, $testLoginResponse->getStatusCode());

        $nuDB->run("
            CREATE TABLE nubuilder4.test_auto_inc_pk
            (
                id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
                test varchar(50),
                dummy_id varchar(25)
            )
        ");
        $nuDB->run("CREATE UNIQUE INDEX test_auto_inc_pk_dummy_id_pk ON nubuilder4.test_auto_inc_pk (dummy_id) ");
        $nuDB->run("INSERT INTO nubuilder4.test_auto_inc_pk (test, dummy_id) VALUES ('test', 's14997524023241') ");

        $test_response = $client_two->post('nuapi.php', [
            'form_params' => [
                'nuSTATE' => [
                    'form_id' => 's14997519205096',
                    'record_id' => 's14997524023241',
                    'call_type' => 'getform',
                ]
            ]
        ]);
        $test_response_array = json_decode($test_response->getBody()->getContents(),true);
        $this->assertArrayHasKey('objects', $test_response_array);
        $this->assertEquals(1, count($test_response_array['objects']));
        $this->assertEquals('test', $test_response_array['objects'][0]['value']);

    }

}