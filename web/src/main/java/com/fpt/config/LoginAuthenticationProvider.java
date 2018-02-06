package com.fpt.config;/*
  By Chi Can Em  07-02-2018
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

@Component("authenticationProvider")
public class LoginAuthenticationProvider extends DaoAuthenticationProvider {
    @Autowired
    @Qualifier("userDetailsService")
    @Override
    public void setUserDetailsService(UserDetailsService userDetailsService) {
        super.setUserDetailsService(userDetailsService);
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        try {
            Authentication auth = super.authenticate(authentication);
            return auth;
        } catch (BadCredentialsException e) {

            throw e;
        } catch (LockedException e) {
            throw new LockedException("Đang bị khóa tải khoản " + authentication.getName());
        }

    }
}
