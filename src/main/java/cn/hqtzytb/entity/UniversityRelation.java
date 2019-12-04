package cn.hqtzytb.entity;


import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @ClassName: Vocation
 * @Description: 大学招生信息实体类
 * @author: wuPeiLong
 * @date: 2019年12月03日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@NoArgsConstructor()
@AllArgsConstructor()
public class UniversityRelation implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 大学编码
     */
    private String universitiesCode;

    /**
     * 院校分数线
     */
    private String collegeScoreLine;

    /**
     * 招生计划
     */
    private String enrollmentPlan;

    /**
     * 专业录取分数线
     */
    private String professionalAdmissionScore;

    /**
     * 招生简章
     */
    private String admissionsBrochure;

    /**
     * 招生章程
     */
    private String admissionsRegulations;


}
