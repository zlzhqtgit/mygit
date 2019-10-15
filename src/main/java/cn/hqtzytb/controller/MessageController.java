
package cn.hqtzytb.controller;

import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.hqtzytb.entity.Message;
import cn.hqtzytb.service.MessageService;


/**
 *
 * @Author gz
 * @CreateDate 2018年1月12日 下午4:11:19
 * @Description
 */
@Controller
@RequestMapping(value = "/Message")
public class MessageController {	

	@Autowired
	private MessageService messageService;

	@RequestMapping(value = "/queryAll.do")
	public String queryAll(HttpServletRequest request) {		
		List<Message> mList = messageService.queryAll();
		request.setAttribute("messages", mList);
		return "NotFound";
	}

	@ResponseBody
	@RequestMapping(value = "/queryChatMessage.do", method = RequestMethod.GET)
	public List<Message> queryChatMessage(String fromUID, String toUID) {		
		List<Message> mList = messageService.queryMessage(fromUID, toUID);		
		return mList;
	}

	@RequestMapping("/save")
	public String saveMessage() {
		Message message = new Message(null, "测试controller", new Date(), "4", "1");
		 messageService.saveMessage(message);		
		return null;
	}

}
