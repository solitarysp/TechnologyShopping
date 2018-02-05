package com.fpt.listener;/*
  By Chi Can Em  05-02-2018
 */

import com.fpt.entity.entity2.CountSession;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;

@WebListener("/*")
public class HttpSessionListener implements javax.servlet.http.HttpSessionListener {
    private int index = 0;

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        CountSession.getCountSession().setCountSessionIncrease();
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        CountSession.getCountSession().setCountSessionReduction();
    }
}
