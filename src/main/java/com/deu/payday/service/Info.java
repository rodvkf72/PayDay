package com.deu.payday.service;

import java.util.List;

import com.deu.payday.domain.BuyVO;
import com.deu.payday.domain.GoodsVO;
import com.deu.payday.domain.LoginVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.UpdateVO;
import com.deu.payday.domain.UserinfoVO;
import com.deu.payday.util.PubMap;

public interface Info {
	String loginservice(LoginVO lvo);
	List<PubMap> goodslistservice();
	PubMap payservice(PayVO pvo);
	void buyservice(BuyVO bvo);
	PubMap goodsservice(GoodsVO gd);
	List<UserinfoVO> getListservice(String id);
	void insertservice();
	void updateservice(UpdateVO uvo);
	List<PayVO> getListservice(int pay);
}
