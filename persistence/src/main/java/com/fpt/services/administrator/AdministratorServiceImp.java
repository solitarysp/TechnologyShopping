package com.fpt.services.administrator;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Administrator;
import com.fpt.repositories.administrator.AdministratorRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdministratorServiceImp implements AdministratorServices {
    @Autowired
    AdministratorRepo administratorRepo;

    @Override
    public List<Administrator> getAll() {
        return administratorRepo.getAll();
    }
}
