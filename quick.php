<?php
define('IN_PHP',1);
require('config.php');

$tables = array('location','diagnosis','physician','insurance','cartification');
if(!empty($_GET['id'])&&is_numeric($_GET['id']))
{
	$demo_id = $_GET['id'];
	$smarty->assign('patient', func_query_first("SELECT * FROM demographics WHERE id = $demo_id"));
	foreach($tables as $tbl)
		$smarty->assign($tbl, func_query("SELECT * FROM $tbl WHERE demo_id = $demo_id"));
// 	func_send_json(json_encode($smarty->tpl_vars));
} else {
	$smarty->assign('patient', false);
	foreach($tables as $tbl)
		$smarty->assign($tbl, false);
}

$smarty->assign('patients', func_query("SELECT id, mr_num, first_name, last_name FROM demographics WHERE active = 1 ORDER BY last_name, first_name, mr_num"));

$smarty->display('quick_entry.tpl');
?>
