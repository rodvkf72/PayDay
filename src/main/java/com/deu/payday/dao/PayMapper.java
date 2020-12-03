package com.deu.payday.dao;

import com.deu.payday.domain.BuyVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.util.PubMap;

public interface PayMapper {
	PubMap pay(PayVO pvo);
	
	void buy(BuyVO bvo);
}
