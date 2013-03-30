<div id="loginblock-contents">
	<g:if test="${session?.login?.user == null}">
		Not logged in
	</g:if>
	<g:else>
		${session.login.user}
	</g:else>
</div>
