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
<h1>Zadanie</h1>
<div>
	 <?php include('menu.html'); ?>  
</div>
<div class="table" align="center">

<div class="header"><h2>Zdjęcia z Wikimedia</h2></div>
<div class="td"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Narcissus_%27Ice_Follies%27_02.jpg/238px-Narcissus_%27Ice_Follies%27_02.jpg" alt="Zdjęcie narcyza"/> <br /><strong>Narcyz</strong></div>
<div class="td"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/ISS054-E-45203_-_View_of_Earth.jpg/320px-ISS054-E-45203_-_View_of_Earth.jpg" alt="Zdjęcie Ziemi"/> <br /><strong>Widok ze stacji kosmicznej</strong></div>

<div class="td">
<figure>
<picture>
    <source srcset="https://upload.wikimedia.org/wikipedia/commons/1/1d/Wappen_Linx.png"
            media="(max-width: 50px)">
    <img src="https://upload.wikimedia.org/wikipedia/commons/1/1d/Wappen_Linx.png" alt="Herb Linx" width="50px"/>
</picture>
</figure>
<figcaption>Herb Linx</figcaption>
</div>
<div class="td">
<figure>
<picture>
    <source srcset="https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Slenaken-Heilig_Hartbeeld_%287%29.jpg/135px-Slenaken-Heilig_Hartbeeld_%287%29.jpg"
            media="(max-height: 200px)">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Slenaken-Heilig_Hartbeeld_%287%29.jpg/135px-Slenaken-Heilig_Hartbeeld_%287%29.jpg" alt="Rzeźba Najświętszego Serca" height="200px" width="200px"/>
</picture>
</figure>
<figcaption>Rzeźba Najświętszego Serca Pana Jezusa w Slenaken (rozciągnięta)</figcaption>
</div>

</div>

<p>Jest to zadanie <em>3b</em>. Inne zadania: <a href="zadanie3c.php">3c</a>. Wersja z tabelką o <a href="zadanie2b.php">tu</a>.<br/>
Dlaczego użyłem grid zamiast tabeli: <a href="https://eev.ee/blog/2020/02/01/old-css-new-css/">wyjaśnienie</a> plus <a href="https://eev.ee/media/2020-02-css/thumbnail-grids.html">demo</a>.</p>
</body>
</html>
