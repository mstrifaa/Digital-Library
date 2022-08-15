package com.example.digital_library.user;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import java.util.Collection;
import java.util.Collections;


@Getter
@Setter
@AllArgsConstructor
@EqualsAndHashCode
@Entity // Hibernate creates this table
public class User implements UserDetails { // for login and registration
    //make it AppUser,
    // because Spring Security has a built-in user class...


    @SequenceGenerator(
            name = "user_sequence",
            sequenceName = "user_sequence",
            allocationSize = 1
    )
    @Id
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "user_sequence"
    )
    private int id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String email; // the email, actually

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String country;

    @Column(nullable = false)
    private String dob;

    @Column(nullable = true)
    private String institution=null;

    @Enumerated(EnumType.STRING)
    private UserRole userRole;

    private Boolean locked = false;
    // because account will be enabled only after email is CONFIRMED
    private Boolean enabled = false;

    public User() {
    }

    public User(String name,
                String email,
                String password,
                String country,
                String dob,
                String institution,
                UserRole userRole) {
//        this.id = id;
        this.name = name;
        this.country = country;
        this.institution = institution;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.userRole = userRole;
    }

    // CRM stuffs

    // granting permission and stuff
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        SimpleGrantedAuthority authority =
                new SimpleGrantedAuthority(userRole.name());
        return Collections.singletonList(authority);
    }

    @Override
    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return !locked;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return enabled;
    }

}
