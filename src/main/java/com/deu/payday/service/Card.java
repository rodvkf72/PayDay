package com.deu.payday.service;

import com.deu.payday.domain.CardenrollVO;
import com.deu.payday.domain.CardsimpleVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.PaymentVO;
import com.deu.payday.domain.SimpleVO;
import com.deu.payday.util.PubMap;

public interface Card {
	void enrollservice(CardenrollVO cvo);
	void delservice(PayVO pvo);
	void simpleservice(SimpleVO svo);
	String simplepwservice(CardsimpleVO cvo);
	PubMap paymentservice(PaymentVO pd);
}
