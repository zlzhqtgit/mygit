package cn.hqtzytb.entity;

import java.io.Serializable;

/**
 * @ClassName: Vocation
 * @Description: 测评结果关联专业/职业输出实体类
 * @author: wuPeiLong
 * @date: 2019年12月18日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class PersonalityOut implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 2351916853760497431L;
	
	private String nuber;//专业/职业编码
	private String name;//专业/职业名字
	
	public PersonalityOut() {
		super();
	}


	public PersonalityOut(String nuber, String name) {
		super();
		this.nuber = nuber;
		this.name = name;
	}


	public String getNuber() {
		return nuber;
	}


	public PersonalityOut setNuber(String nuber) {
		this.nuber = nuber;
		return this;
	}


	public String getName() {
		return name;
	}


	public PersonalityOut setName(String name) {
		this.name = name;
		return this;
	}


	@Override
	public String toString() {
		return "PersonalityOut [nuber=" + nuber + ", name=" + name + "]";
	}
	
	
	
}
