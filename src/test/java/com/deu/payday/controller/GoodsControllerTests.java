package com.deu.payday.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.deu.payday.dao.GoodsMapper;
import com.deu.payday.domain.GoodsVO;
import com.deu.payday.util.PubMap;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration

@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
//Java Config
//@ContextConfiguration(classes = {
//org.zerock.config.RootConfig.class,
//org.zerock.config.ServletConfig.class} )
@Log4j
public class GoodsControllerTests {
	@Setter(onMethod_ = { @Autowired })
	private GoodsMapper goodsMapper;
	
	@Test
	public void testgoods() {
		GoodsVO gvo = new GoodsVO();
		gvo.setGno(1);
		
		PubMap test = goodsMapper.goods(gvo);
		log.info("test : " + test);
	}
}
