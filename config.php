<?php
if(!defined('IN_PHP')) die('Not for you!');

$db_host = '127.0.0.1';
$db_user = 'hospice';
$db_pass = 'montana';
$db_db = 'hospice';

$all_lists = array(
	'admit_type' => array('New Admit','Re-Admit','Transfer')
	,'status' => array('Pending','Active','Revoked','Expired','Discharged - Moved','Discharged - Stable','Discharged - Non Compliant','Discharged - Transferred','Non-Admit')
	,'sex' => array('F','M')
	,'race' => array('White','Black','Native American','Asian / Pacific Islander','Other / Unknown','More than one race')
	,'marital' => array('Single','Married','Separated','Divorced','Widowed')
	,'ethnicity' => array('Hispanic','Non-Hispanic','Unknown')
	,'location' => array('Board &amp; Care', 'Assist Living','LTC (non-SNP)','SNF','Hospital','Psychiatric Facility','Hospice Facility','Home','Other')
	,'physician_role' => array('Attending','Hospice','Med Dir','Other','Primary','Secondary')
	,'insurance_company' => array('1008'=>'Anthem Blue Cross','126'=>'Blue Cross','1006'=>'Blue Shield','1002'=>'Medi-Cal','1001'=>'Medicare','7162'=>'Private Insurance','12832'=>'VA')
	,'insurance_role' => array('Primary','Secondary','Inactive')
	,'certification_type' => array('Medicare','Medical','Private','Other')
	);

$root = dirname(__FILE__);

require($root . '/smarty/libs/Smarty.class.php');

$smarty = new Smarty;
$smarty->debugging = FALSE;
$smarty->error_reporting = E_ERROR;
$smarty->setTemplateDir($root.'/templates');
$smarty->setCacheDir($root.'/smarty/cache');
$smarty->setCompileDir($root.'/smarty/templates_c');

$smarty->assign('lists', $all_lists);

$db = mysql_connect($db_host, $db_user, $db_pass) or die('No DB!');
mysql_select_db($db_db, $db) or die('No DB Schema!');

require($root.'/functions.php');
?>