package cn.hqtzytb.controller;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IUniversityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName: UniversityController
 * @Description: 大学控制器类
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Controller
@RequestMapping("/dx")
public class UniversityController {

    @Autowired
    private IUniversityService iUniversityService;

    /**
     * 学校上传图片
     * @param universitiesCode
     * @param files
     * @return
     */
    @PostMapping("/uploadImage")
    @ResponseBody
    public ResponseResult<Void> universityUploadImage(@RequestParam(value="universitiesCode") String universitiesCode, @RequestParam(value="files") MultipartFile[] files){
        return  iUniversityService.universityUploadImage(universitiesCode,files);
    }
}
