package com.kals.spring.studyTopics.auth.service;

public interface SecurityService {
	String findLoggedInUsername();
	void autoLogin(String username, String password);
}
