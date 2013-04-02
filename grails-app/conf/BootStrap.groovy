import boatree.User
import boatree.Workgroup

class BootStrap {

    def init = { servletContext ->
		environments {
			development {
				User.all.each { it.delete() };
				Workgroup.all.each { it.delete() };
				
				[
					new User([name: "Fred"]),
					new User([name: "Bill"]),
					new Workgroup([name: "WG1"]),
					new Workgroup([name: "WG2"])
				].each({
					it.save(failOnError: true)
				})
			}
		}
		
    }
    def destroy = {
    }
}
