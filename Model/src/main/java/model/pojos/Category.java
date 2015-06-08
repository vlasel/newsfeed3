package model.pojos;

import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;


//@Component("category")
@Entity
@Table(name = "T_CATEGORY")
public class Category implements Serializable{
    private static final long serialVersionUID = 1L;

    public Category() {
    }

    @Id
    @SequenceGenerator(name = "PK", sequenceName = "T_CATEGORY_SEQ")
    @GeneratedValue(generator = "PK", strategy = GenerationType.SEQUENCE)
    @Column(name = "F_ID")
    Integer id;

    @Column(name = "F_NAME")
    String name;

    @OneToMany (mappedBy = "category", fetch = FetchType.LAZY)
    List<News> newsList;



    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

    public List<News> getNewsList() {
        return newsList;
    }

    public void setNewsList(List<News> newsList) {
        this.newsList = newsList;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Category category = (Category) o;

//        if (id != null ? !id.equals(category.id) : category.id != null) return false;
        if (name != null ? !name.equals(category.name) : category.name != null) return false;
        if (newsList != null ? !newsList.equals(category.newsList) : category.newsList != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (newsList != null ? newsList.hashCode() : 0);
        return result;
    }


    @Override
    public String toString() {
        return "Category{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                /*", newsList=" + newsList +*/
                '}';
    }
}
