package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @ClassName: Specialty
 * @Description: 专业数据信息输出实体类
 * @author: wuPeiLong
 * @date: 2019年12月22日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class SpecialtyOut implements Serializable{
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -1656632661135504969L;
	private Integer count;//对应专业数量
	private String specialtyMajorName;//
	private String specialtyDisciplines;//专业学科分类
	private List<Specialty> specialtyList;//专业列表清单
	
	public SpecialtyOut() {
		super();

	}
	public SpecialtyOut(Integer count, List<Specialty> specialtyList) {
		super();
		this.count = count;
		this.specialtyList = specialtyList;
	}
	
	
	public SpecialtyOut(Integer count, String specialtyDisciplines, List<Specialty> specialtyList) {
		super();
		this.count = count;
		this.specialtyDisciplines = specialtyDisciplines;
		this.specialtyList = specialtyList;
	}
	
	public SpecialtyOut(Integer count, String specialtyMajorName, String specialtyDisciplines,
			List<Specialty> specialtyList) {
		super();
		this.count = count;
		this.specialtyMajorName = specialtyMajorName;
		this.specialtyDisciplines = specialtyDisciplines;
		this.specialtyList = specialtyList;
	}
	public Integer getCount() {
		return count;
	}
	public SpecialtyOut setCount(Integer count) {
		this.count = count;
		return this;
	}
	
	public String getSpecialtyDisciplines() {
		return specialtyDisciplines;
	}
	public SpecialtyOut setSpecialtyDisciplines(String specialtyDisciplines) {
		this.specialtyDisciplines = specialtyDisciplines;
		return this;
	}
	
	public String getSpecialtyMajorName() {
		return specialtyMajorName;
	}
	public SpecialtyOut setSpecialtyMajorName(String specialtyMajorName) {
		this.specialtyMajorName = specialtyMajorName;
		return this;
	}
	public List<Specialty> getSpecialtyList() {
		return specialtyList;
	}
	public SpecialtyOut setSpecialtyList(List<Specialty> specialtyList) {
		this.specialtyList = specialtyList;
		return this;
	}
	
	@Override
	public String toString() {
		return "SpecialtyOut [count=" + count + ", specialtyList=" + specialtyList + "]";
	}
	
	
}
