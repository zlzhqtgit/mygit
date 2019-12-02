package cn.hqtzytb.test;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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
    public static void main(String[] args) {
        List<String> menulist= new ArrayList<>();
        menulist.add("1");
        menulist.add("1");
        menulist.add("1");
        menulist.add("1");
        menulist.add("1");
        JSONArray json = JSONArray.fromObject(menulist);
        JSONObject lan1 = new JSONObject();
        lan1.put("code", 0);
        lan1.put("msg", "31");
        lan1.put("count",menulist.size());
        lan1.put("data", json);
        System.out.println(lan1);

    }
}
