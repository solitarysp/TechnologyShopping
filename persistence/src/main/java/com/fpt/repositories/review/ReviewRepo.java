package com.fpt.repositories.review;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Review;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewRepo extends PagingAndSortingRepository<Review, Integer>, ReviewRepoCustom {
}
