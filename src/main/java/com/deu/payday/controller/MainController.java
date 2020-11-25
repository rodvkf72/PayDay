package com.deu.payday.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deu.payday.dao.MainMapper;
import com.deu.payday.util.PubMap;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	@Setter(onMethod_ = @Autowired)
	private MainMapper mainMapper;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		
		logger.info("Welcome Main!");
		
		List<PubMap> gsd = mainMapper.goodsData();
		log.info(gsd);
		
		return "main";
	}	
}
