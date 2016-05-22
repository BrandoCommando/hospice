<?php
if(!defined('IN_PHP')) die('Not for you!');

$db_host = '192.168.0.182';
$db_user = 'hospice';
$db_pass = 'montana';
$db_db = 'hospice';

$root = dirname(__FILE__);

require($root . '/smarty/libs/Smarty.class.php');

$smarty = new Smarty;
$smarty->setTemplateDir($root.'/templates');
$smarty->setCacheDir($root.'/smarty/cache');
$smarty->setCompileDir($root.'/smarty/templates_c');

$db = mysql_connect($db_host, $db_user, $db_pass) or die('No DB!');
mysql_select_db($db_db, $db) or die('No DB Schema!');

function func_send_json($j)
{
	header('Content-Type: application/json');
	if(is_array($j)||is_object($j))
		$j = json_encode($j);
	die($j);
}
function func_query($query)
{
	$res = mysql_query($query);
	if(!is_resource($res)) return false;
	$ret = array();
	while($row = mysql_fetch_assoc($res))
	{
		$ret[] = $row;
	}
	return $ret;
}

function func_query_first($query)
{
	$res = mysql_query($query);
	if(!is_resource($res)) return false;
	if($row = mysql_fetch_assoc($res))
		return $row;
	return false;
}

function func_query_first_cell($query)
{
	$res = mysql_query($query);
	if(!is_resource($res)) return false;
	if($row = mysql_fetch_row($res))
		return $row[0];
	return false;
}

?>