import boatree.User;
import boatree.UserGroup;
import boatree.Workgroup;

class BootStrap {

    def init = { servletContext ->
		environments {
			development {
				User.all.each { it.delete() };
				Workgroup.all.each { it.delete() };
				
				User fred, bill;
				Workgroup wg1, wg2;
				
				[
					fred = new User([name: "Fred"]),
					bill = new User([name: "Bill"]),
					wg1 = new Workgroup([name: "WG1"]),
					wg2 = new Workgroup([name: "WG2"])
				].each({
					it.save(failOnError: true)
				})
				
				[
					new UserGroup(user: fred, workgroup: wg1, admin: true),
					new UserGroup(user: bill, workgroup: wg1, admin: false),
					new UserGroup(user: bill, workgroup: wg2, admin: true)
				].each({
					it.save(failOnError: true)
				})

				
			}
		}
		
    }
    def destroy = {
    }
}
