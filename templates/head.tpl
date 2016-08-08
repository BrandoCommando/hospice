{if $main eq "ub04"}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
{else}
<!DOCTYPE html>
{/if}
<html lang="en">
<head>
<title>{$title|default:"Hospice Helper"}</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/bootstrap.min.css" />
<link rel="stylesheet" href="assets/jquery-ui.min.css" />
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript" src="assets/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/jquery-ui.min.js"></script>
<script type="text/javascript" src="assets/hospice.js"></script>
</head>
<body class="{$main}">

    <div class="container">
	
	{if $main ne "ub04" && !$skip_nav}
		{include file="nav.tpl"}
		{/if}
		
		