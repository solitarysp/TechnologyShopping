package com.fpt.repositories.category;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Category;

import java.util.List;

public interface CategoryRepoCustom {
    public List<Category> getAllCategoryByName(String name);
}
