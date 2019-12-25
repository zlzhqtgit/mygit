package cn.hqtzytb.utils;



/**
 * @ClassName: Combination
 * @Description: 学科组合
 * @Author: WuPeiLong
 * @Date: 2019年12月04日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public enum Combination {

    物化生("物","化","生"),
    物化政("物","化","政"),
    物化历("物","化","历"),
    物化地("物","化","地"),
    物生政("物","生","政"),
    物生历("物","生","历"),
    物生地("物","生","地"),
    物政历("物","政","历"),
    物政地("物","政","地"),
    物历地("物","历","地"),
    化生政("化","生","政"),
    化生历("化","生","历"),
    化生地("化","生","地"),
    化政历("化","政","历"),
    化政地("化","政","地"),
    化历地("化","历","地"),
    生政历("生","政","历"),
    生政地("生","政","地"),
    生历地("生","历","地"),
    政历地("政","历","地");
    public String one;
    public String two;
    public String three;
    Combination(String one, String two, String three){
        this.one = one;
        this.two = two;
        this.three = three;
    } 
}
