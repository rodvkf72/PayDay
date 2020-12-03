package com.deu.payday.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.deu.payday.dao.GoodsMapper;
import com.deu.payday.dao.LoginMapper;
import com.deu.payday.dao.PayMapper;
import com.deu.payday.domain.BuyVO;
import com.deu.payday.domain.GoodsVO;
import com.deu.payday.domain.LoginVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.UpdateVO;
import com.deu.payday.domain.UserinfoVO;
import com.deu.payday.util.PubMap;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class InfoImpl implements Info{
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private LoginMapper loginMapper;
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private PayMapper payMapper;
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private GoodsMapper goodsMapper;

	@Override
	public String loginservice(LoginVO lvo) {
		// TODO Auto-generated method stub
		return loginMapper.login(lvo);
	}

	@Override
	public List<PubMap> goodslistservice() {
		// TODO Auto-generated method stub
		return loginMapper.goodslist();
	}

	@Override
	public PubMap payservice(PayVO pvo) {
		// TODO Auto-generated method stub
		return payMapper.pay(pvo);
	}

	@Override
	public void buyservice(BuyVO bvo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PubMap goodsservice(GoodsVO gd) {
		// TODO Auto-generated method stub
		return goodsMapper.goods(gd);
	}

	@Override
	public List<UserinfoVO> getListservice(String id) {
		// TODO Auto-generated method stub
		return loginMapper.getList(id);
	}

	@Override
	public void insertservice() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateservice(UpdateVO uvo) {
		// TODO Auto-generated method stub
	}

	@Override
	public List<PayVO> getListservice(int pay) {
		// TODO Auto-generated method stub
		return loginMapper.getList(pay);
	}

}
