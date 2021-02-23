package org.example.deathValleySPRINGHibernate.service;


import org.example.deathValleySPRINGHibernate.DAO.PersonDAO;
import org.example.deathValleySPRINGHibernate.DAO.PersonDAOHibernate;
import org.example.deathValleySPRINGHibernate.model.Account;
import org.example.deathValleySPRINGHibernate.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class DeathValleyServiceImpl implements DeathValleyService {

    private final PersonDAO personDAO;

    @Autowired
    public DeathValleyServiceImpl(PersonDAO personDAO) {
        this.personDAO = personDAO;
    }


    @Override
    public User getRichestUser() {
        List<Account> allAccounts = personDAO.getAllAccounts();
        Optional<Map.Entry<Integer, Integer>> maxEntry = maxEntry(allAccounts);
        return personDAO.getUserById(maxEntry.get().getKey());
    }

    @Override
    public int accountsSum() {
        List<Account> allAccounts = personDAO.getAllAccounts();
        List<Integer> list=new ArrayList<>();
        allAccounts.forEach(o->list.add(o.getAccount()));
        return list.stream().reduce(0, (a, b) -> a + b);
    }
    Optional<Map.Entry<Integer, Integer>> maxEntry(List<Account> allAccounts){
        Map<Integer,Integer> mapUIdSumAcc =new HashMap<>();
        for (Account account : allAccounts) {
            int userId=account.getUser().getUserId();
            if (mapUIdSumAcc.containsKey(userId)){
                Integer accountSum = mapUIdSumAcc.get(userId);
                accountSum+=account.getAccount();
                mapUIdSumAcc.put(userId,accountSum);
            }
            else mapUIdSumAcc.put(userId,account.getAccount());
        }
         return mapUIdSumAcc.entrySet()
                .stream()
                .max(Comparator.comparing(Map.Entry::getValue)
                );

    }
}
