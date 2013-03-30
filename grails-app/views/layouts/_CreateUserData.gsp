<r:require modules="jquery"/>

<span class="divid">_create_user_data.gsp</span>
<span class="divid">createUserData</span>
<button id="create-user-data">createUserData</button>
<span class="divid">createUserDataResult</span>
<span id="create-user-data-result"></span>


<r:script>
try {
	$("#create-user-data").click(function() {
		$("#create-user-data-result").load("${createLink(controller: "UserProfile", action: "createTestData")}");
	});
}
catch(e) {
	alert("JS Exception: " + e);
}
	
</r:script>