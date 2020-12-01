package com.deu.payday.dao;

import java.util.List;

import com.deu.payday.domain.PayVO;
import com.deu.payday.domain.UpdateVO;
import com.deu.payday.domain.UserinfoVO;

public interface UserinfoMapper {
	//List<PubMap> userData(UserinfoVO uvo);
	List<UserinfoVO> getList(String id);
	
	void insert();
	
	int update(UpdateVO uvo);
	
	
	List<PayVO> getList(int pay);
	
	
	
}
