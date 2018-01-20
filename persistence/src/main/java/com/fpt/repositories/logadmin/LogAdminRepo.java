package com.fpt.repositories.logadmin;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.LogAdmin;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LogAdminRepo extends PagingAndSortingRepository<LogAdmin, Integer>, LogAdminRepoCustom {
    @Query(value = "select l from LogAdmin  as l")
    public List<LogAdmin> getAll();
}
