package com.deu.payday.dao;

import com.deu.payday.domain.PaymentVO;
import com.deu.payday.util.PubMap;

public interface PaymentMapper {
	PubMap payment(PaymentVO pd);
}
