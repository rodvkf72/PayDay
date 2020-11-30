package com.deu.payday.domain;

import lombok.Data;

@Data
public class UpdateVO {
	private String pw;
	private String job;
	private String addr;
	private String relay;
	private String means;
}