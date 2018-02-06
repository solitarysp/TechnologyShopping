package com.fpt.services.customer;/*
  By Chi Can Em  07-02-2018
 */

import com.fpt.entity.Customer;
import com.fpt.repositories.customer.CustomerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Service("userDetailsService")
public class CustomUserDetailsService extends JdbcDaoImpl {
    @Autowired
    DataSource dataSource;
    @Autowired
    CustomerRepo customerRepo;

    @PostConstruct
    private void initialize() {
        setDataSource(dataSource);
    }

    @Override
    @Value("SELECT _email as username,authority FROM customer WHERE _email=?")
    public void setAuthoritiesByUsernameQuery(String queryString) {
        super.setAuthoritiesByUsernameQuery(queryString);
    }

    @Override
    protected UserDetails createUserDetails(String username, UserDetails userFromUserQuery, List<GrantedAuthority> combinedAuthorities) {
        String returnUsername = userFromUserQuery.getUsername();
        if (super.isUsernameBasedPrimaryKey()) {
            returnUsername = username;
        }

        return new User(returnUsername, userFromUserQuery.getPassword(),
                userFromUserQuery.isEnabled(),
                userFromUserQuery.isAccountNonExpired(),
                userFromUserQuery.isCredentialsNonExpired(),
                userFromUserQuery.isAccountNonLocked(), combinedAuthorities);
    }

    @Override
    protected List<UserDetails> loadUsersByUsername(String username) {
        Customer customer = customerRepo.getCustomerByEmail(username);
        boolean ena = customer.getEnabled() > 0;
        boolean aNL = 1 > 0;
        List<UserDetails> userDetails = new ArrayList<>();
        userDetails.add(new User(customer.getEmail(), customer.getPassword(), ena, true, true,
                aNL, AuthorityUtils.NO_AUTHORITIES));
        return userDetails;
    }
}
