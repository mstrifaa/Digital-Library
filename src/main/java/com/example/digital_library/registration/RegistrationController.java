package com.example.digital_library.registration;

import lombok.*;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path = "/registration")
@AllArgsConstructor
public class RegistrationController {

    private final RegistrationService registrationService;

    @PostMapping("/registerUser")
     // type of request param that we will accept
    public String register(@RequestBody RegistrationRequest request){

         return registrationService.register(request);
    }

    @GetMapping(path = "/confirmToken")
    public String confirm(@RequestParam("token") String token){
         return registrationService.confirmToken(token);
    }

}
