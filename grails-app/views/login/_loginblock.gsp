<span class="divid">_loginblock.gsp</span>
<div id="loginblock_ajax_container">
	<div id="loginblock">
		<span class="divid">loginblock</span>
		<g:if test="${session?.login?.user == null}">
			<span class="divid">login_button</span>
			<button id="login_button"><g:message code="loginblock.log_in" default="Log in &hellip;"/></button>
		</g:if>
		<g:else>
			Logged in as ${session.login.user}
			<span class="divid">logout_button</span>
			<button id="logout_button"><g:message code="loginblock.log_out" default="Log out"/></button>
		</g:else>
	</div>
</div>

<r:script>
	try {
		function attach_login_button_script() {
			$("#login_button").click(function() {
				$("#loginblock_ajax_container").load("${createLink(controller: "login", action: "login")} #loginblock", attach_login_button_script);
			});
			$("#logout_button").click(function() {
				$("#loginblock_ajax_container").load("${createLink(controller: "login", action: "logout")} #loginblock", attach_login_button_script);
			});
		}
		
		attach_login_button_script();
	}
	catch(e) {
		alert("JS Exception: " + e);
	}
</r:script>
