package com.kals.spring.studyTopics.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kals.spring.studyTopics.auth.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{

}
