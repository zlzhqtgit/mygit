package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @ClassName: Disciplines
 * @Description: 专业学科分类实体类
 * @author: wuPeiLong
 * @date: 2020年01月07日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Disciplines implements Serializable{
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 2687048276620326924L;
	private String disciplines;//专业学科分类信息名称
	private List<Specialty> specialtyList;//专业列表清单
	public Disciplines() {
		super();		
	}
	
	public Disciplines(String disciplines, List<Specialty> specialtyList) {
		super();
		this.disciplines = disciplines;
		this.specialtyList = specialtyList;
	}

	public String getDisciplines() {
		return disciplines;
	}

	public void setDisciplines(String disciplines) {
		this.disciplines = disciplines;
	}

	public List<Specialty> getSpecialtyList() {
		return specialtyList;
	}

	public void setSpecialtyList(List<Specialty> specialtyList) {
		this.specialtyList = specialtyList;
	}

	@Override
	public String toString() {
		return "Disciplines [disciplines=" + disciplines + ", specialtyList=" + specialtyList + "]";
	}
	
	
}
