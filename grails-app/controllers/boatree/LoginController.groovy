package boatree

class LoginController {

	def index() {
	}

	def login() {
		session.login = [ user: "User1"]
		chain 'loginbox', [loginmessage: 'Logged in', status: ResultStatus.success] // TODO: add message resource
	}

	def logout() {
		session.login = [ user: null]
		chain 'loginbox', [loginmessage: 'Logged out', status: ResultStatus.info] // TODO: add message resource
	}

	def loginbox() {
		render view: '/login/loginbox'
	}
}
