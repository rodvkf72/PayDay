package com.deu.payday.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.deu.payday.dao.CardenrollMapper;
import com.deu.payday.domain.CardenrollVO;

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
public class CardenrollMapperTests {
	@Setter(onMethod_ = { @Autowired })
	private CardenrollMapper cardenrollMapper;
	
	@Test
	public void testinsert() {
		CardenrollVO cvo = new CardenrollVO();
		cvo.setUserid("1234");
		cvo.setCardno("5198920000694877");
		cvo.setCardcvc(691);
		cvo.setCardduration("1234");
		cvo.setCardpw(1234);
		cvo.setCardmoney(1000000);
		
		cardenrollMapper.enroll(cvo);
	}
}
