package com.lumengjun.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lumengjun.entity.Article;
import com.lumengjun.service.ArticleService;

@Controller
public class ArticleController {

	@Autowired
	ArticleService articleService;
	
	
	@RequestMapping("list")
	public String list(Model model){
		List<Article> list =articleService.getArticleList();
		model.addAttribute("list", list);
		return "list";
	}
	
}
