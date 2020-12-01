package com.deu.payday.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deu.payday.dao.PayMapper;
import com.deu.payday.domain.PayVO;

import lombok.Setter;

@Controller
public class PayController {

	@Autowired
	@Setter(onMethod_ = @Autowired)
	PayMapper paymapper;
	@RequestMapping(value = "/pay", method = RequestMethod.POST)
	public String pay () {
		PayVO pvo = new PayVO();
		pvo.setUser_id(1234);
		
		paymapper.pay(pvo);
		
		return "pay";
	}
}

