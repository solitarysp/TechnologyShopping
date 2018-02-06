package com.fpt.services.review;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.Review;
import com.fpt.repositories.review.ReviewRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ReviewServiceImpl implements ReviewServices {
    @Autowired
    ReviewRepo reviewRepo;

    @Transactional
    @Override
    public void saveReview(Review review) {
        reviewRepo.save(review);
    }

    @Override
    public List<Review> getAllByIdProduct(String id) {
        return reviewRepo.getAllByIdProduct(id);
    }

    @Override
    public int countCmtByDay(Integer day) {
        return reviewRepo.countCmtByDay(day);
    }

    @Override
    public long countTotal() {
        return reviewRepo.count();
    }

}
