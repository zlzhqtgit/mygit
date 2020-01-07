package cn.hqtzytb.entity;

import java.util.List;

/**
 * @ClassName: Education
 * @Description: 学历层次专业数据信息实体类
 * @author: wuPeiLong
 * @date: 2020年01月07日
 * @Copyright:好前途教育
 * @version V1.0
 */
public class Education {
	private String education;//学历层次
	private List<SpecialtyOut> specialtyOutList;
	public Education() {
		super();
	}
	public Education(String education, List<SpecialtyOut> specialtyOutList) {
		super();
		this.education = education;
		this.specialtyOutList = specialtyOutList;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public List<SpecialtyOut> getSpecialtyOutList() {
		return specialtyOutList;
	}
	public void setSpecialtyOutList(List<SpecialtyOut> specialtyOutList) {
		this.specialtyOutList = specialtyOutList;
	}
	@Override
	public String toString() {
		return "Education [education=" + education + ", specialtyOutList=" + specialtyOutList + "]";
	}
	
	
}
