package boatree

class UserProfileController {
	UserProfileService userProfileService;
	
	def createTestData() {
		try {
			[ result: userProfileService.createTestData()];
		}
		catch(Exception ex) {
			[ result: "Exception: " + ex.toString()];
		}
	}	
}
