package cn.hqtzytb.service;

import java.util.Date;
import java.util.List;
import cn.hqtzytb.entity.Admin;


public interface IAdminServer
{
	Admin insert(Admin admin);
	Integer update(Admin admin);
	Integer updatePwd(Admin admin);
	Integer delete(Admin admin);
	List<Admin> getuser(Date date);
	List<Admin> getuserByusername(String username);
	List<Admin> getuserByid(Integer id);
	List<Admin> getuserByRiole(Integer userRole);
	List<Admin> getuserAll();
	Admin queryAdmin(String username);
}
