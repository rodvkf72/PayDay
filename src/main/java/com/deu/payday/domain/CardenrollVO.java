package com.deu.payday.domain;

import lombok.Data;

@Data
public class CardenrollVO {
	private String userid;
	private String cardno;
	private String cardduration;
	private int cardcvc;
	private int cardpw;
	private int cardmoney;
}
