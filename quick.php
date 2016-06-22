<?php
define('IN_PHP',1);
require('config.php');

if(!empty($_POST['action']))
{
	$action = $_POST['action'];
	if($action=='update')
	{
		$data = $_POST;
		if(!empty($data['discharge_date']))
			$data['discharged'] = $data['discharge_date'] . ' ' . $data['discharge_time'];
		patient_update($data);
		func_header_location('quick.php?id='.$_POST['patient_id']);
	} elseif($action=='add')
	{
		$patient_id = patient_add($_POST);
		if(!empty($patient_id))
			func_header_location('quick.php?id='.$patient_id);
		else func_header_location('quick.php?err=add');
	}
}

if(!empty($_GET['id'])&&is_numeric($_GET['id']))
{
	$patient_id = $_GET['id'];
	$patient = patient_info($patient_id);
	$smarty->assign($patient);
	// 	func_send_json(json_encode($smarty->tpl_vars));
} else {
}

$smarty->assign('patients', func_query("SELECT id, mr_num, first_name, last_name FROM patient WHERE active = 1 ORDER BY last_name, first_name, mr_num"));

mysql_close();
$smarty->display('quick_entry.tpl');
?>
