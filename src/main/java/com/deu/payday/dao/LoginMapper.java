package com.deu.payday.dao;

import java.util.List;

import com.deu.payday.domain.LoginVO;
import com.deu.payday.domain.UserinfoVO;

public interface LoginMapper {
	String login(LoginVO lvo);
}
