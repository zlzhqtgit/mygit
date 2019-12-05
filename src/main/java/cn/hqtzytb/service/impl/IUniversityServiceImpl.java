package cn.hqtzytb.service.impl;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.University;
import cn.hqtzytb.mapper.SpecialtyMapper;
import cn.hqtzytb.mapper.UniversityMapper;
import cn.hqtzytb.service.IUniversityService;
import cn.hqtzytb.utils.Constants;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

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
    @Autowired
    private UniversityMapper universityMapper;
    @Autowired
    private SpecialtyMapper specialtyMapper;



    @Override
    public ResponseResult<Void> universityUploadImage(String universitiesCode, MultipartFile[] files) {
        return null;
    }

    @Override
    public ResponseResult<List<University>> getUniversityList(String where) {
        return new ResponseResult<List<University>>().setState(Constants.RESULT_CODE_SUCCESS).setMessage(Constants.RESULT_MESSAGE_SUCCESS).setData(universityMapper.selectUniversityList(StringUtils.isEmpty(where) ? null : where ,null,null,null));
    }

    @Override
    public ResponseResult<List<Specialty>> getSpecialtyList(String where) {
        return new ResponseResult<List<Specialty>>().setState(Constants.RESULT_CODE_SUCCESS).setMessage(Constants.RESULT_MESSAGE_SUCCESS).setData(specialtyMapper.select(StringUtils.isEmpty(where) ? null : where ,null,null,null));
    }
}
