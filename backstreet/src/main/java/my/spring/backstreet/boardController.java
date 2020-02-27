package my.spring.backstreet;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class boardController {


@RequestMapping(value = "/testLogin")
	/*   jung/0224/ 웹페이지를 보여주기위해 테스트로그인 컨트롤러 생성 */
public String isComplete(HttpSession session) {
	return "naver/naverlogin";
	
}


	
	}

