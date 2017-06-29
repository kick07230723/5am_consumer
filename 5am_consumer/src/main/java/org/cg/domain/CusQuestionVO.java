package org.cg.domain;

import java.sql.Timestamp;

public class CusQuestionVO {
private int cusqno;
private String custitle;
private String cuscontent;
private String cuswriter;
private Timestamp regdate;
private Timestamp updatedate;


public int getCusqno() {
	return cusqno;
}
public void setCusqno(int cusqno) {
	this.cusqno = cusqno;
}
public String getCustitle() {
	return custitle;
}
public void setCustitle(String custitle) {
	this.custitle = custitle;
}
public String getCuscontent() {
	return cuscontent;
}
public void setCuscontent(String cuscontent) {
	this.cuscontent = cuscontent;
}
public String getCuswriter() {
	return cuswriter;
}
public void setCuswriter(String cuswriter) {
	this.cuswriter = cuswriter;
}
public Timestamp getRegdate() {
	return regdate;
}
public void setRegdate(Timestamp regdate) {
	this.regdate = regdate;
}
public Timestamp getUpdatedate() {
	return updatedate;
}
public void setUpdatedate(Timestamp updatedate) {
	this.updatedate = updatedate;
}
@Override
public String toString() {
	return "CusQuestionVO [cusqno=" + cusqno + ", custitle=" + custitle + ", cuscontent=" + cuscontent + ", cuswriter="
			+ cuswriter + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
}





}
