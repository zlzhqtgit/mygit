package cn.hqtzytb.service;

import cn.hqtzytb.entity.UserFeature;
import cn.hqtzytb.utils.Combination;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: IConmbinationServer
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月04日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface ICombinationService {
    List<Map.Entry<Combination, Double>> getCombination(UserFeature userFeature);
    List<Map.Entry<Combination, Double>> getCompositeCombination(String uid);
}
