package cn.hqtzytb.entity.out;

import lombok.Data;
import lombok.experimental.Accessors;
import java.io.Serializable;
import java.util.List;

/**
 * @ClassName: PotentialAnalysisOut
 * @Description: 潜能分析信息输出实体类
 * @Author: WuPeiLong
 * @Date: 2019年11月20日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Data
@Accessors(chain = true)
public class PotentialAnalysisOut implements Serializable {
    private static final long serialVersionUID = -93380894179979391L;
    private String sortOne;//排上第一
    private Integer sortOneScore;//排行第一分数
    private String sortTwo;//排上第二
    private Integer sortTwoScore;//排行第二分数
    private String sortThree;//排上第三
    private Integer sortThreeScore;//排行第三分数
    private String evaluationFraction;//潜能分析JSON字符串
//    private List<PotentialOne> potentialOneList;//潜能分析列表

}
