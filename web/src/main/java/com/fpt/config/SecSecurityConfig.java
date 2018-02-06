package com.fpt.config;/*
  By Chi Can Em  19-01-2018
 */

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class SecSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    DataSource dataSource;
    @Autowired
    UserDetailsService userDetailsService;

    @Autowired
    @Qualifier("authenticationProvider")
    DaoAuthenticationProvider authenticationProvider;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/login*").anonymous()
                .antMatchers("/account/*").authenticated()
                .and()
                .formLogin().loginPage("/login.html")
                .defaultSuccessUrl("/", true)
                .failureUrl("/login.html?error=true")
                .and()
                .logout().logoutUrl("/j_spring_security_logout").logoutSuccessUrl("/login.html")
                .and()
                .rememberMe().key("uniqueAndSecret").tokenValiditySeconds(24 * 60 * 60).tokenRepository(persistentTokenRepository()).userDetailsService(userDetailsService);
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    /*    auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("CALL SelectCustomer(?)")
                .authoritiesByUsernameQuery(
                        "SELECT _email as username,authority FROM  customer WHERE _email=?");*/
        auth.authenticationProvider(authenticationProvider);
    }

    @Bean
    public SavedRequestAwareAuthenticationSuccessHandler
    savedRequestAwareAuthenticationSuccessHandler() {
        SavedRequestAwareAuthenticationSuccessHandler auth
                = new SavedRequestAwareAuthenticationSuccessHandler();
        auth.setTargetUrlParameter("targetUrl");
        return auth;
    }

    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl db = new JdbcTokenRepositoryImpl();
        db.setDataSource(dataSource);
        return db;
    }
}
