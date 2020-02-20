package com.lumengjun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.lumengjun.service.ArticleService;

@Controller
public class ArticleController {

	@Autowired
	ArticleService articleService;
	
}
