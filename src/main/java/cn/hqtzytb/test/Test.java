package cn.hqtzytb.test;


import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
        System.out.println("111111:" + new GetCommonUser().getEncrpytedPassword(Constants.MD5,"111111","E5160889-0ADC-47B7-90F4-EB0080752C73",1024));
    }


}
