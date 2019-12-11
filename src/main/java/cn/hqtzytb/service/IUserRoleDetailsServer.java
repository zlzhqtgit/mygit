package cn.hqtzytb.service;

import java.util.Date;
import java.util.List;
import cn.hqtzytb.entity.UserRoleDetails;


public interface IUserRoleDetailsServer
{
	UserRoleDetails insert(UserRoleDetails userRoleDetails);
	Integer update(UserRoleDetails userRoleDetails);
	Integer delete(UserRoleDetails userRoleDetails);
	List<UserRoleDetails> getUserRoleDetailsr(Date date);	
	List<UserRoleDetails> getUserRoleDetailsAll();	
	List<UserRoleDetails> getDetailsBynub(String detailsNumber,String detailsName);
	List<UserRoleDetails> getDetailsBynuband(Integer rid,String detailsNumber,String detailsName);
	List<UserRoleDetails> getDetailsBydetailsNumber(String detailsNumber);
	List<UserRoleDetails> getDetailsBydetailsId(Integer detailsId);
	List<UserRoleDetails> getDetailsBydetailsName(String detailsName);
}
