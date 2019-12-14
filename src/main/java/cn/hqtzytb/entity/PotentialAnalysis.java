package cn.hqtzytb.entity;

import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @ClassName: PotentialAnalysis
 * @Description: 潜能分析输出实体类
 * @Author: WuPeiLong
 * @Date: 2019年11月22日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Data
@Accessors(chain = true)
public class PotentialAnalysis implements Serializable {

    private static final long serialVersionUID = -7833672165230700567L;
    private Integer id;//主键ID
    private Integer uid;//用户ID
    private String subjectPotential;//学科潜能分析
    private String subjectScore;//学科成绩
}
