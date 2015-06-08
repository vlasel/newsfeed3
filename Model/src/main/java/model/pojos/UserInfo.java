package model.pojos;

import model.pojos.User;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
import org.springframework.stereotype.Component;
import sun.nio.ch.FileKey;

import javax.persistence.*;
import java.io.Serializable;
import java.lang.Integer;
import java.lang.Object;
import java.lang.Override;
import java.lang.String;
import java.util.List;
import java.util.Set;

//@Component("userInfo")
@Entity
@Table(name = "T_USERINFO")
public class UserInfo implements Serializable{
	private static final long serialVersionUID = 4L;

    public UserInfo() {
    }


    //######### fields ##############
    @Id
    @GenericGenerator(name = "FK", strategy = "foreign", parameters = @Parameter(name = "property",value = "user"))
    @GeneratedValue(generator = "FK")
    @Column(name = "F_ID")
    private Integer id;

    @Column(name = "F_NAME")
    private String name;

    @Column(name = "F_SURNAME")
    private String surname;

    @OneToOne
    @PrimaryKeyJoinColumn
    private User user;

    @OneToMany (mappedBy = "userInfo", fetch = FetchType.LAZY)
    private List<News> newsList;
    //#####################################


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

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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
        if (!(o instanceof UserInfo)) return false;

        UserInfo userInfo = (UserInfo) o;

//        if (id != null ? !id.equals(userInfo.id) : userInfo.id != null) return false;
        if (name != null ? !name.equals(userInfo.name) : userInfo.name != null) return false;
        if (surname != null ? !surname.equals(userInfo.surname) : userInfo.surname != null) return false;
//        if (newsList != null ? !newsList.equals(user.newsList) : user.newsList != null) return false;
//        if (user != null ? !user.equals(userInfo.user) : userInfo.user != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
//        int result = id != null ? id.hashCode() : 0;
        int result = 31;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (surname != null ? surname.hashCode() : 0);
//        result = 31 * result + (user != null ? user.hashCode() : 0);
//        result = 31 * result + (newsList != null ? newsList.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
//                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                '}';
    }
}
