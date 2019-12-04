package cn.hqtzytb.service;

import cn.hqtzytb.entity.ResponseResult;
import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName: IUniversityService
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface IUniversityService {
    ResponseResult<Void> universityUploadImage(String universitiesCode, MultipartFile[] files);
}
