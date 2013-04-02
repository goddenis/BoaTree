package boatree

class HomeController {

    def index() { 
		[
			users: User.all,
			wgrps: Workgroup.all
		]
		
		
	}
	
	def showTime() {
		render "the time is " + new Date();
	}
}
