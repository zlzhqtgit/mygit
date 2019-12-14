package cn.hqtzytb.entity;

import java.util.Date;
import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @ClassName: UserResultReport
 * @Description: 用户选科报告信息实体类
 * @author: wuPeiLong
 * @date: 2019年12月14日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@NoArgsConstructor()
@AllArgsConstructor()
public class UserResultReport implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    private Integer id;

    /**
     * 用户ID
     */
    private Integer uid;

    /**
     * 专业
     */
    private String specialtyId;

    /**
     * 省份
     */
    private String province;

    /**
     * 开始测评选科时间
     */
    private Date startTime;

    /**
     * 结束测评选科时间
     */
    private Date endTime;

    /**
     * 测评状态：0-待完成 1-已完成
     */
    private String status;

    /**
     * 测评结果
     */
    private String result;


}
