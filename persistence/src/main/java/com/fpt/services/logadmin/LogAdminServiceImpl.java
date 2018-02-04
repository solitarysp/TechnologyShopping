package com.fpt.services.logadmin;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.LogAdmin;
import com.fpt.repositories.logadmin.LogAdminRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogAdminServiceImpl implements LogAdminServices {
    @Autowired
    LogAdminRepo logAdminRepo;

    @Override
    public List<LogAdmin> getAll() {
        return logAdminRepo.getAll();
    }

    @Override
    public void saveLogAdmin(LogAdmin logAdmin) {
        logAdminRepo.save(logAdmin);
    }
}
