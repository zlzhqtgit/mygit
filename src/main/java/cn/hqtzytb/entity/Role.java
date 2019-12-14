package cn.hqtzytb.entity;


import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @ClassName: Role
 * @Description: 角色信息实体类
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
public class Role  extends Company  implements Serializable{

    private static final long serialVersionUID = 1L;

    /**
     * 角色ID
     */
    private Integer roleId;

    /**
     * 公司ID
     */
    private Integer cid;

    /**
     * 角色名称
     */
    private String roleName;

    /**
     * 角色授权
     */
    private String roleAuthority;

    /**
     * 角色描述
     */
    private String roleDescription;

}
