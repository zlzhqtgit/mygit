package cn.hqtzytb.entity;


import java.util.Date;
import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


/**
 * @ClassName: Vocation
 * @Description: 大学信息实体类
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
public class University extends UniversityRelation implements Serializable{

    private static final long serialVersionUID = 1L;

    /**
     * 主鍵ID
     */
    private Integer id;

    /**
     * 大学编码
     */
    private String universitiesCode;

    /**
     * 大学名字
     */
    private String universitiesName;

    /**
     * 省份信息
     */
    private String province;

    /**
     * 创建时间: 2019-10-01
     */
    private String establishedTime;

    /**
     * 办学性质
     */
    private String universitiesNature;

    /**
     * 隶属于
     */
    private String belongTo;

    /**
     * 地址
     */
    private String address;

    /**
     * 地图坐标
     */
    private String mapCoordinates;

    /**
     * 武书会排名
     */
    private Integer martialBookAssociationRanking;

    /**
     * 校友会排名
     */
    private Integer alumniAssociationRanking;

    /**
     * 软科中国两岸四地大学百强排名
     */
    private Integer softScienceRanking;

    /**
     * 世界大学排名:QS排名
     */
    private Integer quacquarelliSymondsRanking;

    /**
     * 美国大学排名:USNews
     */
    private Integer usNewsRanking;

    /**
     * 学校介绍
     */
    private String universitiesIntroduction;

    /**
     * 校园生活
     */
    private String universitiesLife;

    /**
     * 食宿条件
     */
    private String roomAndBoard;

    /**
     * 奖助学金
     */
    private String scholarships;

    /**
     * 教研教学
     */
    private String teachingResearch;

    /**
     * 男女比例
     */
    private String maleFemaleRatio;

    /**
     * 师资力量
     */
    private String teachersResources;

    /**
     * 重点专业
     */
    private String coreSpecialty;

    /**
     * 重点学科
     */
    private String coreSubject;

    /**
     * 重点实验室及科研中心
     */
    private String coreLaboratoriesAndResearchCenters;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 创建人
     */
    private String createBy;

    /**
     * 修改时间
     */
    private Date updateTime;

    /**
     * 修改人
     */
    private String updateBy;

}