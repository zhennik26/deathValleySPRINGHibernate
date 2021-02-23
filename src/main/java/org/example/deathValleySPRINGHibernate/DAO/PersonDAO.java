package org.example.deathValleySPRINGHibernate.DAO;




import org.example.deathValleySPRINGHibernate.model.Account;
import org.example.deathValleySPRINGHibernate.model.User;

import java.util.List;

public interface PersonDAO {
    public User getUserById(int userId);
    public List<Account> getAllAccounts();
}
