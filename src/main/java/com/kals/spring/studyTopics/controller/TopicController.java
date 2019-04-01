package com.kals.spring.studyTopics.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kals.spring.studyTopics.repositories.TopicRepository;

@Controller
public class TopicController {
	
	@Autowired
	TopicRepository topicRepo;
	
	@RequestMapping("/topics")
	public String home(Model model){
		model.addAttribute("topics", topicRepo.findAll());
		return "topics";
	}
}
