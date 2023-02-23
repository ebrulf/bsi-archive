<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
<title>PHP Login</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="styl.css" rel="stylesheet" />
<link href="favicon-120x120.png" type="image/png" rel="icon" sizes="120x120" />
</head>
	<body>
	<header>
	<?php include('menu.html'); ?>
	</header>
	<div class="rama">
	<form action="login.php" method="post">
	<label>Login</label><input type="text" name="login" />
	<label>Hasło</label><input type="text" name="password" />
	<input type="submit" name="log" value="Zaloguj"/>
	</form>
	<form action="logout.php" method="post">
	<input type="submit" name="log" value="Wyloguj się"/>
	</form>
	</div>
	<p>
	<?php
	if(isset($_SESSION["log"]))
	{
		if($_SESSION["log"] == 0)
		{
		echo("Obecnie nie zalogowano się");
		}
		else
		{
		echo("Obecnie zalogowano się");
		}
	}
	else
	{
		echo("Sesja się nie udała");
	}
	?>
	</p>
	</body>
</html>