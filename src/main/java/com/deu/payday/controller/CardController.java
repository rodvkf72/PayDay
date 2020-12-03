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

import com.deu.payday.domain.BuyVO;
import com.deu.payday.domain.CardenrollVO;
import com.deu.payday.domain.CardsimpleVO;
import com.deu.payday.domain.LoginVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.SimpleVO;
import com.deu.payday.service.Card;
import com.deu.payday.service.Info;
import com.deu.payday.util.PubMap;

import lombok.Setter;

@Controller
public class CardController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private Info info;
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private Card card;
	
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
		
		card.enrollservice(cvo);
		
		PayVO pvo = new PayVO();
		pvo.setUser_id(resid);
		
		PubMap m = info.payservice(pvo);
		
		model.addAttribute("cardMoney", m.getInt("cardMoney"));
		model.addAttribute("list", info.goodslistservice());
		
		return "index";
	}
	
	@RequestMapping(value = "/card_del", method = RequestMethod.POST)
	public String del_card(Locale locale, Model model, @RequestParam("user_id") String resid) {
		logger.info("Welcome card delete");
		PayVO pvo = new PayVO();
		pvo.setUser_id(resid);
		
		card.delservice(pvo);
		
		PubMap m = info.payservice(pvo);
		
		model.addAttribute("cardMoney", m.getInt("cardMoney") );
		model.addAttribute("list", info.goodslistservice());

		return "index";
	}
	
	@RequestMapping(value = "/card_simple_page", method = RequestMethod.POST)
	public String card_del_page(Locale locale, Model model, @RequestParam("user_id") String resid) {
		logger.info("Welcome card simple enroll page");
		
		return "sepage";
	}
	
	@RequestMapping(value = "/card_simple", method = RequestMethod.POST)
	public String card_simple(Locale locale, Model model, @RequestParam("simple_mean") String resmean, @RequestParam("user_id") String resid, @RequestParam("user_pw") String resupw, @RequestParam("simple_pw") int respw) {
		logger.info("Welcome card simple enroll");
		LoginVO lvo = new LoginVO();
		lvo.setId(resid);
		lvo.setPw(resupw);
		info.loginservice(lvo);
		String result = info.loginservice(lvo);
		
		PayVO pvo = new PayVO();
		pvo.setUser_id(resid);
		PubMap m = info.payservice(pvo);
		
		if (result == null) {
			return "fail";
		} else {
			if (result.equals("1")) {
				SimpleVO svo = new SimpleVO();
				svo.setUser_id(resid);
				svo.setSimple_mean(resmean);
				svo.setSimple_pw(respw);
				
				card.simpleservice(svo);
				
				model.addAttribute("cardMoney", m.getInt("cardMoney"));
				model.addAttribute("list", info.goodslistservice());
				return "index";
			} else {
				return "fail";
			}
		}
	}
	
	@RequestMapping(value = "/simplepw", method = RequestMethod.POST)
	public String simplepw(Locale locale, Model model, @RequestParam("user_id") String resid, @RequestParam("simple_pw") String resspw, @RequestParam("result") int resresult) {
		
		logger.info("Welcome payment page");
		
		CardsimpleVO cvo = new CardsimpleVO();
		cvo.setId(resid);
		cvo.setSpw(resspw);
		String result = card.simplepwservice(cvo);
		
		BuyVO bvo = new BuyVO();
		bvo.setUser_id(resid);
		bvo.setResult(resresult);
		info.buyservice(bvo);

		PayVO pvo = new PayVO();
		pvo.setUser_id(resid);
		PubMap m = info.payservice(pvo);
		
		//NPE
		if (result == null) {
			return "fail";
		} else {
			if (result.equals("1")) {
				model.addAttribute("list", info.goodslistservice());
				model.addAttribute("cardMoney", m.getInt("cardMoney") );
				return "index";
			} else {
				return "fail";
			}
		}
	}
}
