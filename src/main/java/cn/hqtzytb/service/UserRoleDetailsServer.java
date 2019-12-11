package cn.hqtzytb.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.UserRoleDetails;
import cn.hqtzytb.mapper.UserRoleDetailsMapper;


@Service
public class UserRoleDetailsServer implements IUserRoleDetailsServer
{
	@Autowired
	public UserRoleDetailsMapper userRoleDetailsMapper;



	public List<UserRoleDetails> getUserRoleDetailsr(Date date)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(date);
		String where="creation_time>='"+format+"'";	
		List<UserRoleDetails> list=userRoleDetailsMapper.select(where, null, null, null);
		return list;
	}	
	public List<UserRoleDetails> getUserRoleDetailsAll() {
		String orderBy="creation_time";
		return userRoleDetailsMapper.select(null, orderBy, null, null);
	}
	
	@Override
	public UserRoleDetails insert(UserRoleDetails userRoleDetails) {
		userRoleDetailsMapper.insert(userRoleDetails);
		return userRoleDetails;
	}
	
	@Override
	public Integer update(UserRoleDetails userRoleDetails) {	
		return userRoleDetailsMapper.update(userRoleDetails);
	}
	
	@Override
	public Integer delete(UserRoleDetails userRoleDetails) {		
		return userRoleDetailsMapper.delete(userRoleDetails);
	}
	
	@Override
	public List<UserRoleDetails> getDetailsBynub(String detailsNumber, String detailsName) {
		String where="details_number>='"+detailsNumber+"' or details_name='"+detailsName+"'";	
		return userRoleDetailsMapper.select(where, null, null, null);
	}		
	@Override
	public List<UserRoleDetails> getDetailsBydetailsId(Integer detailsId) {
		String where="details_id ="+detailsId;	
		return userRoleDetailsMapper.select(where, null, null, null);
	}
	
	@Override
	public List<UserRoleDetails> getDetailsBynuband(Integer rid,String detailsNumber, String detailsName) {
		String where="details_number>='"+detailsNumber+"' and details_name='"+detailsName+"' and rid="+rid;	
		return userRoleDetailsMapper.select(where, null, null, null);
	}
	
	@Override
	public List<UserRoleDetails> getDetailsBydetailsNumber(String detailsNumber) {
		String where="details_number ='"+detailsNumber+"'";	
		return userRoleDetailsMapper.select(where, null, null, null);
	}
	
	@Override
	public List<UserRoleDetails> getDetailsBydetailsName(String detailsName) {
		String where="details_name ='"+detailsName+"'";	
		return userRoleDetailsMapper.select(where, null, null, null);
	}
	
	
	
}
