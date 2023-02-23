<!DOCTYPE html>
<html lang="pl">
<head>
<title>Strona główna HTML5</title>
<meta charset=UTF-8 />
<link href="http://fonts.googleapis.com/css?family=lato&subset=latin,latin-ext" rel="stylesheet" type="text/css" />
<link href="styl.css" rel="stylesheet" />
<style>
body
{
	font-family: Lato, Tahoma, Arial;
}
</style>
<link href="favicon-120x120.png" rel="icon" type="image/png" sizes="120x120" />
</head>
<body>
<header>
	 <?php include('menu.html'); ?> <br /> 
</header>
<h1>
<?php
$imie = "Konstanty";
$nazwisko = "Dąbrowski";
echo $imie . " " . $nazwisko;
?>
</h1>
<img src="https://www.w3.org/QA/Tools/I_heart_validator.png" alt="I love Validator" title="This page used W3 Validator" style="width:80px; height:15px;"/>
<p>Jest to demo wersji <em>HTML5</em>. Inne wersje: <a href="xml.html">XHTML 1.1</a></p>
</body>
</html>
