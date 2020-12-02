package com.deu.payday.controller;
import java.util.Locale;

import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deu.payday.dao.PaymentMapper;
import com.deu.payday.domain.PaymentVO;
import com.deu.payday.util.PubMap;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
@Controller
public class PaymentController {
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private PaymentMapper paymentMapper;
	
	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String goods(@RequestParam("user_id") String resid, @RequestParam("goods_no") int resno, @RequestParam("amount") int resamount, @RequestParam("sum") int ressum, Locale locale, Model model) {
	
		PaymentVO pd = new PaymentVO();
		pd.setGno(resno);
	
		PubMap m = paymentMapper.payment(pd);
		
		model.addAttribute("userId", resid);
		model.addAttribute("goodsAmount", resamount);
		model.addAttribute("goodsSum", ressum);
		model.addAttribute("goodsName", m.getString("goodsName") );
		model.addAttribute("goodsPrice", m.getInt("goodsPrice") );
		
		return "payment";
	}
}

