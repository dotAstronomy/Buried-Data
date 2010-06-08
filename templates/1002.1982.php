<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>

<title>Buried Data</title>

<meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
<meta name="author" content="Erwin Aligam - styleshout.com" />
<meta name="description" content="Astronomical Graveyoard" />
<meta name="keywords" content="keywords, here" />
<meta name="robots" content="index, follow, noarchive" />
<meta name="googlebot" content="noarchive" />
<link rel="stylesheet" type="text/css" media="screen" href="burieddata.css" />

<script type="text/javascript">

function printTagCloud($tags) {
        // $tags is the array
       
        arsort($tags);
       
        $max_size = 32; // max font size in pixels
        $min_size = 12; // min font size in pixels
       
        // largest and smallest array values
        $max_qty = max(array_values($tags));
        $min_qty = min(array_values($tags));
       
        // find the range of values
        $spread = $max_qty - $min_qty;
        if ($spread == 0) { // we don't want to divide by zero
                $spread = 1;
        }
       
        // set the font-size increment
        $step = ($max_size - $min_size) / ($spread);
       
        // loop through the tag array
        foreach ($tags as $key => $value) {
                // calculate font-size
                // find the $value in excess of $min_qty
                // multiply by the font-size increment ($size)
                // and add the $min_size set above
                $size = round($min_size + (($value - $min_qty) * $step));
       
                echo '<a href="#" style="font-size: ' . $size . 'px" 
title="' . $value . ' things tagged with ' . $key . '">' . $key . '</a> ';
        }
}


</script>

</head>

<body>
<!-- wrap starts here -->	
<div id="wrap">

<?php

include("header.php");

?>	


<!-- content-wrap starts here -->
	  <div id="content-wrap">

		<div id="left">

		<h1>data/1002.1982</h1>


			<h3><a href="">C.J. Lintott</a>, <a href="">A. Smith</a> and <a href="">S.A.S. Kendrew</a></h3>
			
			<p>These data were collected secretly at Kitt Peak by a team of crack astronomers. We were too busy making BuriedData to bother processing them. It includes images and spectra of every SDSS galaxy in Galaxy Zoo. If you analyse it for us we get to keep our day jobs.</p>

			<div id="comments">
			<h3>Comments</h3>
				<ul>
				<li class="comments">These data are really badly calibrated. You need to do some flat-fielding first.<div class="commenttools">about 30 minutes ago | <a href="">report as spam</a></div></li>
				<li class="comments">What were they drinking when they collected these data?<div class="commenttools">about 2 days ago | <a href="">report as spam</a></div></li>
				</ul>
			</div>

		</div>

  		<div id="right">

			<div id="chromoscopeholder">
				<img class="chromoscope" src="images/chromoscope.png" width="500">
			</div>

		<div id="tags">
			<h3>Tags</h3>
			<a href="http://www.wordle.net/show/wrdl/1652426/galaxy_zoo" target="_blank"><img src="images/galaxyzoo-wordle.png" width="280"></a>

		</div>

			<h3>Links</h3>
			<ul>
				<li><a href="">C.J. Lintott, et al (2009)</a></li>
				<li><a href="">S. Omebody et al. (2003)</a></li>
				<li><a href="">I. Newton, et al (1675)</a></li>
			</ul>
		</div>

			<!-- content-wrap ends here -->
	</div>

	<?php

	include("footer.html");

	?>