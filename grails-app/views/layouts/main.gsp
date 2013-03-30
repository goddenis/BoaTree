<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<span class="divid">main.gsp</span>
		<div id="logo" role="banner">
			<span class="divid">logo</span>
			BOA Tree
		</div>
		<div id="boatreemenu" role="menu bar">
			<span class="divid">boatreemenu</span>
			<g:render template="/login/loginblock"/>
		</div>

		<div id="boatreebody">
			<span class="divid">boatreebody</span>
			<g:layoutBody/>
		</div>		
		<div class="footer" role="contentinfo"><span class="divid">footer</span></div>
		<div id="spinner" class="spinner" style="display:none;"><span class="divid">spinner</span><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
