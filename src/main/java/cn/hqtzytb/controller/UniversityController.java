package cn.hqtzytb.controller;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.University;
import cn.hqtzytb.service.IUniversityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @ClassName: UniversityController
 * @Description: 大学控制器类
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育33
 * @Version V1.0
 */
@Controller
@RequestMapping("/school")
public class UniversityController {

    @Autowired
    private IUniversityService iUniversityService;


    /**
     * 学校上传图片
     * @param universitiesCode
     * @param files
     * @param imageType 1-校园生活 2-学校主图
     * @return
     */
    @PostMapping("/xgk_upload_image.do")
    @ResponseBody
    public ResponseResult<Object> universityUploadImage(@RequestParam(value="universitiesCode") String universitiesCode,
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
    public String showUniversitySearch(HttpSession session, HttpServletRequest request, HttpServletResponse response){
        return "web/xgk/xgk_sch_search";
    }


    /**
     * 院校查询
     * @param where
     * @return
     */
    @RequestMapping("/xgk_school_query.do")
    @ResponseBody
    public ResponseResult<List<University>> getUniversityList(String where){
        return iUniversityService.getUniversityList(where);
    }


    /**
     * 显示专业查询页
     * @param session
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/xgk_specialty_search.do")
    public String showSpecialtySearch(HttpSession session, HttpServletRequest request, HttpServletResponse response){
        return "web/xgk/xgk_sch_major";
    }

    /**
     * 专业查询
     * @param where
     * @return
     */
    @RequestMapping("/xgk_specialty_query.do")
    @ResponseBody
    public ResponseResult<List<Specialty>> getSpecialtyList(String where){
        return iUniversityService.getSpecialtyList(where);
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
}
