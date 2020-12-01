package com.deu.payday.controller;

import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deu.payday.dao.GoodsMapper;
import com.deu.payday.dao.LoginMapper;
import com.deu.payday.dao.UserinfoMapper;
import com.deu.payday.domain.GoodsVO;
import com.deu.payday.domain.LoginVO;
import com.deu.payday.domain.UpdateVO;
import com.deu.payday.util.PubMap;

import jdk.internal.org.jline.utils.Log;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	@Setter(onMethod_ = @Autowired)
	private LoginMapper loginMapper;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Welcome Index!", locale);
		//PubMap p = loginMapper.goodslist();
		
		model.addAttribute("list", loginMapper.goodslist());
		/*
		model.addAttribute("goodsNo", p.getInt("goodsNo"));
		model.addAttribute("goodsName", p.getString("goodsName"));
		model.addAttribute("goodsPrice", p.getInt("goodsPrice"));
		*/
		return "index";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Locale locale, Model model, @RequestParam("user_id") String resid, @RequestParam("user_pw") String respw) {
		
		logger.info("Welcome Login!");
		
		LoginVO lvo = new LoginVO();
		lvo.setId(resid);
		lvo.setPw(respw);
		String result = loginMapper.login(lvo);
		
		//NPE
		if (result == null) {
			return "fail";
		} else {
			if (result.equals("1")) {
				model.addAttribute("list", loginMapper.goodslist());
				return "index";
			} else {
				return "fail";
			}
		}
	}
	
	@RequestMapping(value = "/loginpage", method = RequestMethod.POST)
	public String loginpage(Locale locale, Model model) {
		logger.info("Welcome LoginPage!", locale);
		
		return "loginpage";
	}
	
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private UserinfoMapper userinfoMapper;
	@RequestMapping(value ="/fix_info", method = RequestMethod.POST)
	public String fix_info(Locale locale, Model model, @RequestParam("user_id") String resid) {
		logger.info("Welcome Fix_Info");

		model.addAttribute("list", userinfoMapper.getList(resid));
		
		if (resid == null) {
			return "fail";
		} else {
			return "fix_info";
		}
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update_info(Locale locale, Model model, @RequestParam("user_id") String resid, @RequestParam("user_name") String resname,
	@RequestParam("user_pw") String respw, @RequestParam("user_ip") String resip, @RequestParam("user_job") String resjob, @RequestParam("user_addr") String resaddr,
	@RequestParam("user_relay") String resrelay, @RequestParam("user_means") String resmeans) {
		logger.info("Welcome update_info");
		UpdateVO uvo = new UpdateVO();
		uvo.setPw(respw);
		uvo.setAddr(resaddr);
		uvo.setJob(resjob);
		uvo.setMeans(resmeans);
		uvo.setRelay(resrelay);
		
		userinfoMapper.update(uvo);
		return "redirect:index";
	}
}
