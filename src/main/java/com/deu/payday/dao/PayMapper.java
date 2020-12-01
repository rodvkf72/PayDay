package com.deu.payday.dao;

import com.deu.payday.domain.PayVO;
import com.deu.payday.util.PubMap;

public interface PayMapper {
	PubMap pay(PayVO pvo);
}
