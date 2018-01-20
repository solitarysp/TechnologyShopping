package com.fpt.services.category;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Category;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryServices {
    List<Category> getAllCategory();
}
