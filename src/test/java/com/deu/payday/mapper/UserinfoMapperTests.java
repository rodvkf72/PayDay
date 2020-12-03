package com.deu.payday.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.deu.payday.dao.LoginMapper;
import com.deu.payday.domain.UpdateVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

// Test for Controller
@WebAppConfiguration

@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
// Java Config
// @ContextConfiguration(classes = {
// org.zerock.config.RootConfig.class,
// org.zerock.config.ServletConfig.class} )
@Log4j
public class UserinfoMapperTests {
	@Setter(onMethod_ = { @Autowired })
	private LoginMapper loginMapper;
	
	/*
	@Test
	public void testuserinfo() {
		UserinfoVO uvo = new UserinfoVO();
		uvo.setId("1234");
		
		userinfoMapper.getList("1234");
	}
	*/
	@Test
	public void testupdate() {
		UpdateVO uvo = new UpdateVO();
		uvo.setPw("1234");
		uvo.setAddr("부산시");
		uvo.setJob("학생");
		uvo.setMeans("ㅁㅁ");
		uvo.setRelay("ㄹㄹ");
		
		loginMapper.update(uvo);
		
		loginMapper.getList("1234");
	}

}