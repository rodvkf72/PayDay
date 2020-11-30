package com.deu.payday.dao;

import java.util.List;

import com.deu.payday.domain.GoodsVO;
import com.deu.payday.util.PubMap;

public interface GoodsMapper {
	List<PubMap> goods(GoodsVO gd);
}
