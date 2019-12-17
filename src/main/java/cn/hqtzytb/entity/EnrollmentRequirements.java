package cn.hqtzytb.entity;


import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

 
/**
 * @ClassName: EnrollmentRequirements
 * @Description: 当地招生政策要求信息表
 * @author: wuPeiLong
 * @date: 2019年12月16日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@NoArgsConstructor()
@AllArgsConstructor()
public class EnrollmentRequirements implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    private Integer eId;

    /**
     * 年份
     */
    private String eYear;

    /**
     * 省份
     */
    private String eProvince;

    /**
     * 教育
     */
    private String eEducation;

    /**
     * 大学代码
     */
    private String universitiesCode;

    /**
     * 大学名字
     */
    private String universitiesName;

    /**
     * 招生专业
     */
    private String enrollmentMajor;

    /**
     * 包括专业
     */
    private String includeMajor;

    /**
     * 首选科目
     */
    private String preferredSubject;

    /**
     * 再选科目
     */
    private String reelectionSubjects;

    /**
     * 选科组合【招生提供的学科组合】
     */
    private String subjectCombination;


}
