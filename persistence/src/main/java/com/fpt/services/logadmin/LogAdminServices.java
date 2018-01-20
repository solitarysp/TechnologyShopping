package com.fpt.services.logadmin;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.LogAdmin;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface LogAdminServices {
    public List<LogAdmin> getAll();

    void saveLogAdmin(LogAdmin logAdmin);
}
