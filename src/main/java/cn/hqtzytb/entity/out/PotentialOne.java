package cn.hqtzytb.entity.out;

import lombok.Data;
import lombok.experimental.Accessors;
import java.io.Serializable;

/**
 * @ClassName: PotentialOne
 * @Description: 潜力分析
 * @Author: WuPeiLong
 * @Date: 2019年11月21日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Data
@Accessors(chain = true)
public class PotentialOne implements Serializable {
    private static final long serialVersionUID = 4672545694807228065L;
    private String subject;//科目 [地、政、历、物、化、生]
    private String analysisType;//分析类型 [自信、兴趣、能力]
    private Integer score;//得分

}
