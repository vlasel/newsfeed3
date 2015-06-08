package services;

import model.dao.DaoImpl.*;
import model.dao.exceptions.DaoException;
import model.pojos.*;
import model.util.HibernateUtil;
import org.apache.log4j.Logger;
import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.support.TransactionTemplate;

import java.io.Serializable;
import java.util.*;


@Service
public class ServiceUtil {

    static {
        System.out.println(ServiceUtil.class.getSimpleName() + " created");
    }

    //##############  Constructor ###############
    public ServiceUtil(){
    }
//########################### variables ##############################

    Logger log = Logger.getLogger(ServiceUtil.class);
    @Autowired
    private SessionFactory sessionFactory;
    @Autowired
    private UserDaoImpl userDao;
    @Autowired
    private UserInfoDaoImpl userInfoDao;
    @Autowired
    private UserRoleDaoImpl userRoleDao;
    @Autowired
    private CategoryDaoImpl categoryDao;
    @Autowired
    private NewsDaoImpl newsDao;

//    @Autowired
//    TransactionTemplate transactionTemplate;

//########################### methods #############################

    //______________________ test _____________________
    public String printHello() {
        return "Hello world";

    }

//################################# get Page Data #####################################

    //_______________________ get data for siteController page News (universal) for all news__________________

    public Map<String,Object> getPageData_News (Map<String,String> ordersMap, Integer pageNumber, Integer maxResults) throws DaoException {
        Map<String,Object> result = new HashMap<>();
        return result;
    }



    //_______________________ get data for page view All (default)__________________

    public Map<String,Object> getPageData_ViewAll(Map<String,String> ordersMap,
                                                  Integer pageNumber, Integer maxResults
                                                  ) throws DaoException{

        Map<String,Object> result = new HashMap<>();
        Session session = sessionFactory.openSession();

        Integer newsListCount = newsDao.getNewsListCount(session);

        Integer pagesCount = newsListCount/maxResults;
        if(newsListCount % maxResults !=0) pagesCount++;

        Integer firstResult;
        if(pageNumber <= pagesCount) {
            firstResult = (pageNumber-1)*maxResults;
        } else firstResult = 1+pagesCount*(maxResults-1);

        List<Category> categoryList = categoryDao.getList(session);
        List<News> newsListByCategoryId = newsDao.getListFormatted(session, ordersMap, firstResult, maxResults, null);

        result.put("categoryList", categoryList);
        result.put("newsList", newsListByCategoryId);
        result.put("newsListCount", newsListCount);
        result.put("pagesCount", pagesCount);

        if( null!=session && session.isOpen() ) {
            try {
                session.close();
            }catch (SessionException e) {
                log.info("error in session.close(): "+e);
            }
        }
        return result;
    }


    //_______________________ get data for page view by Category __________________

    public Map<String,Object> getPageData_ViewByCategory(Map<String,String> ordersMap,
                                                        Integer pageNumber, Integer maxResults,
                                                        Integer categoryId
                                                        ) throws DaoException {

        Map<String,Object> result = new HashMap<>();
        Session session = sessionFactory.openSession();

        Integer newsListCount = newsDao.getNewsListCount(session);

        Integer pagesCount = newsListCount/maxResults;
        if(newsListCount % maxResults !=0) pagesCount++;

        Integer firstResult;
        if(pageNumber <= pagesCount) {
            firstResult = (pageNumber-1)*maxResults;
        } else firstResult = 1+pagesCount*(maxResults-1);

        List<Category> categoryList = categoryDao.getList(session);

        List<News> newsListByCategoryId = null;
        Integer newsListByCategoryIdCount = null;
        for(Category cat : categoryList) {
            if( cat.getId().equals(categoryId) ) {
                newsListByCategoryId = newsDao.getNewsListByCat(session, ordersMap, firstResult, maxResults, cat);
                newsListByCategoryIdCount = newsDao.getNewsListByCatCount(session, cat);
                Hibernate.initialize(newsListByCategoryId);
            }
        }

        result.put("categoryList", categoryList);
        result.put("newsList", newsListByCategoryId);
        result.put("newsListCount", newsListCount);
        result.put("pagesCount", newsListByCategoryIdCount);

        if( null!=session && session.isOpen() ) {
            try {
                session.close();
            }catch (SessionException e) {
                log.info("error in session.close(): "+e);
            }
        }
        return result;
    }







    //_______________________ CATEGORY __________________________

    public Category getCategory(Integer id) throws DaoException{
        Session session = getSession();
        return categoryDao.load(session, id);
    }

    public List<Category> getCategoryList() throws DaoException{
        Session session = getSession();
        return categoryDao.getList(session);
    }



    //_________________________ NEWS _____________________________

    public News getNews(Integer id) throws DaoException{
        Session session = getSession();
        return newsDao.load(session, id);
    }



    //_______________________ USER and ROLES _____________________

    public User getUser(Serializable id) throws DaoException{
        Session session = getSession();
        return userDao.load(session, id);
    }

    public UserInfo getUserInfo(Serializable id) throws DaoException {
        Session session = getSession();
        return userInfoDao.load(session, id);
    }

    public User getUserByEmail(String email) throws DaoException{
        Session session = getSession();
        return userDao.getUserByEmail(session, email);
    }

    public List<User> getUserList() throws DaoException{
        Session session = getSession();
        return userDao.getList(session);
    }

    public Set<UserRole> getUserRoleSetByUser(User user) throws DaoException{
        Session session = getSession();
        return userRoleDao.getUserRoleSetByUser(session, user);
    }


    //################################################################################################
    //###################################### helper methods ##########################################
    //################################################################################################

    private Session getSession() {
        Session session = null;
        try {
            session = sessionFactory.getCurrentSession();
            log.info("ServiceUtil -> .sessionFactory.getCurrentSession()");
        } catch (HibernateException he) {
            session = sessionFactory.openSession();
            log.info("ServiceUtil -> sessionFactory.openSession()");
        }
        return session;
    }

}
