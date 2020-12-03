package com.deu.payday.dao;

import com.deu.payday.domain.CardenrollVO;
import com.deu.payday.domain.PayVO;

public interface CardenrollMapper {
	int enroll(CardenrollVO cvo);
	void del(PayVO pvo);
}
