package com.kals.spring.studyTopics.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.kals.spring.studyTopics.domain.Topic;

public interface TopicRepository extends JpaRepository<Topic, Integer>{

}
