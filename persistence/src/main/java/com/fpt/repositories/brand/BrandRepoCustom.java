package com.fpt.repositories.brand;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Brand;

import java.util.List;

public interface BrandRepoCustom {
    List<Brand> getAllBrandByName(String name);
}
