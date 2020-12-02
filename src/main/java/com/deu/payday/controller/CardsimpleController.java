package com.deu.payday.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deu.payday.dao.CardsimpleMapper;
import com.deu.payday.domain.CardsimpleVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.util.PubMap;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CardsimpleController {
	private static final Logger logger = LoggerFactory.getLogger(CardsimpleController.class);
	
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private CardsimpleMapper cardsimpleMapper;
	
	@RequestMapping(value = "/simplepw", method = RequestMethod.POST)
	public String simplepw(Locale locale, Model model, @RequestParam("user_id") String resid, @RequestParam("simple_pw") String resspw) {
		
		logger.info("결제완료");
		
		CardsimpleVO cvo = new CardsimpleVO();
		cvo.setId(resid);
		cvo.setSpw(resspw);
		String result = cardsimpleMapper.simplepw(cvo);
		
		//NPE
		if (result == null) {
			return "fail";
		} else {
			if (result.equals("1")) {
				
				return "index";
			} else {
				return "fail";
			}
		}
	}

}
