package org.example.deathValleySPRINGHibernate.service;


import org.example.deathValleySPRINGHibernate.model.User;

public interface DeathValleyService {
    User getRichestUser();
    int accountsSum();
}
