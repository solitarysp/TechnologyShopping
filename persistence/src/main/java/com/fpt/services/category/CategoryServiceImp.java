package com.fpt.services.category;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Category;
import com.fpt.repositories.category.CategoryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CategoryServiceImp implements CategoryServices {
    @Autowired
    CategoryRepo categoryRepo;

    @Override
    public List<Category> getAllCategory() {
        return categoryRepo.getAllCategory();
    }

    @Transactional
    @Override
    public void saveCategory(Category category) {
        categoryRepo.save(category);
    }

    @Transactional
    @Override
    public void deleteCategory(Category category) {
        categoryRepo.delete(category);
    }
}
