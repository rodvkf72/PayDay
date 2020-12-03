package com.deu.payday.dao;

import java.util.List;

import com.deu.payday.domain.LoginVO;
import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.UpdateVO;
import com.deu.payday.domain.UserinfoVO;
import com.deu.payday.util.PubMap;

public interface LoginMapper {
	String login(LoginVO lvo);
	List<PubMap> goodslist();
	List<UserinfoVO> getList(String id);
	void insert();
	int update(UpdateVO uvo);
	List<PayVO> getList(int pay);
}
