package com.deu.payday.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.PaymentVO;
import com.deu.payday.service.Card;
import com.deu.payday.util.PubMap;

import lombok.Setter;

@Controller
public class PayController {

	@Autowired
	@Setter(onMethod_ = @Autowired)
	private Card card;
	
	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String goods(@RequestParam("user_id") String resid, @RequestParam("goods_no") int resno, @RequestParam("amount") int resamount, @RequestParam("sum") int ressum, Locale locale, Model model) {
	
		PaymentVO pd = new PaymentVO();
		pd.setGno(resno);
	
		PubMap m = card.paymentservice(pd);
		
		model.addAttribute("userId", resid);
		model.addAttribute("goodsAmount", resamount);
		model.addAttribute("goodsSum", ressum);
		model.addAttribute("goodsName", m.getString("goodsName") );
		model.addAttribute("goodsPrice", m.getInt("goodsPrice") );
		
		return "payment";
	}
}

