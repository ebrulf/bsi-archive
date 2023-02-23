<!-- <?xml version="1.0" encoding="UTF-8"?> -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
	<head>
		<title>Prosty kalkulator w JavaScript</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<script src="https://unpkg.com/mathjs@10.4.2/lib/browser/math.js"></script>
		<script src="skrypt.js">
		// domyślnie są to type="text/javascript"
		</script>
		<link href="styl.css" rel="stylesheet" />
		<link href="favicon-120x120.png" type="image/png" rel="icon" sizes="120x120" />
	</head>
	<body>
	<header>
	 <?php include('menu.html'); ?>
	</header>
	<br />
	<h1>Kalkulator</h1>
<div class="rama">
	<div class="text">
		<input type="text" name="output" id="wynik" value="0" maxlength="19" placeholder="Ekran kalkulatora" disabled />
	</div><!-- 19 miejsc -->
	<div class="7"><input type="button" value="7" id="siedem" onClick="wstaw(this.value)"/></div><!-- w tym miejscu nie trzymam się javapoint -->
	<div class="8"><input type="button" value="8" id="osiem" onClick="wstaw(this.value)"/></div>
	<div class="9"><input type="button" value="9" id="dziewiec" onClick="wstaw(this.value)"/></div>
	<div class="+"><input type="button" value="+" id="plus" onClick="wstaw(this.value)"/></div>
	<div class="4"><input type="button" value="4" id="cztery" onClick="wstaw(this.value)"/></div>
	<div class="5"><input type="button" value="5" id="piec" onClick="wstaw(this.value)"/></div>
	<div class="6"><input type="button" value="6" id="szesc" onClick="wstaw(this.value)"/></div>
	<div class="-"><input type="button" value="-" id="minus" onClick="wstaw(this.value)"/></div>
	<div class="1"><input type="button" value="1" id="jeden" onClick="wstaw(this.value)"/></div>
	<div class="2"><input type="button" value="2" id="dwa" onClick="wstaw(this.value)"/></div>
	<div class="3"><input type="button" value="3" id="trzy" onClick="wstaw(this.value)"/></div>
	<div class="*"><input type="button" value="*" id="razy" onClick="wstaw(this.value)" /></div>
	<div class="clear"><input type="reset" value="CE" onClick="reset()"/></div>
	<div class="0"><input type="button" value="0" id="zero" onClick="wstaw(this.value)"/></div>
	<div class="="><input type="submit" value="=" id="rowna_sie" onClick="oblicz()"/></div>
	<div class="/"><input type="button" value="/" id="przez" onClick="wstaw(this.value)"/></div>
</div>
<!-- 1/3 * 3 spełnione -->
	</body>
</html>
