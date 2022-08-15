package com.example.digital_library;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class DigitalLibraryApplication {

	public static void main(String[] args) {

		SpringApplication.run(DigitalLibraryApplication.class);
	}
}
