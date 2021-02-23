package org.example.deathValleySPRINGHibernate.DAO;


import org.example.deathValleySPRINGHibernate.model.Account;
import org.example.deathValleySPRINGHibernate.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PersonDAOHibernate implements PersonDAO {


    private final SessionFactory sessionFactory;

    @Autowired
    public PersonDAOHibernate(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public User getUserById(int id) {
        Session session = sessionFactory.openSession();
        User user = session.get(User.class, id);
        session.close();
        return user;
    }

    public List<Account> getAllAccounts() {
        Session session = sessionFactory.openSession();
        List<Account> accounts = (List<Account>)  session.createQuery("From Account").list();
        session.close();
        return accounts;
    }

}
