<?php

$_curl_headers = array();
function _curl_header($res,$hdr)
{
	global $_curl_headers;
	$_curl_headers[] = preg_replace('/\s*$/', '', $hdr);
	return strlen($hdr);
}
function login($user, $pass)
{
	global $_curl_headers;
	$ch = curl_init();
	@unlink('/tmp/mcs.txt');
	curl_setopt_array($ch, array(
		CURLOPT_URL => 'https://www.mastercaresoftware.net/login.a5wcmp?__virtualPage=__a5RunDialog.a5w&__pageName=login.a5w&__dialogFilename=login&__alias=LOGIN&__unsaved=no',
		CURLOPT_RETURNTRANSFER => 1,
		CURLOPT_SSL_VERIFYPEER => 0,
		CURLOPT_SSL_VERIFYHOST => 0,
		CURLOPT_FOLLOWLOCATION => 1,
		CURLOPT_COOKIEJAR => '/tmp/mcs.txt',
		CURLOPT_USERAGENT => 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36',
		CURLOPT_COOKIEFILE => '/tmp/mcs.txt',
		CURLOPT_POSTFIELDS => array('V.R1.USERNAME' => $user, 'V.R1.PASSWORD' => $pass, '__Ajax' => 'true', '_XbasicFunction' => 'system:login', '__FormAction' => 'GenericAjaxCallback', '__FormID' => 'undefined', '_state.__dialogGuid' => 'e397e704-76f9-4bd1-a40b-4cab13eb723d', '_state.__dtfmt' => 'MM/dd/yyyy', '_state.listsControls' => '{}', '__componentGUID' => 'c6bbe240-c568-41bb-915d-b49bb106b7f5', '__callbackId' => '0C367A7B-68B2-4545-89B2-20963634BA25', '__securityAction' => '', '__loginSettings' => '{}'),
		CURLOPT_HTTPHEADER => array('X-Requested-With: XMLHttpRequest'),
		CURLOPT_REFERER => 'https://www.mastercaresoftware.net/login.a5w',
		CURLOPT_HEADERFUNCTION => '_curl_header'
		));
	$result = curl_exec($ch);
	$headers = $_curl_headers;
	return array($headers, $result);
}
function curl($url, $post = false)
{
	global $_curl_headers;
	$ch = curl_init($url);
	curl_setopt_array($ch, array(
		CURLOPT_RETURNTRANSFER => 1,
		CURLOPT_SSL_VERIFYPEER => 0,
		CURLOPT_SSL_VERIFYHOST => 0,
		CURLOPT_USERAGENT => 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36',
		CURLOPT_COOKIEJAR => '/tmp/mcs.txt',
		CURLOPT_COOKIEFILE => '/tmp/mcs.txt',
		CURLOPT_HTTPHEADER => array('X-Requested-With: XMLHttpRequest'),
		CURLOPT_HEADERFUNCTION => '_curl_header'
		));
	if($post)
		curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
	$result = curl_exec($ch);
	$headers = $_curl_headers;
	return array($headers, $result);
}

$cp1252_map = array(
    "\xc2\x80" => "\xe2\x82\xac", /* EURO SIGN */
    "\xc2\x82" => "\xe2\x80\x9a", /* SINGLE LOW-9 QUOTATION MARK */
    "\xc2\x83" => "\xc6\x92",     /* LATIN SMALL LETTER F WITH HOOK */
    "\xc2\x84" => "\xe2\x80\x9e", /* DOUBLE LOW-9 QUOTATION MARK */
    "\xc2\x85" => "\xe2\x80\xa6", /* HORIZONTAL ELLIPSIS */
    "\xc2\x86" => "\xe2\x80\xa0", /* DAGGER */
    "\xc2\x87" => "\xe2\x80\xa1", /* DOUBLE DAGGER */
    "\xc2\x88" => "\xcb\x86",     /* MODIFIER LETTER CIRCUMFLEX ACCENT */
    "\xc2\x89" => "\xe2\x80\xb0", /* PER MILLE SIGN */
    "\xc2\x8a" => "\xc5\xa0",     /* LATIN CAPITAL LETTER S WITH CARON */
    "\xc2\x8b" => "\xe2\x80\xb9", /* SINGLE LEFT-POINTING ANGLE QUOTATION */
    "\xc2\x8c" => "\xc5\x92",     /* LATIN CAPITAL LIGATURE OE */
    "\xc2\x8e" => "\xc5\xbd",     /* LATIN CAPITAL LETTER Z WITH CARON */
    "\xc2\x91" => "\xe2\x80\x98", /* LEFT SINGLE QUOTATION MARK */
    "\xc2\x92" => "\xe2\x80\x99", /* RIGHT SINGLE QUOTATION MARK */
    "\xc2\x93" => "\xe2\x80\x9c", /* LEFT DOUBLE QUOTATION MARK */
    "\xc2\x94" => "\xe2\x80\x9d", /* RIGHT DOUBLE QUOTATION MARK */
    "\xc2\x95" => "\xe2\x80\xa2", /* BULLET */
    "\xc2\x96" => "\xe2\x80\x93", /* EN DASH */
    "\xc2\x97" => "\xe2\x80\x94", /* EM DASH */

    "\xc2\x98" => "\xcb\x9c",     /* SMALL TILDE */
    "\xc2\x99" => "\xe2\x84\xa2", /* TRADE MARK SIGN */
    "\xc2\x9a" => "\xc5\xa1",     /* LATIN SMALL LETTER S WITH CARON */
    "\xc2\x9b" => "\xe2\x80\xba", /* SINGLE RIGHT-POINTING ANGLE QUOTATION*/
    "\xc2\x9c" => "\xc5\x93",     /* LATIN SMALL LIGATURE OE */
    "\xc2\x9e" => "\xc5\xbe",     /* LATIN SMALL LETTER Z WITH CARON */
    "\xc2\x9f" => "\xc5\xb8"      /* LATIN CAPITAL LETTER Y WITH DIAERESIS*/
);

function cp1252_to_utf8($str) {
        global $cp1252_map; 
        return  strtr($str, $cp1252_map);
}
function fix_string($string) {
// 	$string = preg_replace("#[\x09\x0A\x0D\x20-\x7E]#"        ,"",$string);         // ASCII 
// 	$string = preg_replace("#[\xC2-\xDF][\x80-\xBF]#"            ,"",$string);             // non-overlong 2-byte 
// 	$string = preg_replace("#\xE0[\xA0-\xBF][\x80-\xBF]#"    ,"",$string);     // excluding overlongs 
// 	$string = preg_replace("#[\xE1-\xEC\xEE\xEF][\x80-\xBF]{2}#","",$string);     // straight 3-byte 
// 	$string = preg_replace("#\xED[\x80-\x9F][\x80-\xBF]#"    ,"",$string);     // excluding surrogates 
// 	$string = preg_replace("#\xF0[\x90-\xBF][\x80-\xBF]{2}#","",$string);     // planes 1-3 
// 	$string = preg_replace("#[\xF1-\xF3][\x80-\xBF]{3}#"    ,"",$string);     //  planes 4-15 
// 	$string = preg_replace("#\xF4[\x80-\x8F][\x80-\xBF]{2}#","",$string);     // plane 16 
 	$string = str_replace(chr(26), '', $string);
	return $string;
}

$user = $pass = false;
if(php_sapi_name()=='cli' && $argc > 1)
{
	if($argc > 2)
		$pass = $argv[2];
	$user = $argv[1];
} else {
	if(!empty($_GET['user']))
		$user = $_GET['user'];
	elseif(!empty($_POST['user']))
		$user = $_POST['user'];
	if(!empty($_GET['pass']))
		$pass = $_GET['pass'];
	elseif(!empty($_POST['pass']))
		$pass = $_POST['pass'];
}
if(empty($user)||empty($pass))
{
?>
	<form method="POST">
	<label>User: <input name="user" /></label><br>
	<label>Password: <input name="pass" type="password" /></label><br>
	<input type="submit" value="Scrape" />
	</form>
<?php
die();
}
$login = login($user, $pass);
$main = curl('https://www.mastercaresoftware.net/main.a5w');
$contacts = curl('https://www.mastercaresoftware.net/Contacts.a5wcmp?__virtualPage=__a5RunGrid.a5w&__pageName=Staff_Information.a5w&__gridFilename=Contacts&__alias=CONTACTS&__unsaved=no&_isLookupGrid=false', array('__si.RowCount' => '200', '__Ajax' => 'true', '__FormID' => 'CONTACTS', '__si.pageNumber' => '1', '__si.lrn' => '1', '__si.dtFmt' => 'MM/dd/yyyy', '__si.initialized' => 'True', '__si.GUID' => '58744772-21d0-45f0-a77b-e7ef05cb0c02'));

if(!empty($contacts[1])&&strpos($contacts[1], '_setInitialDVData')!==false)
{
	$contacts = substr($contacts[1], strpos($contacts[1], '_setInitialDVData'));
	$contacts = substr($contacts, 18, strpos($contacts, "\r\n") - 20);
	$contacts = fix_string($contacts);
	$contacts = str_replace(array("\"", "'", "\\\""), array('~', '"', "'"), $contacts);
	$map = explode("\t", "				Contact Type	Type of Facility	Type of Insurance		LoginID	ContactID		First	Middle	Last	Company	Address	Zipcode	City	State	Country	Office	Home	Cell	Fax			ReferredBy	ReferalSource					Date Entered	Date Modified		NPI		Taxonomy	Role	Display Name");
	
	if($json = json_decode($contacts,true))
	{
		header('Content-Type: text/plain');
		foreach($map as $i => $col)
			if(!empty($col))
				echo $col . ($i < count($map) - 1 ? "\t" : '');
		echo "\n";
		foreach($json as $row)
		{
			foreach($row as $i => $col)
				if(!empty($map[$i]))
					echo (is_array($col) ? json_encode($col) : str_replace("\n", "\\n", $col)) . ($i < count($row) - 1 ? "\t" : '');
			echo "\n";
		}
		unlink('/tmp/mcs.txt');
		die();
	}
	else
	{
// 		die('JSON Error: ' . json_last_error());
// 		$contacts = str_replace('[]', '', $contacts);
// 		$contacts = str_replace('],[', "],\n[", $contacts);
		header('Content-Type: application/json');
		$bytes = array();
		$contacts = substr($contacts, strpos($contacts, 'PNG'),20);
		for($i=0;$i<strlen($contacts);$i++)
			$bytes[] = array(ord($contacts[$i]) => $contacts[$i]);
		die(json_encode($bytes));
	}
}

header('Content-Type: application/json');
die(json_encode(array('login' => $login, 'main' => $main, 'contacts' => $contacts)));

?>