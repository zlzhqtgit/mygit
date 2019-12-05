package cn.hqtzytb.test;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

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

        for (int i=0;i<18;i++){
            if (i%3==0){
                System.out.println(i);
            }
        }
    }

//院校属性 universities_attributes ["985","211","双一流","行业领军","研究生院"]
//院校类型 universities_type ["综合类","理工类","师范类","政法类"]
//录取批次 admission_lot ["本科一批","本科二批","高职高专"]
//录取概率 admission_probability 15%
//大学图片 universities_image ""
//录取平均分排行  admission_average_ranking 20
//收藏数 collect_count 20
//学校官网 universities_website   www.guizhoudaxue.com total_ranking
//
}
