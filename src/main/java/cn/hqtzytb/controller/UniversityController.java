package cn.hqtzytb.controller;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.University;
import cn.hqtzytb.service.ISpecialtyServer;
import cn.hqtzytb.service.IUniversityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: UniversityController
 * @Description: 大学控制器类
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Controller
@RequestMapping("/school")
public class UniversityController {

    @Autowired
    private IUniversityService iUniversityService;
    @Autowired
    private ISpecialtyServer iSpecialtyServer;

    /**
     * 学校上传图片
     * @param universitiesCode
     * @param files
     * @param imageType 1-校园生活 2-学校主图
     * @return
     */
    @PostMapping("/xgk_upload_image.do")
    @ResponseBody
    public ResponseResult<Void> universityUploadImage(@RequestParam(value="universitiesCode") String universitiesCode,
                                                        @RequestParam(value="files") MultipartFile[] files,
                                                        @RequestParam(value="imageType") Integer imageType){
        return  iUniversityService.universityUploadImage(universitiesCode,files,imageType);
    }

    /**
     * 学校删除图片
     * @param url
     * @return
     */
    @RequestMapping("/xgk_delete_image.do")
    @ResponseBody
    public ResponseResult<Object> universityDeleteImage(@RequestParam(value="url") String url){
        return  iUniversityService.universityDeleteImage(url);
    }

    /**
     * 显示院校查询页
     * @param session
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/xgk_school_search.do")
    public String showUniversitySearch(HttpServletRequest request, HttpServletResponse response){
        return iUniversityService.showUniversitySearch(request,response);

    }


    /**
     * 院校查询
     * @param where
     * @return
     */
    @RequestMapping("/xgk_school_query.do")
    @ResponseBody
    public ResponseResult<Map<String, Object>> getUniversityList(String where, Integer offset, Integer countPerPage, HttpServletRequest request){
        return iUniversityService.getUniversityList(where, offset,countPerPage, request);
    }



    /**
     * 获得院校省份信息
     * @return
     */
    @RequestMapping("/xgk_university_province.do")
    @ResponseBody
    public ResponseResult<List<String>> getProvince(){
        return iUniversityService.getProvince();
    }
    
    /**
     * 获得院校信息
     * @return
     */
    @RequestMapping("/xgk_university_info.do")
    public String getUniversityInfo(String universityCode ,ModelMap map,HttpServletRequest request){
    	
        return iUniversityService.getUniversityInfo(universityCode,map,request);
    }
    
    /**
     * 点击游览招生简章/章程
     * @return
     */
    @RequestMapping("/xgk_admission_browse.do")
    @ResponseBody
    public ResponseResult<Void> addAadmissionBrowse(String uaId ,String type,HttpServletRequest request){
    	
        return iUniversityService.addAadmissionBrowse(uaId,type,request);
    }

    
    
    /**
     * 显示专业查询页
     * @param session
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/xgk_specialty_search.do")
    public String showSpecialtySearchIndex(ModelMap map, HttpServletRequest request, HttpServletResponse response){
        return iSpecialtyServer.getSpecialtySearchIndex(map,request);
    }

    /**
     * 专业查询
     * @param where
     * @return
     */
    @RequestMapping("/xgk_specialty_query.do")
    @ResponseBody
    public ResponseResult<Map<String,Object>> getSpecialtyList(String where, HttpServletRequest request){
        return iSpecialtyServer.getSpecialtyList(where, request);
    }
    
    /**
     * 专业详情查询
     * @param where
     * @return
     */
    @RequestMapping("/xgk_specialty_detail.do")
    public String getSpecialtyDetail(String specialtyId, HttpServletRequest request, ModelMap map){
        return iSpecialtyServer.getSpecialtyDetail(specialtyId, request, map);
    }
    
    /**
     * 通过专业查询学校
     * @param where
     * @return
     */
    @RequestMapping("/xgk_specialty_school.do")
    @ResponseBody
    public ResponseResult<List<University>> getSpecialtySchool(String specialtyId, String er_year, String er_province, String sch_province, HttpServletRequest request){
        return iSpecialtyServer.getSpecialtySchool(specialtyId, er_year, er_province, sch_province, request);
    }
}
