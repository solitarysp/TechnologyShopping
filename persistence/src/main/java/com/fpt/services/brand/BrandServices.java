package com.fpt.services.brand;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Brand;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BrandServices {
    List<Brand> getAllBrand();

    void saveBrand(Brand brand);

    void deleteBrand(Integer id);

}
