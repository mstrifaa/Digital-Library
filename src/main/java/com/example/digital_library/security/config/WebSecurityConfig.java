package com.example.digital_library.security.config;

import com.example.digital_library.filter.CustomAuthenticationFilter;
import com.example.digital_library.user.UserService;
import lombok.AllArgsConstructor;
import org.springframework.context.annotation.*;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.core.annotation.Order;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;


                                // SECURING ENDPOINTS


@Configuration
@AllArgsConstructor
@EnableWebSecurity
@EnableWebMvc
@Order(SecurityProperties.IGNORED_ORDER )
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private final UserService userService;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;


    @Override
    protected void configure(HttpSecurity http) throws Exception {
//        http.csrf().disable();
//                .csrf().disable()
//                .authorizeRequests()
//                    .antMatchers("/registration/**")
//                    .permitAll()
//                    .anyRequest()
//                    .authenticated().and();
//                    .formLogin();
        // anything that goes through that endpoint 👆 -we want to allow it

//        super.configure(http);

        http.csrf().disable();
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

//                 secure urls/endpoints

        // order in which resources (URLs) are allowed/blocked are important.
        http.authorizeRequests().anyRequest().permitAll();

        /**this means only users with role-user can make a GET request to /userDashboard */
       // http.authorizeRequests().antMatchers(HttpMethod.GET,"/userDashboard").hasAuthority("ROLE_USER");

        // this means only users with role-admin can make a POST request to /addAdminUser
        //http.authorizeRequests().antMatchers(HttpMethod.POST,"/addAdminUser").hasAuthority("ROLE_ADMIN");
//        http.addFilter(new CustomAuthenticationFilter(authenticationManager()));

        //see CustomAuthenticationFilter.java

    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(daoAuthenticationProvider());


        //to check for users - authorization
//        auth.userDetailsService(userDetailsService).setPasswordEncoder(bCryptPasswordEncoder);

    }

    @Bean
    public DaoAuthenticationProvider daoAuthenticationProvider(){
        DaoAuthenticationProvider provider =
                new DaoAuthenticationProvider();

        provider.setPasswordEncoder(bCryptPasswordEncoder);
        provider.setUserDetailsService(userService);

        return provider;
    }

    @Bean
    @Override
    protected AuthenticationManager authenticationManager() throws Exception {
        return super.authenticationManagerBean();
    }
}
