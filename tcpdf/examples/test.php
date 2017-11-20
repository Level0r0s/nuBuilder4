<?php

require_once('tcpdf_include.php');

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}
$pdf->SetFont('freeserif', '', 8);


$pdf->AddPage();
$pdf->SetFillColor(255, 255, 127);
$txt = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
//$pdf->MultiCell(55, 5, $txt, 1, 'L', 1, 0, '', '', true);
$pdf->MultiCell(100, 10, 'Hleď, toť přízračný kůň v mátožné póze šíleně úpí', 1, 'L', 1, 0, '', '', true); 

$pdf->lastPage();

$pdf->Output('example_005.pdf', 'I');
