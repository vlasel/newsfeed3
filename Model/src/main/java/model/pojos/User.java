package model.pojos;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.Set;

//@Component("user")
@Entity
@Table(name = "T_USER")

public class User implements Serializable{
	private static final long serialVersionUID = 3L;

    public User() {
    }


    //######### fields ##############
    @Id
    @SequenceGenerator(name = "PK", sequenceName = "T_USER_SEQ")
    @GeneratedValue(generator = "PK", strategy = GenerationType.SEQUENCE)
    @Column(name = "F_ID")
    private Integer id;

    @Column(name = "F_EMAIL", nullable = false)
    private String email;

    @Column(name = "F_PASS")
    private String pass;

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
    private UserInfo userInfo;

    @ManyToMany(cascade = CascadeType.ALL)
    @LazyCollection(value = LazyCollectionOption.FALSE)
    @JoinTable(name = "T_USER_ROLE",
            joinColumns = {@JoinColumn(name = "F_USER_ID")},
            inverseJoinColumns = {@JoinColumn(name = "F_ROLE_ID")} )
    private Set<UserRole> userRoleSet;
    //#####################################


    //__________________________________________

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
    public UserInfo getUserInfo() {
        return userInfo;
    }
    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public Set<UserRole> getUserRoleSet() {
        return userRoleSet;
    }
    public void setUserRoleSet(Set<UserRole> userRoleSet) {
        this.userRoleSet = userRoleSet;
    }


    //_____________________________________________________


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;

        User user = (User) o;

//        if (id != null ? !id.equals(user.id) : user.id != null) return false;
        if (email != null ? !email.equals(user.email) : user.email != null) return false;
        if (pass != null ? !pass.equals(user.pass) : user.pass != null) return false;
//        if (userInfo != null ? !userInfo.equals(user.userInfo) : user.userInfo != null) return false;
//        if (userRoleSet != null ? !userRoleSet.equals(user.userRoleSet) : user.userRoleSet != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (pass != null ? pass.hashCode() : 0);
//        result = 31 * result + (userInfo.getName() != null ? userInfo.getName().hashCode() : 0);
//        result = 31 * result + (userInfo.getSurname() != null ? userInfo.getSurname().hashCode() : 0);
//        result = 31 * result + (userRoleSet != null ? userRoleSet.hashCode() : 0);

        return result;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", pass='" + pass + '\'' +
//                ", name='" + name + '\'' +
//                ", surname='" + surname + '\'' +
//                ", name='" + userInfo.getName() + '\'' +
//                ", surname='" + userInfo.getSurname() + '\'' +
                '}';
    }
}
