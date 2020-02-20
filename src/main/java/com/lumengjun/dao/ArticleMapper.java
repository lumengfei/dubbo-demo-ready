package com.lumengjun.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;


import com.lumengjun.entity.Article;

public interface ArticleMapper {

	
	@Select("SELECT * FROM cms_article")
	List<Article> getArticleList();

}
