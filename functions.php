<?php
function patient_update($data)
{
	$update = array();
	$patient_id = $data['patient_id'];
	if(empty($patient_id)) return false;
	$patient = patient_info($patient_id);
	foreach($patient as $tbl => $vals)
	{
		if(empty($vals))
			$vals = func_query_column("SHOW COLUMNS FROM patient_$tbl");
		$tblup = array();
		foreach($vals as $k => $v)
		{
			if(is_numeric($k)) continue;
			if(isset($data[$tbl][$k]) && $data[$tbl][$k] != $v)
				$tblup[$k] = mysql_real_escape_string($data[$tbl][$k]);
		}
		if(empty($tblup)) continue;
		if($tbl=='patient')
			func_array2update('patient', $tblup, 'id = ' . $patient_id);
		else
			func_array2update('patient_'.$tbl, $tblup, 'patient_id = ' . $patient_id);
	}
}
function patient_add($data)
{
	$patient_id = false;
	if(empty($data['patient'])) return false;
	$patient = array();
	foreach($data['patient'] as $k => $v)
		if(!empty($v))
			$patient[$k] = mysql_real_escape_string($v);
	if(isset($patient['discharge_date']))
	{
		$dis = $patient['discharge_date'];
		if(!empty($patient['discharge_time']))
			$dis .= ' ' . $patient['discharge_time'];
		unset($patient['discharge_date']);
		unset($patient['discharge_time']);
		$patient['discharged'] = $dis;
	}
	$patient_id = func_array2insert('patient', $patient);
	if(empty($patient_id)) return false;
	foreach($data as $tbl => $vals)
		if($tbl != 'patient')
		{
			$cols = func_query_column("SELECT * FROM information_schema.columns WHERE TABLE_SCHEMA = DATABASE() AND TABLE_NAME = '$tbl'");
			if(empty($cols)) continue;
			$insert = array();
			foreach($vals as $k => $v)
				if(!empty($v)&&in_array($k,$cols))
					$insert[$k] = $v;
			if(empty($insert)) continue;
			$vals['patient_id'] = $patient_id;
			func_array2insert('patient_' . $tbl, $insert);
		}
	return $patient_id;
}
function patient_info($patient_id)
{
	$tables = array('location','diagnosis','physician','insurance','certification');
	$ret = array();
	$ret['patient'] = func_query_first("SELECT * FROM patient WHERE id = $patient_id");
	foreach($tables as $tbl)
	{
		$data = func_query("SELECT * FROM patient_$tbl WHERE patient_id = $patient_id");
		if($tbl=='diagnosis')
		{
			$_data = array();
			foreach($data as $diag)
			{
				$src = str_replace(' ', '_', $diag['source']);
				if(array_key_exists($src, $_data))
				{
					if(!empty($_data[$src]['id']))
						$_data[$src] = array($_data[$src], $diag);
					else
						$_data[$src][] = $diag;
				} else
					$_data[$src] = $diag;
			}
			$data = $_data;
		}
		$ret[$tbl] = $data;
	}
	return $ret;
}
function func_header_location($href)
{
	mysql_close();
	header('HTTP/1.1 302 Permanent Redirect');
	header('Location: ' . $href);
}
function func_send_json($j)
{
	mysql_close();
	header('Content-Type: application/json');
	if(is_array($j)||is_object($j))
		$j = json_encode($j);
	die($j);
}
function func_send_plain($txt)
{
	mysql_close();
	header('Content-Type: text/plain');
	echo $txt;
	die();
}
function func_array2insert($table, $vals)
{
	if(empty($table)) return false;
	if(empty($vals)) return false;
	$q = sprintf("INSERT INTO %s (%s) VALUES (%s)",
			$table,
			"`" . implode("`, `", array_keys($vals)) . "`",
			"'" . implode("', '", array_values($vals)) . "'");
	$res = mysql_query($q);
	if(!$res)
		func_send_plain(mysql_error()."\nQuery:\n" . $q);
	return mysql_insert_id();
}
function func_array2update($table, $vals, $where)
{
	if(empty($vals)) return false;
	$q = "UPDATE $table SET ";
	foreach($vals as $k => $v)
		$q .= sprintf("`%s` = '%s', ", $k, mysql_real_escape_string($v));
	$q = substr($q, 0, strlen($q) - 2);
	$q .= " WHERE $where";
	$res = mysql_query($q);
	if(!$res)
		func_send_plain(mysql_error()."\nQuery:\n" . $q);
	else return $res;
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
function func_query_column($query, $col = 0)
{
	$res = mysql_query($query);
	if(!is_resource($res)) return false;
	$ret = array();
	while($row = mysql_fetch_array($res, MYSQL_BOTH))
	{
		$ret[] = $row[$col];
	}
	return $ret;
}
?>