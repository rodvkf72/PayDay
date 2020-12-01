package com.deu.payday.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.deu.payday.dao.LoginMapper;
import com.deu.payday.dao.UserinfoMapper;
import com.deu.payday.domain.LoginVO;
import com.deu.payday.domain.UpdateVO;

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
	private UserinfoMapper userinfoMapper;
	
	/*
	@Test
	public void testlogin() {
		LoginVO lvo = new LoginVO();
		lvo.setId("1234");
		lvo.setPw("1234");
	
		String test = loginMapper.login(lvo);
	
		log.info("test : " + test);
		log.info("Test Code : " + lvo);
	}
	*/
	
	@Test
	public void testUserinfo() {
		UpdateVO uvo = new UpdateVO();
		uvo.setPw("1234");
		uvo.setAddr("서울시");
		uvo.setJob("취준생");
		uvo.setMeans("ㅅㅅ");
		uvo.setRelay("ㅇㅇ");
		
		userinfoMapper.update(uvo);
		
		log.info("test : " + userinfoMapper.update(uvo));
	}
}
