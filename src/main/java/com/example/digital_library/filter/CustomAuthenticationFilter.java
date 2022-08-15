package com.example.digital_library.filter;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Date;
import java.util.stream.Collectors;


//@Slf4j
public class CustomAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

    private final AuthenticationManager authenticationManager;

    public CustomAuthenticationFilter(AuthenticationManager authenticationManager) {
        this.authenticationManager = authenticationManager;
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws org.springframework.security.core.AuthenticationException {
        String username = request.getParameter("email");
        String password = request.getParameter("password");

//        log.info("Username is: {}", username);
//        log.info("Password is: {}", password);

        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(username, password);

        return authenticationManager.authenticate(authenticationToken);
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest request,
                                            HttpServletResponse response,
                                            FilterChain chain,
                                            Authentication authentication)
            throws IOException, ServletException {

        /** user will try to authenticate itself using attemptAuthenticate
         *  If authentication is not successful, exception will be thrown.
         *  If authentication is successful, this method will be called and
         *  user will be allowed access to their profile.
         */

        User userDetails = (User) authentication.getPrincipal();
        Algorithm algorithm = Algorithm.HMAC256("secret".getBytes());
        String access_token = JWT.create()
                              .withSubject(userDetails.getUsername())
                              .withExpiresAt(new Date(System.currentTimeMillis()+10*60*1000)) // 10 minutes from now
                              .withIssuer(request.getRequestURL().toString())
                              .withClaim("roles", userDetails.getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toList()))
                              .sign(algorithm);

        String refresh_token = JWT.create()
                                .withSubject(userDetails.getUsername())
                                .withExpiresAt(new Date(System.currentTimeMillis()+30*60*1000)) // 10 minutes from now
                                .withIssuer(request.getRequestURL().toString())
                                .sign(algorithm);


        response.setHeader("access_token", access_token);
        response.setHeader("refresh_token", refresh_token);




//        super.successfulAuthentication(request, response, chain, authentication);
    }
}
