package com.kals.spring.studyTopics.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kals.spring.studyTopics.domain.Topic;
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
	
	@PostMapping("/addTopic")
	public String addTopic(@RequestParam("description") String description, Model model){
		Topic t = new Topic();
		t.setDescription(description);
		model.addAttribute("topics", topicRepo.findAll());
		return "redirect:topics";//This is done so that the URL changes to /topics, not stay at /addTopic
	}
}
