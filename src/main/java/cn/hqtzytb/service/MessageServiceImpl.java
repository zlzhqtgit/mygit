
package cn.hqtzytb.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hqtzytb.entity.Message;
import cn.hqtzytb.mapper.MessageMapper;

/** 
  *MessageService 聊天信息的业务层
  * @Author  gz
  * @CreateDate  2018年1月12日 下午4:05:16 
  * @Description  
  */
@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageMapper messageMapper;

	//查询所有聊天信息
	@Override
	public List<Message> queryAll() {
		return messageMapper.queryAll();
	}

	//新增聊天信息
	@Override
	public int saveMessage(Message message) {
		return messageMapper.saveMessage(message);
	}

	//按需查询查询聊天信息
	@Override
	public List<Message> queryMessage(String fromUID, String toUID) {
		return messageMapper.queryMessage(fromUID, toUID);
	}

	//删除聊天记录
	@Override
	public int deleteMessage(String fromUID, String toUID) {
		
		return messageMapper.deleteMessage(fromUID, toUID);
	}

	//批量删除聊天信息
	@Override
	public int deleteMoreMessage(List<String> UIDlist,String UID) {
		return messageMapper.deleteMoreMessage(UIDlist,UID);
	}
	
	

}
