<html>
<head>
	<meta name="layout" content="main"/>
	<r:require modules="jquery"/>
</head>
<body>
	<span class="divid">home/index.gsp</span>
	<div>
		${users.size} Users.
		<ol>
		<g:each in="${users}"><li>${it}</li></g:each>
		</ol>
	</div>
	<div>
		${wgrps.size} Workgroups.
		<ol>
		<g:each in="${wgrps}"><li>${it}</li></g:each>
		</ol>
	</div>
</body>
</html>