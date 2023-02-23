<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
<title>PHP Logowanie się</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="favicon-120x120.png" type="image/png" rel="icon" sizes="120x120" />
<?php 
	session_start();
	$l = $_POST["login"];
    $p = $_POST["password"];
	if($l == "dziekan" && $p == "12345678")
	{
		if($_SESSION["log"] == 0)
		{
			$_SESSION["log"] = 1;
		}
	}
	print_r($_SESSION);
	
	header("Location: zadanie8.php");
?>
</head>
<body>
</body>
</html>
