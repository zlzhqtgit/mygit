package cn.hqtzytb.service;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.University;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;

/**
 * @ClassName: IUniversityService
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育
 * @Version V1.0
 */
public interface IUniversityService {
    ResponseResult<Void> universityUploadImage(String universitiesCode, MultipartFile[] files, Integer imageType);

    ResponseResult<List<University>> getUniversityList(String where);

    ResponseResult<List<Specialty>> getSpecialtyList(String where);

    ResponseResult<Object> universityDeleteImage(String url);

    ResponseResult<List<String>> getProvince();
}
