package com.example.digital_library.login;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

@AllArgsConstructor
@RestController
@RequestMapping("/login")
public class LoginController {

    private final LoginService loginService;

    @PostMapping("/loginUser")
    public String login(@RequestBody LoginUser loginUser){

        loginService.login(loginUser);
        return "logged in";
    }
}
