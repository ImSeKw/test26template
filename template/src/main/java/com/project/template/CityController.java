package com.project.template;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.template.service.City;
import com.project.template.service.CityDao;

@Controller
public class CityController {
	@Autowired
	CityDao cityDao;
	private static final Logger logger = LoggerFactory.getLogger(CityController.class);
	
	// 도시 삭제
	@RequestMapping(value = "/City/deleteCity", method = RequestMethod.GET)
	public String deleteCity(City city) {
		cityDao.deleteCity(city);
		return "redirect:/city/cityList";
	}
	
	// 도시 수정 Action
	@RequestMapping(value = "/City/updateCity", method = RequestMethod.POST)
	public String updateCity(City city) {
		cityDao.updateCity(city);
		return "redirect:/city/cityList";
	}
	
	// 도시 수정 Form
	@RequestMapping(value = "/City/updateCity", method = RequestMethod.GET)
	public String updateCity(Model model, @RequestParam(value = "cityId") int cityId) {
		City reCity = cityDao.updateCity(cityId);
		model.addAttribute("city", reCity);
		return "city/updateCity";
	}
	
	// 도시 입력 Action
	@RequestMapping(value = "/City/insertCity", method = RequestMethod.POST)
	public String insertCity(City city) {
		cityDao.insertCity(city);
		return "redirect:/city/cityList";
	}
	
	// 도시 입력 Form
	@RequestMapping(value = "/City/insertCity", method = RequestMethod.GET)
	public String insertCity() {
		return "city/insertCity";
	}
	
	// 도시 전체 조회
	@RequestMapping(value = "/City/CityList", method = RequestMethod.GET)
	public String cityList(Model model) {
		logger.debug("cityList CityController.java");
		List<City> list = cityDao.selectCityList();
		for(City c : list) {
			logger.debug("{} : City cityList CityController.java", c.getCityName());
		}
		model.addAttribute("list", list);
		return "city/cityList";
	}
}
