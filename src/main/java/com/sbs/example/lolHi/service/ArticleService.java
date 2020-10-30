package com.sbs.example.lolHi.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.example.lolHi.dao.ArticleDao;
import com.sbs.example.lolHi.dto.Article;
import com.sbs.example.lolHi.util.Util;

@Service
public class ArticleService {
	@Autowired
	private ArticleDao articleDao;

	public List<Article> getArticles() {
		return articleDao.getArticles();
	}

	public Article getArticleById(int id) {
		
		return articleDao.getArticleById(id);
	}

	public void deleteArticleById(int id) {
		articleDao.deleteArticleById(id);
	}

	public void modifyArticle(int id, String title, String body) {
		articleDao.modifyArticle(id, title, body);
	}

	public int writeArticle(Map<String, Object> param) {
		articleDao.writeArticle(param);
		
		//BigInteger bigIntId = (BigInteger)param.get("id"); 
		//int id = bigIntId.intValue();   게시물 번호 알 수 있게 해줘
		
		int id = Util.getAsInt(param.get("id"));
		
		return id;
	}

}
