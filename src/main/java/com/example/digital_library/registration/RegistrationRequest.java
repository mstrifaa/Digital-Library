package com.example.digital_library.registration;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class RegistrationRequest {
//    private final int id;
    private String name;
    private String email;
    private String password;
    private String country;
    private String dob;
    private String institution;
//    private final User userRole;

}
