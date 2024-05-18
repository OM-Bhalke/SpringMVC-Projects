package aepl.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import aepl.dao.AeplDao;
import aepl.dto.AeplDto;

@Controller
public class MyController {

	@Autowired
	AeplDao aeplDao;

	@ResponseBody
	@RequestMapping("/insert")
	public String insert(@ModelAttribute AeplDto aeplDto) {
		aeplDao.insert(aeplDto);
		return "data inserted successfully";

	}
	
	
	
	
	
}
