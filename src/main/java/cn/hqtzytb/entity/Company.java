package cn.hqtzytb.entity;


import java.util.Date;
import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @ClassName: Role
 * @Description: 公司信息实体类
 * @author: wuPeiLong
 * @date: 2019年12月11日
 * @Copyright:好前途教育
 * @version V1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@NoArgsConstructor()
@AllArgsConstructor()
public class Company implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 公司ID
     */
    private Integer companyId;

    /**
     * 公司编号
     */
    private String companyNumber;

    /**
     * 公司名字
     */
    private String companyName;

    /**
     * 公司地址
     */
    private String companyAdress;

    /**
     * 创建时间
     */
    private Date creationTime;


}
