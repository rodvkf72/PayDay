package com.deu.payday.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.deu.payday.dao.CardenrollMapper;
import com.deu.payday.dao.PaymentMapper;
import com.deu.payday.domain.CardenrollVO;
import com.deu.payday.domain.CardsimpleVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.PaymentVO;
import com.deu.payday.domain.SimpleVO;
import com.deu.payday.util.PubMap;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CardImpl implements Card{
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private CardenrollMapper cardenrollMapper;
	@Autowired
	@Setter(onMethod_ = @Autowired)
	private PaymentMapper paymentMapper;

	@Override
	public void enrollservice(CardenrollVO cvo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delservice(PayVO pvo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void simpleservice(SimpleVO svo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String simplepwservice(CardsimpleVO cvo) {
		// TODO Auto-generated method stub
		return cardenrollMapper.simplepw(cvo);
	}

	@Override
	public PubMap paymentservice(PaymentVO pd) {
		// TODO Auto-generated method stub
		return paymentMapper.payment(pd);
	}

}
