<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
<title>Strona główna XHTML 1.1</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="trzecie.css" rel="stylesheet" />
<link href="styl.css" rel="stylesheet" />
</head>
<body>
<h1>Konstanty Dąbrowski - prowizoryczne menu</h1>
<header>
	 <?php include('menu.html'); ?>  
</header>
<br />
<form action="mailto:michal_kruk@sggw.edu.pl" method="get" enctype="text/plain">
<table><tbody>
	<tr>
  <td>
    <label for="name">Imię: </label>
    <input type="text" name="name" id="name" required />
  </td>
  </tr><tr>
  <td>
    <label for="name">Nazwisko: </label>
    <input type="text" name="surname" id="surname" required />
  </td>
  </tr><tr>
  <td>
    <label for="name">Ulica: </label>
    <input type="text" name="street" id="street" required />
  </td>
  </tr><tr>
  <td>
    <label for="name">Dom: </label>
    <input type="text" name="home" id="home" required size="8" />
  </td>
  </tr><tr>
  <td>
    <label for="name">Mieszkanie: </label>
    <input type="text" name="flat" id="flat" size="5"/>
  </td>
  </tr><tr>
  <td>
    <label for="name">Data urodzenia: </label>
    <input type="date" name="date" id="date" required />
  </td>
  </tr><tr>
  <td>
    <label for="email">Email: </label>
    <input type="email" name="email" id="email" required />
  </td>
  </tr><tr>
  <td>
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
  </td>
  </tr><tr>
  <td>
    <label for="gender">Płeć: </label>
    <input type="radio" name="gen2" id="gen2" />
	<label>K</label>
	<input type="radio" name="gen1" id="gen1" />
	<label>M</label>
  </td>
  </tr><tr>
  <td>
    <label for="phone">Tel: </label>
    <input type="tel" name="tel" id="tel"/>
  </td>
  </tr><tr>
  <td>
	<label for="text">Uwagi: </label>
	<textarea rows="5" cols="33" name="uwagi" id="uwagi" > Tu wpisz swoje uwagi.</textarea>
  </td>
  </tr><tr>
  <td>
    <input type="submit" value="Zatwierdź">
  </td>
  </tr>
  </tbody></table>
</form>
</body>
</html>
