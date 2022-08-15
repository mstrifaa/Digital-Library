package com.example.digital_library.registration.token;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ConfirmationTokenRepository extends JpaRepository <ConfirmationToken, Long>{


    Optional<ConfirmationToken> findByToken(String token);


}
