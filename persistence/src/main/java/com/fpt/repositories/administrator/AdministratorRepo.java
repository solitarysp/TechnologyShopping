package com.fpt.repositories.administrator;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Administrator;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdministratorRepo extends PagingAndSortingRepository<Administrator, Integer>,AdministratorRepoCustom  {
    @Query(value = "select ad from Administrator as ad", nativeQuery = false)
    List<Administrator> getAll();

}
