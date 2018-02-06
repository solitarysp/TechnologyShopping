package com.fpt.repositories.review;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Review;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepo extends PagingAndSortingRepository<Review, Integer>, ReviewRepoCustom {
    @Query(value = "SELECT * FROM review WHERE _id_Product=:id", nativeQuery = true)
    public List<Review> getAllByIdProduct(@Param("id") String id);

    @Query(value = "select count(*) from review  where DATE(`_date`)= CURDATE() - INTERVAL :day DAY ",nativeQuery = true)
    int countCmtByDay(@Param("day") Integer day);
}
