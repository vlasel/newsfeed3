package model.dao.jdbc.data;

public class Category {

	public Category() {
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	String id;
	String name;
	
	
	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + "]";
	}

	@Override
	public int hashCode() {
		return ((id == null) ? 0 : id.hashCode());
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) return true;
		
		if (obj != null && obj instanceof Category) {
			
			Category cd = (Category) obj;
			
			if (id == null && cd.id != null) {
					return false;
			} else if (!id.equals(cd.id))
				return false;
			else if (name == null && cd.name != null) {
					return false;
			} else if (!name.equals(cd.name))
				return false;
			
			else return true;
		}
		else return false;
	}
	
	
	
	
	
}
