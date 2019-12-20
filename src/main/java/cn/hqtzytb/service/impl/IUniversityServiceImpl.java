package cn.hqtzytb.service.impl;

import cn.hqtzytb.entity.ResponseResult;
import cn.hqtzytb.entity.Specialty;
import cn.hqtzytb.entity.University;
import cn.hqtzytb.mapper.SpecialtyMapper;
import cn.hqtzytb.mapper.UniversityMapper;
import cn.hqtzytb.service.IUniversityService;
import cn.hqtzytb.utils.Constants;
import cn.hqtzytb.utils.GetCommonUser;

import org.apache.commons.lang.StringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.sun.prism.Image;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;

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
    private  static final Logger logger = LogManager.getLogger(IUniversityServiceImpl.class.getName());
    @Autowired
    private UniversityMapper universityMapper;
    @Autowired
    private SpecialtyMapper specialtyMapper;



    @Override
    public ResponseResult<Void> universityUploadImage(String universitiesCode, MultipartFile[] files, Integer imageType) {
        University university = universityMapper.selectUniversityList("u.universities_code ='" + universitiesCode + "'",null,null,null).get(0);
        if (university == null){
            logger.error("学校编码：" + universitiesCode + " 模块名：上传校园生活图片信息  操作：失败  状态：FAIL! 学校信息不存在！");
            return new ResponseResult<Void>().setState(Constants.RESULT_CODE_FAIL).setMessage(Constants.RESULT_MESSAGE_FAIL);
        }
        String classpath = this.getClass().getResource("/").getPath();
        //本地
        String path = classpath.replaceAll("/target/hqtzytb/WEB-INF/classes/","/src/main/webapp/img/photo/school/") + universitiesCode;
        //服务器
//        String path = classpath.replaceAll("/WEB-INF/classes/", "/img/photo/school/") + universitiesCode;
        path = path.substring(1,path.length());
        File uploadFile = null;
        String extName = "";
        String url = "";
        try {
            if (imageType.equals(1)){
                path += "/life";
                uploadFile = new File(path);
                if (!uploadFile.exists()) {
                    uploadFile.mkdirs();
                }
                if (uploadFile.listFiles().length > 6 || uploadFile.listFiles().length + files.length > 6){
                    logger.error("学校：" + university.getUniversitiesName() + " 模块名：上传校园生活图片信息  操作：上传  状态：FAIL! 校园生活图片超过6张!");
                    return new ResponseResult<Void>().setState(Constants.RESULT_CODE_FAIL).setMessage(Constants.RESULT_MESSAGE_FAIL);
                }
                String universitiesLife = university.getUniversitiesLife();
                for (MultipartFile file : files){
                    // 获取图片后缀
                    extName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
                    url = path + "/"+ new SimpleDateFormat("yyyy_MM_dd_").format (new Date()) + UUID.randomUUID() + extName;
                    file.transferTo(new File(url));
                    logger.info("学校：" + university.getUniversitiesName() +" 模块名：上传校园生活图片信息  操作：上传  状态：OK!");
                    if (StringUtils.isNotEmpty(universitiesLife)){
                        universitiesLife.lastIndexOf("}");
                        StringBuilder builder = new StringBuilder(universitiesLife);
                        builder.insert(universitiesLife.lastIndexOf("}") + 1,",{\"school\":\"" + universitiesCode + "\",\"title\":\"校园\",\"url\":\"" + url + "\"}");
                        universitiesLife = new String(builder);
                    } else {
                        universitiesLife ="[{\"school\":\"" + universitiesCode + "\",\"title\":\"校园\",\"url\":\"" + url.substring(url.lastIndexOf("img"),url.length()) + "\"}]";
                    }
                }
                universityMapper.updateUniversity(university.setUniversitiesLife(universitiesLife));
            } else {
                path += "/image";
                uploadFile = new File(path);
                System.err.println(path);
                if (!uploadFile.exists()) {
                    uploadFile.mkdirs();
                }
                if (uploadFile.listFiles().length > 0){
                    logger.error("学校：" + university.getUniversitiesName() + " 模块名：上传校园生活图片信息  操作：失败  状态：FAIL! 校园logo图片已存在，如需更换请先删除原logo!");
                    return new ResponseResult<Void>().setState(Constants.RESULT_CODE_FAIL).setMessage(Constants.RESULT_MESSAGE_FAIL);
                }
                // 获取图片后缀
                extName = files[0].getOriginalFilename().substring(files[0].getOriginalFilename().lastIndexOf("."));
                url = path + "/logo" + extName;
                files[0].transferTo(new File(url));
                logger.info("学校：" + university.getUniversitiesName() +" 模块名：上传校园logo图片信息  操作：上传  状态：OK!");
                universityMapper.updateUniversity(university.setUniversitiesImage( url.substring(url.lastIndexOf("img"),url.length()) ));
            }

        } catch (IOException e) {
            e.printStackTrace();
            logger.error("学校：" + university.getUniversitiesName() +" 模块名：上传校园图片信息异常  操作：上传  状态：FAIL!");
        }
        return new ResponseResult<Void>(ResponseResult.STATE_OK,Constants.RESULT_MESSAGE_SUCCESS);
    }

    @Override
    public ResponseResult<List<University>> getUniversityList(String where) {
        return new ResponseResult<List<University>>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS).setData(universityMapper.selectUniversityList((StringUtils.isEmpty(where) ? null : where ),null,null,null));
    }

    @Override
    public ResponseResult<List<Specialty>> getSpecialtyList(String where) {
        return new ResponseResult<List<Specialty>>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS).setData(specialtyMapper.select(StringUtils.isEmpty(where) ? null : where ,null,null,null));
    }

    @Override
    public ResponseResult<Object> universityDeleteImage(String url) {
        String classpath = this.getClass().getResource("/").getPath();
        //本地
        String path = classpath.replaceAll("/target/hqtzytb/WEB-INF/classes/","/src/main/webapp/");
        //服务器
//        String path = classpath.replaceAll("/WEB-INF/classes/", "/");
        url = url.substring(url.lastIndexOf("img"),url.length());
        File file = new File(path + url);
        if (file.exists() && file.isFile() || file.exists() && file.isDirectory()) {
            if (file.delete()) {
                logger.info("图片路径：" + url + " 模块名：删除校园图片信息  操作：删除   状态：OK!");
                return new ResponseResult<>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS);
            } else {
                logger.error("图片路径：" + url + " 模块名：删除校园图片信息  操作：删除   状态：FAIL!");
            }
        } else {
            logger.error("图片路径：" + url + " 模块名：删除校园图片信息  操作：删除   状态：FAIL! 图片信息不存在");
        }
        return new ResponseResult<>(Constants.RESULT_CODE_FAIL,Constants.RESULT_MESSAGE_FAIL);
    }

    @Override
    public ResponseResult<List<String>> getProvince() {
        return new ResponseResult<List<String>>(Constants.RESULT_CODE_SUCCESS,Constants.RESULT_MESSAGE_SUCCESS).setData(universityMapper.selectUniversityProvince());
    }

	@Override
	public String getUniversityInfo(String universityCode, ModelMap map, HttpServletRequest request) {
		System.err.println(universityCode);
		if (StringUtils.isNotEmpty(universityCode)) {
			List<University> universityList = universityMapper.selectUniversityList(" u.universities_code = '" + universityCode +"' ", null, null, null);
			System.err.println(universityList.get(0));
			if (!universityList.isEmpty()) {
				University university = universityList.get(0);
				map.addAttribute("school", university);
				map.addAttribute("images", university.getUniversitiesLife().split(";"));
				map.addAttribute("teachingResearch", GetCommonUser.getJson(university.getTeachingResearch(), request));
				System.err.println(map.get("images"));
			}
		}
		return "web/xgk/xgk_sch_info";
	}
}
