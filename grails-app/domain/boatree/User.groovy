package boatree

import sun.tools.tree.ThisExpression;

class User {
	
	public enum Type {
		G("Guest"), E("Editor"), A("Admin"), S("Superuser");
		
		private final String desc;
		
		private Type(String desc) {
			this.desc = desc;
		}
		
		public String toString() {
			return desc;
		}
		
		public boolean isSuperuser() {
			return this == S;
		}

		public boolean isAdmin() {
			return this == S || this == A;
		}

		public boolean isEditor() {
			return this == S || this == A || this == E;
		}
	}
	
	String name;
	String description;
	Type type = Type.G;
	
	public String toString() {
		"User[${id}: ${type} \"${name}\"]"
	}

    static constraints = {
			description nullable: true;
    }
}
