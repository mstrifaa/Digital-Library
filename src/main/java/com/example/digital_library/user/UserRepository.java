package com.example.digital_library.user;

import org.springframework.data.repository.CrudRepository;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Repository
@Transactional(readOnly = true)
public interface UserRepository extends CrudRepository<User, Integer> {

    //has methods for CRUD operations defined by CrudRepository; UserRepository inherits them
    // read methods (findby...) are multiple - find by one or multiple variables (select * from xyz where x=.. and y=... and z=... and so on)

    Optional<User> findByEmail(String email);

    Optional<User> findByEmailAndPassword(String email, String password);
}
