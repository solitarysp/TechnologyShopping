package com.fpt.repositories.refproductorder;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.entity.RefProductOrder;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RefProductOrderRepo extends PagingAndSortingRepository<RefProductOrder, Integer>, RefProductOrderRepoCustom {

}
