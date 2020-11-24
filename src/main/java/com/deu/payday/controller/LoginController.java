package com.deu.payday.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deu.payday.dao.LoginMapper;
import com.deu.payday.domain.LoginVO;
import com.deu.payday.util.PubMap;

public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private LoginMapper loginMapper;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void index(Locale locale, Model model) {
		logger.info("Welcome Index!", locale);
		
		
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Locale locale, Model model) {
		logger.info("Welcome Login!", locale);
		
		

		List<LoginVO> resultMap = loginMapper.loginData();
		model.addAttribute("resultMap", resultMap);

		return "main";
	}	
}
