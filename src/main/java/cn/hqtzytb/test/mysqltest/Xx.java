package cn.hqtzytb.test.mysqltest;

import java.io.Serializable;

public class Xx implements Serializable{
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 3398008994607085263L;
	private String xxdm;
	private String xxmn;
	private String nf;
	private String lqlx;
	private String lqpc;
	public Xx() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Xx(String xxdm, String xxmn, String nf, String lqlx, String lqpc) {
		super();
		this.xxdm = xxdm;
		this.xxmn = xxmn;
		this.nf = nf;
		this.lqlx = lqlx;
		this.lqpc = lqpc;
	}
	public String getXxdm() {
		return xxdm;
	}
	public void setXxdm(String xxdm) {
		this.xxdm = xxdm;
	}
	public String getXxmn() {
		return xxmn;
	}
	public void setXxmn(String xxmn) {
		this.xxmn = xxmn;
	}
	public String getNf() {
		return nf;
	}
	public void setNf(String nf) {
		this.nf = nf;
	}
	public String getLqlx() {
		return lqlx;
	}
	public void setLqlx(String lqlx) {
		this.lqlx = lqlx;
	}
	public String getLqpc() {
		return lqpc;
	}
	public void setLqpc(String lqpc) {
		this.lqpc = lqpc;
	}
	@Override
	public String toString() {
		return "Xx [xxdm=" + xxdm + ", xxmn=" + xxmn + ", nf=" + nf + ", lqlx=" + lqlx + ", lqpc=" + lqpc + "]";
	}
	
}
