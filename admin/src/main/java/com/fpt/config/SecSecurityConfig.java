package com.fpt.config;/*
  By Chi Can Em  19-01-2018
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    DataSource dataSource;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/login*").anonymous()
                .antMatchers("/*").hasRole("ADMIN")
                .anyRequest().authenticated()
                .and()
                .formLogin().loginPage("/login.html")
                .defaultSuccessUrl("/", true)
                .failureUrl("/login.html?error=true")
                .and()
                .logout().logoutUrl("/j_spring_security_logout").logoutSuccessUrl("/login.html");
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("CALL SelectAdmin(?)")
                .authoritiesByUsernameQuery(
                        "SELECT _email as username,authority FROM  administrator WHERE _email=?");
    }
}
