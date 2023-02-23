<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
<title>Test RegEx</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="styl.css" rel="stylesheet" />
<link href="favicon-120x120.png" type="image/png" rel="icon" sizes="120x120" />
<style type="text/css">
body
{
	font-family: Georgia, Tahoma, Arial;
}
form
{
	width: 500px;
	background-color: beige;
}
form
{
	display: grid;
	grid-template:	"a a" /auto;
}
td
{
	width: 50px;
}
span
{
	color: red;
}
</style>
<script type="text/javascript">
function CzyLiczba(tekst)
        {
            re = /[0-9]/g
            return(re.test(tekst));
        }
            
        function CzyLitera(tekst)
       {    
           re = /[A-Z]/gi
           return(re.test(tekst));
       }
	   
</script>
</head>
<body>
<h1>Konstanty Dąbrowski</h1>
<header>
<?php include('menu.html'); ?>
</header>
<br />
<br />
<form action="mailto:michal_kruk@sggw.edu.pl" method="get" enctype="text/plain">
  <div>
    <label for="name">Imię: </label>
    <input type="text" name="name" id="name" required />
	<span name="er1"><span>
  </div>
  <div>
    <label for="name">Nazwisko: </label>
    <input type="text" name="surname" id="surname" required />
	<span name="er1"><span>
  </div>
  <div>
    <label for="name">Ulica: </label>
    <input type="text" name="street" id="street" required />
	<span name="er1"><span>
  </div>
  <div>
    <label for="name">Dom: </label>
    <input type="text" name="home" id="home" required size="8" />
	<span name="er1"><span>
  </div>
  <div>
    <label for="name">Mieszkanie: </label>
    <input type="text" name="flat" id="flat" size="5"/>
	<span name="er1"><span>
  </div>
  <div>
    <label for="name">Data urodzenia: </label>
    <input type="date" name="date" id="date" required />
	<span name="er1"><span>
  </div>
  <div>
    <label for="email">Email: </label>
    <input type="email" name="email" id="email" required />
	<span name="er1"><span>
  </div>
  <div>
    <label for="license">Prawo jazdy: </label>
	<table border="1">
	<tr><td>
    <input type="checkbox" name="A" id="A" />
	<label>A</label></td><td>
	<input type="checkbox" name="B" id="B" />
	<label>B</label></td><td>
	<input type="checkbox" name="D" id="D" />
	<label>D</label></td>
	</tr>
	</table>
	<span name="er1"><span>
  </div>
  <div>
    <label for="gender">Płeć: </label>
    <input type="radio" name="gen2" id="gen2" />
	<label>K</label>
	<input type="radio" name="gen1" id="gen1" />
	<label>M</label>
	<span name="er1"><span>
  </div>
  <div>
    <label for="phone">Tel: </label>
    <input type="tel" name="tel" id="tel"/>
	<span name="er1"><span>
  </div>
  <div>
	<label for="text">Uwagi: </label>
	<textarea rows="5" cols="33" name="uwagi" id="uwagi" > Tu wpisz swoje uwagi.</textarea>
	<span name="er1"><span>
  </div>
  
  <div>
    <input type="submit" value="Zatwierdź">
  </div>
</form>
</body>
</html>
