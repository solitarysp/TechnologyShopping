package com.fpt.services.administrator;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Administrator;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AdministratorServices {
    List<Administrator> getAll();

    void saveAdministrator(Administrator administrator);
}
