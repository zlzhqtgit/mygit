package cn.hqtzytb.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.hqtzytb.entity.Admin;
import cn.hqtzytb.mapper.AdminMapper;


@Service
public class AdminServer implements IAdminServer
{
	@Autowired
	public AdminMapper userMapper;

	public Admin insert(Admin admin)
	{
		userMapper.insert(admin);
		return admin;
	}

	public Integer update(Admin admin)
	{		
		return userMapper.update(admin);
	}

	public Integer delete(Admin admin)
	{		
		return userMapper.delete(admin);
	}

	public List<Admin> getuser(Date date)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sdf.format(date);
		String where="creat_time>='"+format+"'";	
		List<Admin> list=userMapper.select(where, null, null, null);
		return list;
	}
	
	public List<Admin> getuserByusername(String username) {
		String where="username='"+username+"'";
		return userMapper.select(where, null, null, null);
	}
	
	public List<Admin> getuserAll() {
		String orderBy="creat_time";
		return userMapper.select(null, orderBy, null, null);
	}
	
	public Integer updatePwd(Admin admin) {	
		return userMapper.updatePwd(admin);
	}


	public List<Admin> getuserByid(Integer id) {
		String where="id="+id;
		return userMapper.select(where, null, null, null);
	}
	
	public List<Admin> getuserByRiole(Integer userRole) {
		String where="user_role="+userRole;
		return userMapper.select(where, null, null, null);
	}
	
	
}
