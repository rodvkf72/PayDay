package com.deu.payday.controller;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.deu.payday.dao.MainMapper;
import com.deu.payday.util.PubMap;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration

@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })

@Log4j
public class MainControllerTests {
	@Setter(onMethod_ = { @Autowired })
	private MainMapper mainMapper;
	
	@Test
	public void testmain() {
		List<PubMap> test = mainMapper.goodsData();

		log.info("test : " + test);
	}
}
