package com.fpt.services.review;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Review;
import org.springframework.stereotype.Service;

@Service
public interface ReviewServices {
    void saveReview(Review review);
}
