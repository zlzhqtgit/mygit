package cn.hqtzytb.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.hqtzytb.entity.Order;

/**
 * @ClassName: Order
 * @Description: 订单信息Mapper
 * @author: wuPeiLong
 * @date: 2019年12月27日
 * @Copyright:好前途教育
 * @version V1.0
 */
public interface OrderMapper {
	
	List<Order> select(
			@Param("where")String where,
			@Param("orderBy")String orderBy,
			@Param("offset")Integer offset,
			@Param("countPerPage")Integer countPerPage);
    int delete(Order order);
    int insert(Order order);
    int update(Order order);
  
}