package com.fpt.services.brand;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Brand;
import com.fpt.repositories.brand.BrandRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BrandServiceImpl implements BrandServices {
    @Autowired
    BrandRepo brandRepo;

    @Override
    public List<Brand> getAllBrand() {
        return brandRepo.getAllBrand();
    }

    @Transactional
    @Override
    public void saveBrand(Brand brand) {
        brandRepo.save(brand);
    }

    @Transactional
    @Override
    public void deleteBrand(Integer id) {
        brandRepo.delete(id);
    }

    @Override
    public Brand findByID(Integer id) {
        return brandRepo.findOne(id);
    }

    @Override
    public List<Brand> getAllBrandByName(String name) {
        return brandRepo.getAllBrandByName(name);
    }

    @Override
    public int countBrand() {
        return Math.toIntExact(brandRepo.count());
    }

//    @Override
//    public List<Brand> GetTotalBrand(Integer number) {
//        return brandRepo.getTotalBrand(number);
//    }


}
