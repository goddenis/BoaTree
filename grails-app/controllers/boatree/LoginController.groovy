package boatree

class LoginController {

	def index() {
	}

	def login() {
		session.login = [ user: "User1"]
		loginbox()
	}

	def logout() {
		session.login = [ user: null]
		loginbox()
	}

	def loginbox() {
		render([
			view: '/login/loginbox'
		])
	}
}
