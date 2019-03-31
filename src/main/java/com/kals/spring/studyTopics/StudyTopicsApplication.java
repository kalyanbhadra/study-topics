package com.kals.spring.studyTopics;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class StudyTopicsApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(StudyTopicsApplication.class, args);
	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(StudyTopicsApplication.class);
	}

}
