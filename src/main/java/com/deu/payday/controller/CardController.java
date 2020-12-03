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

import com.deu.payday.dao.CardenrollMapper;
import com.deu.payday.dao.LoginMapper;
import com.deu.payday.dao.PayMapper;
import com.deu.payday.domain.CardenrollVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.util.PubMap;

import lombok.Setter;

@Controller
public class CardController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private CardenrollMapper cardenrollMapper;
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private PayMapper payMapper;
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private LoginMapper loginMapper;
	
	@RequestMapping(value = "/card_enroll", method = RequestMethod.POST)
	public String enroll(Locale locale, Model model) {
		logger.info("Welcome card enroll page");
		
		return "card_enroll";
	}
	
	@RequestMapping(value = "/enroll", method = RequestMethod.POST)
	public String update_info(Locale locale, Model model, @RequestParam("user_id") String resid, @RequestParam("card_no") String resno,
	@RequestParam("card_cvc") int rescvc, @RequestParam("card_duration") String resduration, @RequestParam("card_pw") int respw,
	@RequestParam("card_money") int resmoney) {
		logger.info("Welcome card info enrollment");
		CardenrollVO cvo = new CardenrollVO();
		cvo.setUserid(resid);
		cvo.setCardno(resno);
		cvo.setCardcvc(rescvc);
		cvo.setCardduration(resduration);
		cvo.setCardpw(respw);
		cvo.setCardmoney(resmoney);
		
		cardenrollMapper.enroll(cvo);
		
		PayVO pvo = new PayVO();
		pvo.setUser_id(resid);
		
		PubMap m = payMapper.pay(pvo);
		
		model.addAttribute("cardMoney", m.getInt("cardMoney"));
		model.addAttribute("list", loginMapper.goodslist());
		
		return "index";
	}
	
	@RequestMapping(value = "/card_del", method = RequestMethod.POST)
	public String del_card(Locale locale, Model model, @RequestParam("user_id") String resid) {
		logger.info("Welcome card delete");
		PayVO pvo = new PayVO();
		pvo.setUser_id(resid);
		
		cardenrollMapper.del(pvo);
		
		PubMap m = payMapper.pay(pvo);
		
		model.addAttribute("cardMoney", m.getInt("cardMoney") );
		model.addAttribute("list", loginMapper.goodslist());

		return "index";
	}
}
