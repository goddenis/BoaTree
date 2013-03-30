package boatree

class HomeController {

    def index() { }
	
	def showTime() {
		render "the time is " + new Date();
	}
}
