package com.fpt.services.review;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.repositories.review.ReviewRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImp implements ReviewServices {
    @Autowired
    ReviewRepo reviewRepo;
}
