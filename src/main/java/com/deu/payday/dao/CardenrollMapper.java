package com.deu.payday.dao;

import com.deu.payday.domain.CardenrollVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.SimpleVO;

public interface CardenrollMapper {
	int enroll(CardenrollVO cvo);
	void del(PayVO pvo);
	void simple(SimpleVO svo);
}
