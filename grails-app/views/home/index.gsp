<html>
<head>
<meta name="layout" content="main" />
<r:require modules="jquery" />
</head>
<body>
	<span class="divid">home/index.gsp</span>
	<div>
		${users.size}
		Users.
		<ol>
			<g:each in="${users}">
				<li>
					${it}, ${it.workgroups.size}
					<ul>
						<g:each var="wg" in="${it.workgroups}">
							<li>
								${wg.workgroup}
								<g:if test="${wg.admin}"><B> (admin)</B></g:if>
							</li>
						</g:each>
					</ul>
				</li>
			</g:each>
		</ol>
	</div>
	<div>
		${wgrps.size}
		Workgroups.
		<ol>
			<g:each in="${wgrps}">
				<li>
					${it}, ${it.users.size}
					<ul>
						<g:each var="wg" in="${it.users}">
							<li>
								${wg.user}
								<g:if test="${wg.admin}"><B> (admin)</B></g:if>
							</li>
						</g:each>
					</ul>
				</li>
			</g:each>
		</ol>
	</div>
</body>
</html>