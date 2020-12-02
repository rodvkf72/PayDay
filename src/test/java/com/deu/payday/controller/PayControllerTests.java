package com.deu.payday.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.deu.payday.dao.PayMapper;
import com.deu.payday.domain.LoginVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.util.PubMap;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration

@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })

@Log4j
public class PayControllerTests {
	@Setter(onMethod_ = { @Autowired })
	private PayMapper paymapper;
	
	@Test
	public void testpay() {
		PayVO pvo = new PayVO();
		pvo.setUser_id("1234");
		paymapper.pay(pvo);
	
		PubMap test = paymapper.pay(pvo);
	
		log.info("test : " + test);
	}
}
