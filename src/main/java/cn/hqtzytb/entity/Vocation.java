package cn.hqtzytb.entity;


import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @ClassName: Vocation
 * @Description: 职业数据信息实体类
 * @author: wuPeiLong
 * @date: 2019年11月26日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@NoArgsConstructor()
@AllArgsConstructor()
public class Vocation implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    private Integer vId;

    /**
     * 职业ID
     */
    private String vocationId;

    /**
     * 名称
     */
    private String vocationName;

    /**
     * 行业名称
     */
    private String industryName;

    /**
     * 行业大类
     */
    private String industryMajorName;

    /**
     * 职业介绍
     */
    private String vocationBrief;

    /**
     * 职业前景
     */
    private String prospect;

    /**
     * 工作经验
     */
    private String workExperience;

    /**
     * 工作内容
     */
    private String workContent;

    /**
     * 教育要求
     */
    private String educationCredential;

    /**
     * 关联专业
     */
    private String relationSpecialty;

    /**
     * 薪资趋势
     */
    private String salaryTrend;

    /**
     * 薪资分布
     */
    private String salaryDistribution;

    /**
     * 就业趋势(按学历)
     */
    private String employmentSituationEducation;

    /**
     * 就业趋势(按经验)
     */
    private String employmentSituationExperience;

    /**
     * 从业资格要求
     */
    private String requirementQualification;

    /**
     * 学历要求
     */
    private Integer educationQualification;

    /**
     * 专业知识
     */
    private Integer specialtyKnow;

    /**
     * 专业技能
     */
    private Integer specialtySkill;

    /**
     * 工作年限
     */
    private Integer workYear;

    /**
     * 工作成果
     */
    private Integer workAchieved;

    /**
     * 组织能力
     */
    private Integer organizationAbility;

    /**
     * 统筹能力
     */
    private Integer planAbility;



}
