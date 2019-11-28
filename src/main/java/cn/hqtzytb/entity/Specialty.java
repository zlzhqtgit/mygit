package cn.hqtzytb.entity;


import java.io.Serializable;
import lombok.*;
import lombok.experimental.Accessors;



/**
 * @ClassName: Specialty
 * @Description: 专业数据信息实体类
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
public class Specialty implements Serializable{


    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 专业ID
     */
    private String specialtyId;

    /**
     * 专业名称
     */
    private String specialtyName;

    /**
     * 专业介绍
     */
    private String specialtyIntro;

    /**
     * 专业大类名字
     */
    private String specialtyMajorName;

    /**
     * 专业分类类名
     */
    private String specialtyClassName;

    /**
     * 专业门类
     */
    private String specialtyDivided;

    /**
     * 专业学科分类
     */
    private String specialtyDisciplines;

    /**
     * 学历层次
     */
    private String specialtyEducation;

    /**
     * 修业年限
     */
    private String studyDuration;

    /**
     * 授予学位
     */
    private String bachelorDegree;

    /**
     * 男女比例
     */
    private String maleFemaleRatio;

    /**
     * 专业简介
     */
    private String specialtySummary;

    /**
     * 培养要求
     */
    private String trainRequirement;

    /**
     * 学科要求
     */
    private String subjectRequirement;

    /**
     * 知识能力
     */
    private String knowledgeAbility;

    /**
     * 考研方向
     */
    private String postgraduateDirection;

    /**
     * 就业职业方向
     */
    private String employmentCareerDirection;

    /**
     * 就业行业分布
     */
    private String employmentIndustryDistribution;

    /**
     * 就业地区分布
     */
    private String employmentAreaDistribution;

    /**
     * 主要课程
     */
    private String majorCourses;

    /**
     * 培养目标
     */
    private String specialtyObjective;

    /**
     * 就业前景
     */
    private String specialtyEmployment;

    /**
     * 报考要求
     */
    private String specialtyRequirement;

    /**
     * 物理要求
     */
    private Integer physicsPerformance;

    /**
     * 化学要求
     */
    private Integer chemistryPerformance;

    /**
     * 生物要求
     */
    private Integer biologyPerformance;

    /**
     * 政治要求
     */
    private Integer politicPerformance;

    /**
     * 历史要求
     */
    private Integer historyPerformance;

    /**
     * 地理要求
     */
    private Integer geographyPerformance;

    /**
     * 语文要求
     */
    private Integer chinesePerformance;

    /**
     * 数学要求
     */
    private Integer mathPerformance;

    /**
     * 外语要求
     */
    private Integer foreignPerformance;

    /**
     * 第四轮学科评估A+高校
     */
    private String aboveA;

    /**
     * 第四轮学科评估A高校
     */
    private String equalA;

    /**
     * 第四轮学科评估A-高校
     */
    private String belowA;

    /**
     * 第四轮学科评估B+高校
     */
    private String aboveB;

    /**
     * 开设院校
     */
    private String openCollege;


}
