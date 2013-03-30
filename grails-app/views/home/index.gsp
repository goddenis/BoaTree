<html>
<head>
	<meta name="layout" content="main"/>
	<r:require modules="jquery"/>
</head>
<body>
	This should have jquery.
	
	<div id="showtime">showtime!</div>
	
	<r:script>
		try {
			$("#showtime").click(function() {
				$("#showtime").load("${createLink(action: "showTime")}");
			});
		}
		catch(e) {
			alert("JS Exception: " + e);
		}
	</r:script>
</body>
</html>