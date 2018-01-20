package com.fpt.services.refproductorder;/*
  By Chi Can Em  20-01-2018
 */

import com.fpt.repositories.refproductorder.RefProductOrderRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RefProductOrderServiceImp implements RefProductOrderServices {
    @Autowired
    RefProductOrderRepo refProductOrderRepo;
}
