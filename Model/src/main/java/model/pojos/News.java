package model.pojos;

import org.hibernate.annotations.Type;
import org.hibernate.annotations.TypeDef;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.io.Serializable;


//@Component("news")
@Entity
@Table(name = "T_NEWS")
public class News implements Serializable {
    private static final long serialVersionUID = 2L;

    public News() {
    }

    @Id
    @SequenceGenerator(name = "PK", sequenceName = "T_NEWS_SEQ")
    @GeneratedValue(generator = "PK", strategy = GenerationType.SEQUENCE)
    @Column(name = "F_ID")
    Integer id;

    @Column(name = "F_NAME")
    String name;

    @Column(name = "F_DATE")
    String date;

    @Column(name = "F_TIME")
    String time;

    @Column(name = "F_ANNOTATION")
    @Type(type = "org.hibernate.type.MaterializedClobType")
    String annotation;

    @Column(name = "F_MAINTEXT")
    @Type(type = "org.hibernate.type.MaterializedClobType")
    String maintext;

    @ManyToOne
    @JoinColumn(name = "F_CAT_ID", nullable = false)
    Category category;

    @ManyToOne
    @JoinColumn(name = "F_USER_ID", nullable = false)
    UserInfo userInfo;


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
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
    public String getTime() {
        return time;
    }
    public void setTime(String time) {
        this.time = time;
    }
    public String getAnnotation() {
        return annotation;
    }
    public void setAnnotation(String annotation) {
        this.annotation = annotation;
    }
    public String getMaintext() {
        return maintext;
    }
    public void setMaintext(String maintext) {
        this.maintext = maintext;
    }
    public Category getCategory() {
        return category;
    }
    public void setCategory(Category category) {
        this.category = category;
    }
    public UserInfo getUserInfo() {
        return userInfo;
    }
    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        News news = (News) o;

//        if (id != null ? !id.equals(news.id) : news.id != null) return false;
        if (name != null ? !name.equals(news.name) : news.name != null) return false;
        if (date != null ? !date.equals(news.date) : news.date != null) return false;
        if (time != null ? !time.equals(news.time) : news.time != null) return false;
        if (annotation != null ? !annotation.equals(news.annotation) : news.annotation != null) return false;
        if (maintext != null ? !maintext.equals(news.maintext) : news.maintext != null) return false;
//        if (category != null ? !category.equals(news.category) : news.category != null) return false;
//        if (user != null ? !user.equals(news.user) : news.user != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (annotation != null ? annotation.hashCode() : 0);
        result = 31 * result + (maintext != null ? maintext.hashCode() : 0);
//        result = 31 * result + (category != null ? category.hashCode() : 0);
//        result = 31 * result + (user != null ? user.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", category=" + category.getName() +
//                ", user='" + user.getUserInfo().getName()+" " +user.getUserInfo().getSurname()+"'"+
//                ", user='" + user.getName()+" " +user.getSurname()+"'"+
                ", userInfo='" + userInfo.getName()+" " +userInfo.getSurname()+"'"+
                ", date='" + date + '\'' +
                ", time='" + time + '\'' +
                ", name='" + name + '\'' +
                ", annotation='" + annotation + '\'' +
                ", maintext='...many symbols...'" +
                '}';
    }
}
