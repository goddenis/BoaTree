<div id="loginblock">
	loginblock.gsp
	<g:if test="${session?.login?.user == null}">
		Not logged in
		<button id="login_button">Log in</button>
	</g:if>
	<g:else>
		${session.login.user}
		<button id="logout_button">Log out</button>
	</g:else>
</div>

<r:script>
	try {
		function attach_login_button_script() {
			$("#login_button").click(function() {
				$("#loginblock").load("${createLink(controller: "login", action: "login")} #loginblock", attach_login_button_script);
			});
			$("#logout_button").click(function() {
				$("#loginblock").load("${createLink(controller: "login", action: "logout")} #loginblock", attach_login_button_script);
			});
		}
		
		attach_login_button_script();
	}
	catch(e) {
		alert("JS Exception: " + e);
	}
</r:script>
