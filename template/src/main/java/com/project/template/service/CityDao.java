package com.project.template.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CityDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	private static final Logger logger = LoggerFactory.getLogger(CityDao.class);
	// namespace (중복 처리)
	private final String NAMESPACE = "com.project.template.service.CityMapper.";
	
	// 도시 삭제
	public void deleteCity(City city) {
		sqlSessionTemplate.delete(NAMESPACE + "deleteCity", city);
	}
	
	// 도시 수정
	public void updateCity(City city) {
		sqlSessionTemplate.update(NAMESPACE + "updateCity", city);
	}
	
	// 도시 조회 (수정)
	public City updateCity(int cityId) {
		return sqlSessionTemplate.selectOne(NAMESPACE + "selectCityId", cityId);
	}
	
	// 도시 추가
	public void insertCity(City city) {
		sqlSessionTemplate.insert(NAMESPACE + "insertCity", city);
	}
	
	// 전체 도시 목록
	public List<City> selectCityList() {
		logger.debug("selectCityList CityDao.java");
		List<City> list = sqlSessionTemplate.selectList(NAMESPACE + "selectCityList");
		for(City c : list) {
			logger.debug("{} : City selectCityList CityDao.java", c.getCityName());
		}
		return list;
	}
}
