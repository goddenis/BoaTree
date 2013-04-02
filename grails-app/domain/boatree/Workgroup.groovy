package boatree

class Workgroup {
	
	public enum Visibility {
		V("private"),
		W("workgroup"),
		P("public");
		
		public final String description;
		
		private Visibility(String description) {
			this.description = description;
		}
		
		public String toString() {
			return description;
		}
	}

	String name;
	String description;
	Visibility visibility = Visibility.W;

	boolean isPrivate() {
		return
	}

	public String toString() {
		"Workgroup[${id}: \"${name}\"]"
	}

	static constraints = {
			description nullable: true;
	}
}
