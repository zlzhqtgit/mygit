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
        List<String> menulist= new ArrayList<>();
        menulist.add("1");
        menulist.add("1");
        menulist.add("1");
        menulist.add("1");
        menulist.add("1");
        JSONArray json = JSONArray.fromObject(menulist);

        System.out.println(json);
        JSONObject lan1 = new JSONObject();
        JSONArray array = JSONArray.fromObject("['3','4','5','6','7']");
        Object[] array1 = array.toArray();
        System.out.println(array1[0]);
    }



}
