package com.deu.payday.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deu.payday.dao.GoodsMapper;
import com.deu.payday.domain.GoodsVO;
import com.deu.payday.service.Info;
import com.deu.payday.util.PubMap;

import lombok.Setter;

@Controller
public class GoodsController {
	private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private Info info;
	
	@RequestMapping(value = "/goods", method = RequestMethod.POST)
	public String goods(@RequestParam("user_id") String resid, @RequestParam("goods_no") int resno, Model model) {
	
		GoodsVO gd = new GoodsVO();
		gd.setGno(resno);
	
		PubMap m = info.goodsservice(gd);
		
		model.addAttribute("userId", resid);
		model.addAttribute("goodsNo", m.getInt("goodsNo"));
		model.addAttribute("goodsName", m.getString("goodsName") );
		model.addAttribute("goodsPrice", m.getInt("goodsPrice") );
		
		return "goods";
	}
}
