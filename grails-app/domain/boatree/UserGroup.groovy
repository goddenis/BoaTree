package boatree

class UserGroup {
	
	User user;
	Workgroup workgroup;
	boolean admin;
	
    static UserGroup get(long userId, long workgroupId) {
        find 'from UserGroup where user.id=:userId and workgroup.id=:workgroupId',
            [userId: userId, workgroupId: workgroupId]
    }

    static UserGroup create(User user, Workgroup workgroup, boolean flush = false) {
        new UserGroup(user: user, workgroup: workgroup).save(flush: flush, insert: true)
    }

    static boolean remove(User user, Workgroup workgroup, boolean flush = false) {
        UserGroup instance = UserGroup.findByUserAndWorkgroup(user, workgroup)
        instance ? instance.delete(flush: flush) : false
    }

    static void removeAll(User user) {
        executeUpdate 'DELETE FROM UserGroup WHERE user=:user', [user: user]
    }

    static void removeAll(Workgroup workgroup) {
        executeUpdate 'DELETE FROM UserGroup WHERE workgroup=:workgroup', [workgroup: workgroup]
    }

	    static constraints = {
    }
}
