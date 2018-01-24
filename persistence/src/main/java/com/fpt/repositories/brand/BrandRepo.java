package com.fpt.repositories.brand;/*
  By Chi Can Em  19-01-2018
 */

import com.fpt.entity.Brand;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BrandRepo extends PagingAndSortingRepository<Brand, Integer>, BrandRepoCustom {
    @Query(value = "select B from Brand as B", nativeQuery = false)
    List<Brand> getAllBrand();


}
