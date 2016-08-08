<?php
define('IN_PHP',1);
require('config.php');

if(!empty($_GET['patient']))
	$patient = func_query_first(sprintf("SELECT * FROM patient WHERE id = %d", $_GET['patient']));
else
	$patient = func_query_first("SELECT * FROM patient WHERE active = 1 ORDER BY last_name, first_name, mr_num LIMIT 1");

$pid = $patient['id'];
$patient['diagnosis'] = func_query("SELECT * FROM patient_diagnosis WHERE patient_id = $pid");
$patient['insurance'] = func_query("SELECT * FROM patient_insurance WHERE patient_id = $pid");
$patient['physician'] = func_query("SELECT * FROM patient_physician WHERE patient_id = $pid ORDER BY CASE WHEN role = 'Attending' THEN 1 ELSE 2 END");

$service_entries = array();
$service_entries[] = array(
	'rev_code' => '0658',
	'description' => 'n/a',
	'svc_qual' => '',
	'hcpcs_code' => '',
	'service_from' => date('n/d/Y', time()-(60*60*24*7)),
	'service_to' => date('n/d/Y', time()-(60*60*24)),
	'service_units' => '18',
	'charges' => 4567.89,
	'noncov' => '',
	'ndc_code' => ''
	);
while(count($service_entries)<22)
	$service_entries[] = array();
	
$billing = array(
	'group' => 'ACTIVE HOSPICE CARE INC',
	'provider' => 'ACTIVE HOSPICE CARE INC',
	'address' => '704 S VICTORY BLVD STE 100',
	'city' => 'BURBANK',
	'state' => 'CA',
	'zip' => '915022471'
	);
$payto = array(
	);
$statement = array(
	'from' => date('n/d/Y', time()-(60*60*24*7)),
	'to' => date('n/d/Y', time())
	);
$payer = array(
	'name' => 'CARE1STHEALTHPLAN',
	'code' => 'C1SCA'
	);
	
$smarty->assign('main', 'ub04');

$smarty->assign('service_entries', $service_entries);
$smarty->assign('billing', $billing);
$smarty->assign('payto', $payto);
$smarty->assign('statement', $statement);
$smarty->assign('patient', $patient);
$smarty->assign('payer', $payer);

mysql_close();
$smarty->display('home.tpl');


?>