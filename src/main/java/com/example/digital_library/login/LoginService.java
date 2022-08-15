package com.example.digital_library.login;

import com.example.digital_library.user.UserRepository;
import com.example.digital_library.user.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class LoginService {

    private final UserRepository userRepository;
    private final UserService userService;

    public String login(LoginUser loginUser){

        if(userRepository.findByEmail(loginUser.getUsername()).isPresent()){

            if(userRepository.findByEmailAndPassword(loginUser.getUsername(), loginUser.getPassword()).isPresent()){
                // TODO: send token to user
                //  give access to user
                return "user logged in";
            } else{
                throw new IllegalStateException("Password is incorrect");
            }


        } else{
            throw new IllegalStateException("No registered account with the given email id");
        }

    }


}
