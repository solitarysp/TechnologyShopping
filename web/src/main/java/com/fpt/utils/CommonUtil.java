package com.fpt.utils;/*
  By Chi Can Em  03-02-2018
 */

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CommonUtil {


    public static boolean isEmail(String email) {
        try {
            String regex = "^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
            Pattern pattern = Pattern.compile(regex);

            Matcher matcher = pattern.matcher(email);
            if (matcher.matches() == false) {
                return false;
            } else {
                if (matcher.matches() == true) {
                    return true;
                }
            }
        } catch (Exception e) {
            System.out.println("lỗi");
        }
        return false;
    }
}
