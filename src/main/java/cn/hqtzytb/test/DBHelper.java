package cn.hqtzytb.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * @ClassName: DBHelper
 * @Description: 数据库连接Test
 * @Author: WuPeiLong
 * @Date: 2019年12月12日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public class DBHelper {
	 public static final String url = "jdbc:mysql://127.0.0.1/process?useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT&nullCatalogMeansCurrent=true&useSSL=false";  
	    public static final String name = "com.mysql.cj.jdbc.Driver";  
	    public static final String user = "root";  
	    public static final String password = "1qaz!QAZ";  
	 
	    public static Connection conn = null;  
	    public static PreparedStatement pst = null;  
	 
	    public DBHelper(String sql) {  
	        try {  
	            Class.forName(name);//指定连接类型  
	            conn = DriverManager.getConnection(url,user,password);//获取连接  
	            pst = conn.prepareStatement(sql);//准备执行语句  
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
	    }  
	    
	    public static Connection getConn() {
	    	if (conn == null) {
	    		try {
					conn = DriverManager.getConnection(url,user,password);
				} catch (SQLException e) {
					System.err.println("获取mysql异常");
					e.printStackTrace();
				}
			}
			return conn;
		}
		
		public void close() {  
	        try {  
	            DBHelper.conn.close();  
	            DBHelper.pst.close();  
	        } catch (SQLException e) {  
	            e.printStackTrace();  
	        }  
	    }
}
