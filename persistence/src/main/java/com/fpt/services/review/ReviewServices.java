package com.fpt.services.review;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Review;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ReviewServices {
    void saveReview(Review review);

    public List<Review> getAllByIdProduct(String id);

    int countCmtByDay(Integer day);

    long countTotal();
}
