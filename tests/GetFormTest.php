<?php

/**
 * Created by PhpStorm.
 * User: David
 * Date: 7/11/2017
 * Time: 4:39 PM
 */

use PHPUnit\Framework\TestCase;
use GuzzleHttp\Client;

final class GetFormTest extends TestCase
{

    public function testnuSoftwareTestPolicyExists() {
        $this->assertEquals('test','test'); // The very first nuSoftware unit test - Never remove
    }

    public function testBasicPostTonuapi(){
        $client = new Client([
            'base_uri' => 'http://localhost/nuBuilder4/'
        ]);
        $testLoginResponse = $client->post('nuapi.php', array(
            'form_params' => array(
                'nuSTATE' => array(
                    'call_type' => 'login',
                    'username' => 'globeadmin',
                    'password' => 'nu',
                )
            )
        ));
        $this->assertEquals(200, $testLoginResponse->getStatusCode());
    }

}