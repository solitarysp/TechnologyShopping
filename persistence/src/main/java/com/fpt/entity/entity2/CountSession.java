package com.fpt.entity.entity2;/*
  By Chi Can Em  05-02-2018
 */

public final class CountSession {
    private Integer total = 0;
    private static CountSession countSession;

    public static CountSession getCountSession() {
        if (countSession == null) {
            synchronized (CountSession.class) {
                countSession = new CountSession();
            }
        }
        return countSession;
    }

    public void setCountSessionIncrease() {
        this.total++;
    }

    public void setCountSessionReduction() {
        this.total--;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }
}
