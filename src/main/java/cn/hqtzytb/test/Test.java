package cn.hqtzytb.test;


import cn.hqtzytb.utils.Combination;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;


/**
 * @ClassName: Test
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年11月30日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public class Test {
    public static void main(String[] args) throws IOException {
//        JSON 新增 JSON数组字符串
//        List<String> menulist= new ArrayList<>();
////        menulist.add("1");
////        menulist.add("1");
////        menulist.add("1");
////        menulist.add("1");
////        menulist.add("1");
////        JSONArray json = JSONArray.fromObject(menulist);
////
////        System.out.println(json);
////        JSONObject lan1 = new JSONObject();
////        JSONArray array = JSONArray.fromObject("['3','4','5','6','7']");
////        Object[] array1 = array.toArray();
////        System.out.println(array1[0]);
        for (int i=0;i<10;i++){
            System.out.println(new SimpleDateFormat("yyyy_MM_dd_").format (new Date()) + UUID.randomUUID());
        }

        String image = "asdasda/img/photo/school/10001/2.png";

        System.out.println( image.substring(image.lastIndexOf("img"),image.length())) ;
        System.out.println();
        System.out.println(new Test().getClass().getResource("/").getPath());
//        432393A3840199E0957E15C9942769B6
     
        
        Pattern pattern = Pattern.compile("\\d{6}");
        Matcher matcher = pattern.matcher("奥斯卡汇顶科技按时还款的骄傲和授课计划123045哈萨克电话卡精神可嘉023568");
        while(matcher.find()){
        	System.err.println(matcher.group());
        }
        
        String year = new SimpleDateFormat("yyyy").format(new Date());
    }


}
