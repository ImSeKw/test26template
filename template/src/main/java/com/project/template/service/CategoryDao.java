package com.project.template.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE = "com.project.template.service.CategoryMapper."; // 변경!!
	
	public List<Category> selectCategoryList() {
		return sqlSessionTemplate.selectList(NAMESPACE + "selectCategoryList");
	}
}
