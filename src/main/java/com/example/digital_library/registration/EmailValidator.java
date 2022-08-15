package com.example.digital_library.registration;

import org.springframework.stereotype.Service;

import java.util.function.Predicate;

@Service
public class EmailValidator implements Predicate<String> {


    @Override
    public boolean test(String o) {

        // TODO: Regex to validate email
        return true;
    }
}
