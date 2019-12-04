package cn.hqtzytb.service.impl;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.service.IUniversityService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 * @ClassName: IUniversityServiceImpl
 * @Description: TODO
 * @Author: WuPeiLong
 * @Date: 2019年12月03日
 * @Copyright:好前途教育
 * @Version V1.0
 */
@Service
public class IUniversityServiceImpl implements IUniversityService {

    @Override
    public ResponseResult<Void> universityUploadImage(String universitiesCode, MultipartFile[] files) {
        return null;
    }
}
