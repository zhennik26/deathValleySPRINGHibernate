package org.example.deathValleySPRINGHibernate.controllers;

import org.example.deathValleySPRINGHibernate.model.User;
import org.example.deathValleySPRINGHibernate.service.DeathValleyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@RequestMapping("/")
public class Controller {
    final DeathValleyService deathValleyService;

    @Autowired
    public Controller(DeathValleyService deathValleyService) {
        this.deathValleyService = deathValleyService;
    }

    @GetMapping
    public String index(Model model){
        return "WEB-INF/index.jsp";
    }

    @GetMapping("/getRichestUser")
    public String richestUser(Model model){
        User richestUser = deathValleyService.getRichestUser();
        model.addAttribute("richestUser",richestUser);
        return "WEB-INF/index.jsp";
    }

    @GetMapping("/getAccountsSum")
    public String accountsSum(Model model){
        int i = deathValleyService.accountsSum();
        model.addAttribute("accountsSum",i);
        return "WEB-INF/index.jsp";
    }
}
