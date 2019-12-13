package cn.hqtzytb.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.lang.StringUtils;
import java.util.*;

/**
 * @ClassName: JSONUtil
 * @Description: JSON转换工具类
 * @Author: WuPeiLong
 * @Date: 2019年11月21日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public class JSONUtil {
//    JSONArray json = JSONArray.fromObject(queryrights);

//    Map依据value的值倒序排序
//    public static <K, V extends Comparable<? super V>> Map<K, V> sortByValueDescending(Map<K, V> map)
//    {
//        List<Map.Entry<K, V>> list = new LinkedList<Map.Entry<K, V>>(map.entrySet());
//        Collections.sort(list, new Comparator<Map.Entry<K, V>>()
//        {
//            @Override
//            public int compare(Map.Entry<K, V> o1, Map.Entry<K, V> o2)
//            {
//                int compare = (o1.getValue()).compareTo(o2.getValue());
//                return -compare;
//            }
//        });
//        //另外一种写法：Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));
//        Map<K, V> result = new LinkedHashMap<K, V>();
//        for (Map.Entry<K, V> entry : list) {
//            result.put(entry.getKey(), entry.getValue());
//        }
//        return result;
//    }

    /**
     * json字符串转数组
     * @param strArray
     * @param clazz
     * @param <T>
     * @return
     */
    public static <T> List<T> jsonStrArray2List(String strArray, Class<T> clazz) {
        JSONArray jsonArray = JSON.parseArray(strArray);
        List<T> list = new ArrayList<>();
        for (int i = 0; i < jsonArray.size(); i++) {
            list.add(JSON.toJavaObject(JSONObject.parseObject(jsonArray.get(i).toString()), clazz));
        }
        return list;
    }




    /**
     * bean对象转json字符串
     * @param obj
     * @param dataFormatString
     * @return
     */
    public static String beanToJson(Object obj, String dataFormatString){
        if(obj != null){
            if(StringUtils.isEmpty(dataFormatString)){
                return JSONObject.toJSONString(obj);
            }
            return JSONObject.toJSONStringWithDateFormat(obj,dataFormatString);
        }
        return null;
    }



    /**
     * bean对象转json字符串
     * @param obj
     * @return
     */
    public static String beanToJson(Object obj){
        if(obj != null){
            return JSONObject.toJSONString(obj);
        }
        return null;
    }



    /**
     * string字符串转成json字符串
     * @param key
     * @param value
     * @return
     */
    public static String stringToJonByFastjson(String key, String value){
        if(StringUtils.isEmpty(key) || StringUtils.isEmpty(value)){
            return null;
        }
        Map<String,String> map = new HashMap<>();
        map.put(key,value);
        return beanToJson(map);
    }



    /**
     * json字符串转bean对象
     * @param json
     * @param clazz
     * @return
     */
    public static Object jsonToBean(String json, Class clazz){
        if(StringUtils.isEmpty(json) || clazz == null){
            return null;
        }
        return JSONObject.parseObject(json, clazz);
    }



    /**
     * json字符串转换成map对象
     * @param json
     * @return
     */
    public static  Map<String, Object> jsonToMap(String json){
        if(StringUtils.isEmpty(json)){
            return null;
        }
        return JSONObject.parseObject(json,Map.class);
    }



    /**
     * 判断字符串是否可以转化为JSON数组
     * @param content
     * @return
     */
    public static boolean isJsonArray(String content) {
        if(StringUtils.isEmpty(content))
            return false;
        StringUtils.isEmpty(content);
        try {
            JSONArray jsonStr = JSONArray.parseArray(content);
            return true;
        } catch (Exception e) {
            return false;
        }
    }



    /**
     * 判断字符串是否可以转化为json对象
     * @param content
     * @return
     */
    public static boolean isJsonObject(String content) {
        if(StringUtils.isEmpty(content))
            return false;
        try {
            JSONObject jsonStr = JSONObject.parseObject(content);
            return true;
        } catch (Exception e) {
            return false;
        }
    }



    /**
     * 获取json字符串中所有的key值
     * @param jsonString
     * @return
     */
    public static Set<String> getAllKeys(String jsonString) {
        Set<String> set = new HashSet<>();
        //按照","将json字符串分割成String数组
        String[] keyValue = jsonString.split(",");
        for (int i = 0; i < keyValue.length; i++) {
            String s = keyValue[i];
            //找到":"所在的位置，然后截取
            int index = s.indexOf(":");
            if(index == -1){
                return set;
            }
            //第一个字符串因带有json的"{"，需要特殊处理
            if (i == 0) {
                set.add(s.substring(2, index - 1));
            } else {
                set.add(s.substring(1, index - 1));
            }
        }
        return set;
    }

}
