package com.kals.spring.studyTopics.auth.service;

import com.kals.spring.studyTopics.auth.model.User;

public interface UserService {
	void save(User user);
	User findByUsername(String username);
}
