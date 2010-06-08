
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
</head>

<body>
<!-- wrap starts here -->	
<div id="wrap">

	<?php

	include("header.php");

	?>	


<!-- content-wrap starts here -->
	  <div id="content-wrap">
	  
	  		<div id="main"> 

<h1>Showing off styles in our css</h1>

				<h2>Buried Data in h2 header</h2>

<p>
Here are some styles. First, the blockquote. I dont know what we'll us it for but it's there so why not.
</p>
	
<blockquote><p>I've started, you finish</p></blockquote>

<a name="SampleTags"></a>				
<h1>Sample Tags</h1>

<h3>Code</h3>				
<p><code>
code-sample { <br />
font-weight: bold;<br />
font-style: italic;<br />				
}
</code></p>	

<h3>Example Lists</h3>

<ol>
	<li><span>example of ordered list</span></li>
	<li><span>uses span to color the numbers</span></li>								
</ol>	
			
<ul>
	<li><span>example of unordered list</span></li>
	<li><span>uses span to color the bullets</span></li>								
</ul>				
				
				
<h3>Example Form</h3>
<form action="#">		
<p>				
<label>Name</label>
<input name="dname" value="Your Name" type="text" size="30" />
<label>Email</label>
<input name="demail" value="Your Email" type="text" size="30" />
<label>Your Comments</label>
<textarea rows="5" cols="5"></textarea>
<br />	
<input class="button" type="submit" />		
</p>		
</form>				
<br />		

	</div> 	
	  
	<div id="sidebar">
			
		<h1>Sidebar Menu</h1>				
		<ul class="sidemenu">
			<li><a href="index.html">Home</a></li>
			<li><a href="#TemplateInfo">Template Info</a></li>
			<li><a href="#SampleTags">Sample Tags</a></li>
			<li><a href="http://www.styleshout.com/">More Free Templates</a></li>	
			<li><a href="http://www.dreamtemplate.com" title="Web Templates">Web Templates</a></li>
	    </ul>
		
		<h1>Site Partners</h1>				
		<ul class="sidemenu">
            <li><a href="http://www.dreamtemplate.com" title="Website Templates">DreamTemplate</a></li>
            <li><a href="http://www.themelayouts.com" title="WordPress Themes">ThemeLayouts</a></li>
            <li><a href="http://www.imhosted.com" title="Website Hosting">ImHosted.com</a></li>
            <li><a href="http://www.dreamstock.com" title="Stock Photos">DreamStock</a></li>
            <li><a href="http://www.evrsoft.com" title="Website Builder">Evrsoft</a></li>
            <li><a href="http://www.seostation.com" title="SEO">SEOStation</a></li>
		</ul>	
		
		<h1>Search</h1>	
		<form method="post" id="search" action="#">
			<p>
			<input name="search_query" class="textbox" type="text" /> 
			<input name="search" class="searchbutton" value="Search" type="submit" />
			</p>
		</form>	
							
		<h1>Wise Words</h1>
		<p>&quot;Criticism is something you can avoid easily by saying nothing,
		doing nothing, and being nothing&quot;</p>	
		
		<p class="align-right">- Aristotle</p>
		
		<h1>Support Styleshout</h1>
		<p>If you are interested in supporting my work and would like to contribute, you are
		welcome to make a small donation through the 
		<a href="http://www.styleshout.com/">donate link</a> on my website - it will 
		be a great help and will surely be appreciated.</p>
		
	</div>	

<!-- content-wrap ends here -->
</div>

<?php

include("footer.html");

