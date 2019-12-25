package cn.hqtzytb.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName: Demo
 * @Description: 数据库连接Test
 * @Author: WuPeiLong
 * @Date: 2019年12月12日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public class Demo {
	static String sql = null;  
    static DBHelper db1 = null;  
    static ResultSet ret = null;  
    
    public static void main(String[] args) {  
        sql = "SELECT DISTINCT xxdm,xxmn FROM zsjh";//SQL语句  
        db1 = new DBHelper(sql);//创建DBHelper对象
        List<Xx> xxList = new ArrayList<>(); 
        try {  
            ret = db1.pst.executeQuery();//执行语句，得到结果集  
            while (ret.next()) {  
                String xxdm = ret.getString(1);  
                String xxmn = ret.getString(2);  
                System.out.println("学校代码" + xxmn );  
                System.out.println("学校名字" + xxdm ); 
                Xx xx = new Xx();
                xx.setXxdm(xxdm);
                xx.setXxmn(xxmn);
                xxList.add(xx); 
            }//显示数据  
            ret.close();  
           
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
        
        Connection conn = DBHelper.getConn();
//    	private String xxdm;
//    	private String xxmn;
//    	private String nf;
//    	private String lqlx;
//    	private String lqpc;
        // sql前缀
        String prefix = "INSERT INTO xx (xxdm,xxmn,nf,lqlx,lqpc) VALUES ";
        try {
            // 保存sql后缀
            StringBuffer suffix = new StringBuffer();
            // 设置事务为非自动提交
            conn.setAutoCommit(false);
            // 比起st，pst会更好些
            PreparedStatement pst = conn.prepareStatement("");//准备执行语句
            // 外层循环，总提交事务次数
            for(int i=0; i<xxList.size(); i++){
            	suffix = new StringBuffer();
            	// 构建SQL后缀
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2016','文科','本科一批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2016','文科','本科二批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2016','理科','本科一批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2016','理科','本科二批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2017','文科','本科一批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2017','文科','本科二批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2017','理科','本科一批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2017','理科','本科二批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2018','文科','本科一批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2018','文科','本科二批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2018','理科','本科一批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2018','理科','本科二批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2019','文科','本科一批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2019','文科','本科二批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2019','理科','本科一批'),");
            	suffix.append("('" + xxList.get(i).getXxdm() + "','"+  xxList.get(i).getXxmn() + "','2019','理科','本科二批'),");
            	// 构建完整SQL
                String sql = prefix + suffix.substring(0, suffix.length() - 1);
                // 添加执行SQL
                pst.addBatch(sql);
                // 执行操作
                pst.executeBatch();
                // 提交事务
                conn.commit();
                // 清空上一次添加的数据
                suffix = new StringBuffer();
            }
            // 头等连接
            pst.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
