package com.deu.payday.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.deu.payday.dao.LoginMapper;
import com.deu.payday.domain.LoginVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration

@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })

@Log4j
public class LoginControllerTests {
	@Setter(onMethod_ = { @Autowired })
	private LoginMapper loginMapper;
	
	@Test
	public void testlogin() {
		LoginVO lvo = new LoginVO();
		lvo.setId("1234");
		lvo.setPw("1234");
	
		String test = loginMapper.login(lvo);
	
		log.info("test : " + test);
		log.info("Test Code : " + lvo);
	}
}
