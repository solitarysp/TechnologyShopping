package com.fpt.repositories.category;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Category;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepo extends PagingAndSortingRepository<Category, Integer>, CategoryRepoCustom {
    @Query(value = "select C from Category as C", nativeQuery = false)
    List<Category> getAllCategory();
}
