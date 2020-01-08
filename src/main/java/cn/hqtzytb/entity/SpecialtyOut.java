package cn.hqtzytb.entity;

import java.io.Serializable;
import java.util.List;

/**
 * @ClassName: SpecialtyOut
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
	private String majorName;//专业大类
	private List<Disciplines> disciplinesList;//专业学科分类信息列表
	public SpecialtyOut() {
		super();
	}
	public SpecialtyOut(String majorName, List<Disciplines> disciplinesList) {
		super();
		this.majorName = majorName;
		this.disciplinesList = disciplinesList;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public List<Disciplines> getDisciplinesList() {
		return disciplinesList;
	}
	public void setDisciplinesList(List<Disciplines> disciplinesList) {
		this.disciplinesList = disciplinesList;
	}
	@Override
	public String toString() {
		return "SpecialtyOut [majorName=" + majorName + ", disciplinesList=" + disciplinesList + "]";
	}
	
}
